class ShirtsController < ApplicationController
  # GET /shirts
  # GET /shirts.xml
  def index
    @shirts = Shirt.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shirts }
    end
  end

  # GET /shirts/1
  # GET /shirts/1.xml
  def show
    @shirt = Shirt.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shirt }
    end
  end

  # GET /shirts/new
  # GET /shirts/new.xml
  def new
    @shirt = Shirt.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shirt }
    end
  end

  # GET /shirts/1/edit
  def edit
    @shirt = Shirt.find(params[:id])
  end
  
  def make_shirt
#	put some stuff here to incorporate edits  
  end

  # POST /shirts
  # POST /shirts.xml
  def create
    @shirt = Shirt.new(params[:shirt])
	
    respond_to do |format|
      if @shirt.save
        format.html { redirect_to(@shirt, :notice => 'Shirt was successfully created.') }
        format.xml  { render :xml => @shirt, :status => :created, :location => @shirt }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shirt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shirts/1
  # PUT /shirts/1.xml
  def update
    @shirt = Shirt.find(params[:id])

    respond_to do |format|
      if @shirt.update_attributes(params[:shirt])
        format.html { redirect_to(@shirt, :notice => 'Shirt was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shirt.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shirts/1
  # DELETE /shirts/1.xml
  def destroy
    @shirt = Shirt.find(params[:id])
    @shirt.destroy

    respond_to do |format|
      format.html { redirect_to(shirts_url) }
      format.xml  { head :ok }
    end
  end
end

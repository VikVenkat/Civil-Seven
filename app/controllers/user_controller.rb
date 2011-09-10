class UserController < Devise::SessionsController
  def index
    @users = User.all
  end
  
  def show
  end
    # GET /orders/1/edit
  def edit
    @user = current_user
  end
  
  def fill_user_info 
    @user = current_user
	# some stuff here to update the users info with form inputs
  end
  
  def fill_user_info_form
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(make_shirt_path, :notice => 'Shirt was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def create
    super
  end

end

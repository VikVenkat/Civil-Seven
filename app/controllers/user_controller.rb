class UserController < Devise::SessionsController
  def index
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

  def create
    super
  end

end

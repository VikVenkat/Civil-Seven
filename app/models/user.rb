class User < ActiveRecord::Base

  has_many :orders, :dependent => :destroy

  def self.is_admin?
    if self.is_admin == true
		return true
	else
		return false
	end	
  end

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :remember_me
  #, :password_confirmation
end

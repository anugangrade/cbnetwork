class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, uniqueness: true , presence: true       
  
  has_many :stores
  
  def self.is_approve?(params)
	user=User.find_by_email(params[:email])
  	if user.nil? || (user.approve if !user.nil?) 
  		return true
 	else
  	 	return false
  	end
  end 
end

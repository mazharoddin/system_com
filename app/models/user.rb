class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:username]

# Setup accessible (or protected) attributes for your model
  attr_accessor :username, :password, :password_confirmation, :remember_me

 # validates :email, :uniqueness => {:allow_blank => true}
  def email_required?
  	false
  end

  def email_changed?
    false
  end

  has_many :complaints
end

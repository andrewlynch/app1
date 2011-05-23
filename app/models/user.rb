class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable #:validatable
 validates :mobile, :uniqueness => true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :mobile, :email, :password, :password_confirmation, :remember_me 

attr_accessor :login
protected

def self.find_for_database_authentication(warden_conditions)
  conditions = warden_conditions.dup
  login = conditions.delete(:login)
  where(conditions).where(["lower(mobile) = :value OR lower(email) = :value", { :value => login.downcase }]).first
end

end

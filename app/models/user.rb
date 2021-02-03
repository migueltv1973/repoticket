class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #config wiki
  has_many :tags

  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
end

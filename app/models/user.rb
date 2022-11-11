class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #belongs_to:reservation
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,  :validatable
end

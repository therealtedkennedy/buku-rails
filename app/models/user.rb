class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :userartpromos
  has_many :artpromos, through: :userartpromos

  has_many :userevents
  has_many :events, through: :userevents

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end

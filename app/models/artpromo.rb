class Artpromo < ApplicationRecord

  has_many :userartpromos
  has_many :users, through: :userartpromos


end

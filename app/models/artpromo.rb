class Artpromo < ApplicationRecord

  has_many :userjoins
  has_many :users, through: :userjoins


end

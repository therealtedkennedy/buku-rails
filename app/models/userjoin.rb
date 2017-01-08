class Userjoin < ApplicationRecord
  belongs_to :user
  belongs_to :artpromo

   #attr_accessible :users, :artpromos
end

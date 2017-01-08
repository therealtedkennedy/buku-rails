class ChangeArtpromoNameAgain < ActiveRecord::Migration[5.0]
   def self.up
    rename_table :artpromo, :artpromos
  end

  def self.down
    rename_table :artpromo, :artpromos
  end
end

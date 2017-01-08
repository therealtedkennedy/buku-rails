class RenameArtistPromoter < ActiveRecord::Migration[5.0]
  def change
  	 
    rename_table :artists_promoters, :artpromo

  end
end

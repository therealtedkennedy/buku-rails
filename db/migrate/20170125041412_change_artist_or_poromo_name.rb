class ChangeArtistOrPoromoName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :artpromos, :artist_or_promter, :artist_or_promoter

  end
end

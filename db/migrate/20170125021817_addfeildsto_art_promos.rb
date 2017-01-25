class AddfeildstoArtPromos < ActiveRecord::Migration[5.0]
  def change
  	add_column :artpromos, :artist_or_promter, :string
  	add_column :artpromos, :artist_name, :string
    add_column :artpromos, :company_name, :string
    add_column :artpromos, :country, :string
    add_column :artpromos, :city, :string
    add_column :artpromos, :soundcloud, :string
    add_column :artpromos, :facebook, :string
    add_column :artpromos, :genre, :string
    add_column :artpromos, :website, :string
  end
end

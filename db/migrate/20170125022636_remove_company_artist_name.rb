class RemoveCompanyArtistName < ActiveRecord::Migration[5.0]
  def change
  	remove_column :artpromos, :company_name
  	remove_column :artpromos, :artist_name


  end
end

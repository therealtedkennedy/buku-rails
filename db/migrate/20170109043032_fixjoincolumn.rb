class Fixjoincolumn < ActiveRecord::Migration[5.0]
  def change

    rename_column :userjoins, :artistspromoter_id, :artpromo_id


  end
end

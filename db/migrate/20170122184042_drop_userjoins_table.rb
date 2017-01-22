class DropUserjoinsTable < ActiveRecord::Migration[5.0]
    def up
    drop_table :userjoins
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

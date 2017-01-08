class CreateUserjoins < ActiveRecord::Migration[5.0]
  def change
    create_table :userjoins do |t|
      t.references :user, foreign_key: true
      t.references :artistspromoter, foreign_key: true

      t.timestamps
    end
  end
end

class CreateUserartpromos < ActiveRecord::Migration[5.0]
  def change
    create_table :userartpromos do |t|
      t.references :artpromo, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

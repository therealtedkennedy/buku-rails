class CreateUserevents < ActiveRecord::Migration[5.0]
  def change
    create_table :userevents do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end

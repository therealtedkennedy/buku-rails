class CreateArtpromoevents < ActiveRecord::Migration[5.0]
  def change
    create_table :artpromoevents do |t|
      t.references :artpromo, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAnimalTerrains < ActiveRecord::Migration[7.1]
  def change
    create_table :animal_terrains do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :terrain, null: false, foreign_key: true
      t.integer :percentage

      t.timestamps
    end
  end
end

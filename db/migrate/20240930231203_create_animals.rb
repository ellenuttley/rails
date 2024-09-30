class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name, null: false
      t.boolean :dinosaur, default: false
      t.boolean :marine, default: false
      t.boolean :researched, default: false

      t.timestamps
    end
  end
end

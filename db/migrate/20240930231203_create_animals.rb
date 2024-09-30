class CreateAnimals < ActiveRecord::Migration[7.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :dinosaur
      t.boolean :marine
      t.boolean :researched

      t.timestamps
    end
  end
end

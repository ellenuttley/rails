class CreateExhibitSizes < ActiveRecord::Migration[7.1]
  def change
    create_table :exhibit_sizes do |t|
      t.integer :size1, null: false
      t.integer :size2, null: false
      t.integer :capacity, null: false
      t.references :animal, foreign_key: true, null: false

      t.timestamps
    end
  end
end
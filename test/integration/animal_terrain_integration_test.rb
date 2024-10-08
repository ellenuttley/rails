require 'test_helper'

class AnimalTerrainIntegrationTest < ActionDispatch::IntegrationTest
    setup do
        @animal = create(:animal, name: 'Okapi')
        @terrain1 = create(:terrain, name: 'Savannah Grass', price: 70)
        @terrain2 = create(:terrain, name: 'Dirt', price: 20)
        @animal.add_terrain(@terrain1, 60)
        @animal.add_terrain(@terrain2, 40)
        assert_equal 2, @animal.animal_terrains.count, "Animal terrains were not created properly in setup"
      end

    test "terrain and animal associations work correctly" do
        assert @terrain1.valid?
        assert_equal 1, @terrain1.animals.count
    end

    test "adding terrains to an animal" do
        assert_difference 'AnimalTerrain.count', 0 do
          @animal.add_terrain(@terrain1, 60)
          @animal.add_terrain(@terrain2, 40)
        end
    
        assert_equal 2, @animal.terrains.count
        assert_includes @animal.terrains, @terrain1
        assert_includes @animal.terrains, @terrain2
      end
    
      test "deleting an animal removes its animal terrain associations" do
        assert_difference 'AnimalTerrain.count', -2 do
          @animal.destroy
        end
        assert_empty AnimalTerrain.where(animal_id: @animal.id)
      end
  
end
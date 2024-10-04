require 'test_helper'

class AnimalTerrainIntegrationTest < ActionDispatch::IntegrationTest
    setup do
        @animal = create(:animal, name: 'Okapi')
        @terrain1 = create(:terrain, name: 'Savannah Grass', price: 70)
        @terrain2 = create(:terrain, name: 'Dirt', price: 20)
      end
    test "terrain and animal associations work correctly" do
        assert @terrain1.valid?
        assert_equal 0, @terrain1.animals.count
    end


    
    
  
end
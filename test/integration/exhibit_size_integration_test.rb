require 'test_helper'

class AnimalTerrainIntegrationTest < ActionDispatch::IntegrationTest
    setup do
      @animal = create(:animal, name: 'Giraffe')
      @exhibit_size = create(:exhibit_size, animal: @animal, size1: 20, size2: 15, capacity: 5)
    end

    test "exhibit size and animal associations work correctly" do
      assert @exhibit_size.valid?
      assert_equal @animal, @exhibit_size.animal
    end
end
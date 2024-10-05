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

    test "updating exhibit size of an animal" do
      @animal.exhibit_size.update(size1: 25, size2: 20, capacity: 6)
  
      @animal.reload
      assert_equal 25, @animal.exhibit_size.size1
      assert_equal 20, @animal.exhibit_size.size2
      assert_equal 6, @animal.exhibit_size.capacity
    end
end
require 'test_helper'

class ExhibitSizeIntegrationTest < ActionDispatch::IntegrationTest
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
    
    test "exhibit size validations" do
      invalid_exhibit_size = ExhibitSize.new(size1: -5, size2: 0, capacity: -1)
      assert_not invalid_exhibit_size.valid?
      assert_equal 4, invalid_exhibit_size.errors.count
      assert_includes invalid_exhibit_size.errors.full_messages, "Animal must exist"
      assert_includes invalid_exhibit_size.errors.full_messages, "Size1 must be greater than 0"
      assert_includes invalid_exhibit_size.errors.full_messages, "Size2 must be greater than 0"
      assert_includes invalid_exhibit_size.errors.full_messages, "Capacity must be greater than 0"
    end

    test "deleting an animal removes its exhibit size association" do
      assert_difference 'ExhibitSize.count', -1 do
        @animal.destroy
      end
      assert_nil ExhibitSize.find_by(id: @exhibit_size.id)
    end
end
require 'test_helper'

class ExhibitSizeTest < ActiveSupport::TestCase
  setup do
    @animal = create(:animal)
    @exhibit_size = create(:exhibit_size, animal: @animal)
  end

  test "should not save exhibit size without size1" do
    @exhibit_size.size1 = nil
    assert_not @exhibit_size.save, "FAIL : Saved the exhibit size without size1"
  end

  test "should not save exhibit size without size2" do
    @exhibit_size.size2 = nil
    assert_not @exhibit_size.save, "FAIL : Saved the exhibit size without size2"
  end

  test "should not save exhibit size without capacity" do
    @exhibit_size.capacity = nil
    assert_not @exhibit_size.save, "FAIL : Saved the exhibit size without capacity"
  end

  test "should not save exhibit size with negative values" do
    @exhibit_size.size1 = -10
    assert_not @exhibit_size.save, "FAIL : Saved the exhibit size with negative size"
  end

  test "should save valid exhibit size" do
    assert @exhibit_size.save, "FAIL : Could not save a valid exhibit size"
  end


end
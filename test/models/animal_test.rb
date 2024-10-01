require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test "should not save animal without name" do
    animal = Animal.new
    assert_not animal.save, "FAIL : Saved the animal without a name"
  end

  test "should not save animal with duplicate name" do
    Animal.create(name: "Giraffe")
    animal = Animal.new(name: "Giraffe")
    assert_not animal.save, "FAIL : Saved the animal with a duplicate name"
  end
end

require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test "should not save animal without name" do
    animal = Animal.new
    assert_not animal.save, "Saved the animal without a name"
  end
end

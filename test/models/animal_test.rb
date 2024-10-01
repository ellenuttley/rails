require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test "should not save animal without name" do
    animal = Animal.new
    assert_not animal.save, "FAIL : Animal saved without a name"
  end

  test "should not save animal with duplicate name" do
    Animal.create(name: "Giraffe")
    animal = Animal.new(name: "Giraffe")
    assert_not animal.save, "FAIL : Animal saved with duplicate name"
  end

  test "should save valid researched animal" do
    animal = Animal.new(name: "Okapi", dinosaur: false, marine: false, researched: true)
    assert animal.save, "FAIL : Could not save researched animal"
  end

  test "should save valid dinosaur" do
    animal = Animal.new(name: "Camptosaurus", dinosaur: true, marine: false, researched: false)
    assert animal.save, "FAIL : Could not save dinosaur"
  end

  test "should save valid marine animal" do
    animal = Animal.new(name: "Orca", dinosaur: false, marine: true, researched: false)
    assert animal.save, "FAIL : Could not save marine animal"
  end


end

require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  test "factory creates a valid animal" do
    animal = FactoryBot.build(:animal)
    assert animal.valid?
  end

  test "should not save animal without name" do
    animal = Animal.new
    assert_not animal.save, "FAIL : Animal saved without a name"
  end

  test "should not save animal with duplicate name" do
    create(:animal, name: "Giraffe")
    animal = build(:animal, name: "Giraffe")
    assert_not animal.save, "FAIL : Animal saved with duplicate name"
  end

  test "factory creates researched animals" do
    animal = FactoryBot.create(:animal)
    assert_not animal.researched?, "Animal should not be researched by default"
  
    researched_animal = FactoryBot.create(:animal, :researched)
    assert researched_animal.researched?, "Animal should be researched when :researched trait is used"
  end
  
  test "should save valid researched animal" do
    animal = build(:animal, :researched, name:"Okapi")
    assert animal.save, "FAIL : Could not save researched animal"
  end

  test "researched scope returns only researched animals" do
    create(:animal, :researched, name:"Blackbuck")
    create(:animal, name: "Cheetah")
    assert_equal 1, Animal.researched.count
    assert_equal "Blackbuck", Animal.researched.first.name
  end

  test "factory creates dinosaurs" do
    animal = FactoryBot.create(:animal)
    assert_not animal.dinosaur?, "Animal should not be a dinosaur by default"
  
    dinosaur = FactoryBot.create(:animal, :dinosaur)
    assert dinosaur.dinosaur?, "Animal should be a dinosaur when :dinosaur trait is used"
  end

  test "should save valid dinosaur" do
    animal = Animal.new(name: "Camptosaurus", dinosaur: true, marine: false, researched: false)
    assert animal.save, "FAIL : Could not save dinosaur"
  end

  test "dinosaurs scope returns only dinosaurs" do
    create(:animal, :dinosaur, name:"Gallimimus")
    create(:animal, name:"Ostrich")
    assert_equal 1, Animal.dinosaurs.count
    assert_equal "Gallimimus", Animal.dinosaurs.first.name
  end

  test "factory creates marine animals" do
    animal = FactoryBot.create(:animal)
    assert_not animal.marine?, "Animal should not be marine by default"
  
    marine_animal = FactoryBot.create(:animal, :marine)
    assert marine_animal.marine?, "Animal should be marine when :marine trait is used"
  end
  
  test "should save valid marine animal" do
    animal = build(:animal, :marine, name:"Orca")
    assert animal.save, "FAIL : Could not save marine animal"
  end

  test "marine scope returns only marine animals" do
    create(:animal, :marine, name:"Narwhal")
    create(:animal, name:"Reindeer")
    assert_equal 1, Animal.marine.count
    assert_equal "Narwhal", Animal.marine.first.name
  end 

  test "should have default values for boolean fields" do
    animal = create(:animal)
    assert_not animal.dinosaur, "FAIL : Dinosaur should default to false"
    assert_not animal.marine, "FAIL : Marine should default to false"
    assert_not animal.researched, "FAIL : Researched should default to false"
  end

  test "capitalize name before save" do
    animal = create(:animal, name:"giraffe")
    assert_equal "Giraffe", animal.reload.name
  end
end

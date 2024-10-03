require "test_helper"

class AnimalTerrainTest < ActiveSupport::TestCase
  setup do
    @animal = create(:animal)
    @terrain = create(:terrain)
  end

  test "valid animal terrain" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: @terrain, percentage: 50)
    assert animal_terrain.valid?
  end

  test "must have animal" do
    animal_terrain = build(:animal_terrain, animal: nil, terrain: @terrain, percentage: 50)
    assert_not animal_terrain.valid?
    assert_includes animal_terrain.errors[:animal], "must exist"
  end

  test "must have terrain" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: nil, percentage: 50)
    assert_not animal_terrain.valid?
    assert_includes animal_terrain.errors[:terrain], "must exist"
  end
end

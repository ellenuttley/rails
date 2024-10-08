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

  test "must have terrain" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: nil, percentage: 50)
    assert_not animal_terrain.valid?
    assert_includes animal_terrain.errors[:terrain], "must exist"
  end

  test "percentage must be greater than or equal to 0" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: @terrain, percentage: -1)
    assert_not animal_terrain.valid?
    assert_includes animal_terrain.errors[:percentage], "must be greater than or equal to 0"
  end

  test "percentage can be 0" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: @terrain, percentage: 0)
    assert animal_terrain.valid?
  end

  test "percentage must be less than or equal to 100" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: @terrain, percentage: 101)
    assert_not animal_terrain.valid?
    assert_includes animal_terrain.errors[:percentage], "must be less than or equal to 100"
  end

  test "percentage can be 100" do
    animal_terrain = build(:animal_terrain, animal: @animal, terrain: @terrain, percentage: 100)
    assert animal_terrain.valid?
  end
end

require "test_helper"

class TerrainTest < ActiveSupport::TestCase
  test "valid terrain" do
    terrain = build(:terrain)
    assert terrain.valid?
  end

  test "terrain must have name" do
    terrain = build(:terrain, name: nil)
    assert_not terrain.valid?
    assert_includes terrain.errors[:name], "can't be blank"
  end

  test "terrain must have price" do
    terrain = build(:terrain, price: nil)
    assert_not terrain.valid?
    assert_includes terrain.errors[:price], "can't be blank"
  end
end

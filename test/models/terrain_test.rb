require "test_helper"

class TerrainTest < ActiveSupport::TestCase
  test "valid terrain" do
    terrain = Terrain.new(name: "Grass", price: 40)
    assert terrain.valid?
  end

  test "terrain must have name" do
    terrain = Terrain.new(price: 100)
    assert_not terrain.valid?
    assert_includes terrain.errors[:name], "FAIL : Terrain must have a name"
  end
end

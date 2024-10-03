require "test_helper"

class TerrainTest < ActiveSupport::TestCase
  test "valid terrain" do
    terrain = Terrain.new(name: "Grass", price: 40)
    assert terrain.valid?
  end
end

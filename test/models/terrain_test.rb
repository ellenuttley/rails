require "test_helper"

class TerrainTest < ActiveSupport::TestCase
  test "valid terrain" do
    terrain = create(:terrain, name: "Grass", price: 40)
    assert terrain.valid?
  end

  test "should not save terrain without name" do
    animal = Terrain.new
    assert_not animal.save, "FAIL : Terrain saved without a name"
  end
end

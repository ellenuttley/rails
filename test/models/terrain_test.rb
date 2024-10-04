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

  test "price must be non-negative" do
    terrain = build(:terrain, price: -10)
    assert_not terrain.valid?
    assert_includes terrain.errors[:price], "must be greater than or equal to 0"
  end

  test "should not save terrain with duplicate name" do
    create(:terrain, name: "Snow")
    terrain = build(:terrain, name: "Snow")
    assert_not terrain.save, "FAIL : Terrain saved with duplicate name"
  end

  test "capitalize name before save" do
    terrain = create(:terrain, name: "sand")
    assert_equal "Sand", terrain.reload.name
  end
end

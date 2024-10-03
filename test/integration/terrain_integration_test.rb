require 'test_helper'

class TerrainIntegrationTest < ActionDispatch::IntegrationTest
    test "terrain and animal associations work correctly" do
        # Create a terrain using factory
        terrain = create(:terrain)
        assert terrain.valid?
        assert_equal 0, terrain.animals.count
        end
  
end
require "test_helper"

class AnimalTerrainTest < ActiveSupport::TestCase
  setup do
    @animal = create(:animal)
    @terrain = create(:terrain)
  end
end

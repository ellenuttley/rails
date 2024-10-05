require 'test_helper'

class ExhibitSizeTest < ActiveSupport::TestCase
  setup do
    @animal = create(:animal)
    @exhibit_size = create(:exhibit_size, animal: @animal)
  end

  


end
require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
    assert_equal "application/json", @response.media_type
    assert_not_nil @controller.instance_variable_get('@animals')
  end
end
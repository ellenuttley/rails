require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should return JSON content type for API requests" do
    get '/api/some_endpoint'
    assert_equal "application/json", @response.content_type
  end
end
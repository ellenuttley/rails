class ApplicationController < ActionController::API
  def test
    render json: { message: "Test successful" }
  end
end
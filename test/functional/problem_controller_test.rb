require 'test_helper'

class ProblemControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

require File.expand_path("../../test_helper.rb", __FILE__)

class HomeControllerTest < ActionController::TestCase
  test "index" do
    get :index
    
    assert_response :success
  end
end

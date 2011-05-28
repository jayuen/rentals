require File.expand_path("../../test_helper.rb", __FILE__)

class FormsControllerTest < ActionController::TestCase
  test "new" do
    xhr :get, :new

    assert_response :success
    form = assigns(:form)
    assert_equal form.to_json, @response.body 
  end
end

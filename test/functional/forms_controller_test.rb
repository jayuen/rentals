require File.expand_path("../../test_helper.rb", __FILE__)

class FormsControllerTest < ActionController::TestCase
  test "new" do
    xhr :get, :new

    assert_response :success
    form = assigns(:form)
    assert_equal form.to_json, @response.body 
  end

  test "create" do
    assert_difference 'Form.count' do
      xhr :post, :create, :form => {:first_name => 'jason', :last_name => 'yuen'}
    end

    assert_response :success
    form = assigns(:form)
    assert_equal form.to_json, @response.body
    assert_equal 'jason', form.first_name
    assert_equal 'yuen', form.last_name
  end
end

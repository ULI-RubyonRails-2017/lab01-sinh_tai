require 'test_helper'

class SomethingWrongControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get something_wrong_index_url
    assert_response :success
  end

end

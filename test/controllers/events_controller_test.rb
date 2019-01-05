require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new,show,index" do
    get events_new,show,index_url
    assert_response :success
  end

end

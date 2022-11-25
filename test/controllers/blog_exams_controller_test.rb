require "test_helper"

class BlogExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_exams_index_url
    assert_response :success
  end
end

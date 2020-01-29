require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "loading the index" do
    get "/"
    assert_response :success
  end

  test "posting a CSV file" do
    get "/"

    # post the login and follow through to the home page
    csv_fixture = fixture_file_upload('test/support/eq_page_outline_v3.csv', 'text/csv')
    post "/pages/parse_csv", params: {paths_file: csv_fixture}
    assert_response :success
    assert_equal "/pages/parse_csv", path
  end
end

require "test_helper"

class ScholarshipsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get scholarships_new_url
    assert_response :success
  end

  test "should get create" do
    get scholarships_create_url
    assert_response :success
  end

  test "should get index" do
    get scholarships_index_url
    assert_response :success
  end

  test "should get show" do
    get scholarships_show_url
    assert_response :success
  end

  test "should get edit" do
    get scholarships_edit_url
    assert_response :success
  end

  test "should get update" do
    get scholarships_update_url
    assert_response :success
  end
end

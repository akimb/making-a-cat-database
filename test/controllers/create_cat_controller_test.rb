require "test_helper"

class CreateCatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get create_cat_index_url
    assert_response :success
  end

  test "should get show" do
    get create_cat_show_url
    assert_response :success
  end

  test "should get new" do
    get create_cat_new_url
    assert_response :success
  end

  test "should get create" do
    get create_cat_create_url
    assert_response :success
  end

  test "should get edit" do
    get create_cat_edit_url
    assert_response :success
  end

  test "should get update" do
    get create_cat_update_url
    assert_response :success
  end

  test "should get destroy" do
    get create_cat_destroy_url
    assert_response :success
  end
end

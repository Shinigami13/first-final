require 'test_helper'

class AssignsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get assigns_new_url
    assert_response :success
  end

  test "should get create" do
    get assigns_create_url
    assert_response :success
  end

  test "should get edit" do
    get assigns_edit_url
    assert_response :success
  end

  test "should get update" do
    get assigns_update_url
    assert_response :success
  end

  test "should get destroy" do
    get assigns_destroy_url
    assert_response :success
  end

end

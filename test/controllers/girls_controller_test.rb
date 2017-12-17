require 'test_helper'

class GirlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @girl = girls(:one)
  end

  test "should get index" do
    get girls_url
    assert_response :success
  end

  test "should get new" do
    get new_girl_url
    assert_response :success
  end

  test "should create girl" do
    assert_difference('Girl.count') do
      post girls_url, params: { girl: { name: @girl.name } }
    end

    assert_redirected_to girl_url(Girl.last)
  end

  test "should show girl" do
    get girl_url(@girl)
    assert_response :success
  end

  test "should get edit" do
    get edit_girl_url(@girl)
    assert_response :success
  end

  test "should update girl" do
    patch girl_url(@girl), params: { girl: { name: @girl.name } }
    assert_redirected_to girl_url(@girl)
  end

  test "should destroy girl" do
    assert_difference('Girl.count', -1) do
      delete girl_url(@girl)
    end

    assert_redirected_to girls_url
  end
end

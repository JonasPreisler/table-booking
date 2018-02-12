require 'test_helper'

class TablebookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tablebooking = tablebookings(:one)
  end

  test "should get index" do
    get tablebookings_url
    assert_response :success
  end

  test "should get new" do
    get new_tablebooking_url
    assert_response :success
  end

  test "should create tablebooking" do
    assert_difference('Tablebooking.count') do
      post tablebookings_url, params: { tablebooking: {  } }
    end

    assert_redirected_to tablebooking_url(Tablebooking.last)
  end

  test "should show tablebooking" do
    get tablebooking_url(@tablebooking)
    assert_response :success
  end

  test "should get edit" do
    get edit_tablebooking_url(@tablebooking)
    assert_response :success
  end

  test "should update tablebooking" do
    patch tablebooking_url(@tablebooking), params: { tablebooking: {  } }
    assert_redirected_to tablebooking_url(@tablebooking)
  end

  test "should destroy tablebooking" do
    assert_difference('Tablebooking.count', -1) do
      delete tablebooking_url(@tablebooking)
    end

    assert_redirected_to tablebookings_url
  end
end

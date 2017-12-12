require 'test_helper'

class GuestlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guestlist = guestlists(:one)
  end

  test "should get index" do
    get guestlists_url
    assert_response :success
  end

  test "should get new" do
    get new_guestlist_url
    assert_response :success
  end

  test "should create guestlist" do
    assert_difference('Guestlist.count') do
      post guestlists_url, params: { guestlist: { first_name: @guestlist.first_name, gender: @guestlist.gender, last_name: @guestlist.last_name } }
    end

    assert_redirected_to guestlist_url(Guestlist.last)
  end

  test "should show guestlist" do
    get guestlist_url(@guestlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_guestlist_url(@guestlist)
    assert_response :success
  end

  test "should update guestlist" do
    patch guestlist_url(@guestlist), params: { guestlist: { first_name: @guestlist.first_name, gender: @guestlist.gender, last_name: @guestlist.last_name } }
    assert_redirected_to guestlist_url(@guestlist)
  end

  test "should destroy guestlist" do
    assert_difference('Guestlist.count', -1) do
      delete guestlist_url(@guestlist)
    end

    assert_redirected_to guestlists_url
  end
end

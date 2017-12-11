require 'test_helper'

class TaggingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tagging = taggings(:one)
  end

  test "should get index" do
    get taggings_url
    assert_response :success
  end

  test "should get new" do
    get new_tagging_url
    assert_response :success
  end

  test "should create tagging" do
    assert_difference('Tagging.count') do
      post taggings_url, params: { tagging: { event_id: @tagging.event_id, tag_id: @tagging.tag_id } }
    end

    assert_redirected_to tagging_url(Tagging.last)
  end

  test "should show tagging" do
    get tagging_url(@tagging)
    assert_response :success
  end

  test "should get edit" do
    get edit_tagging_url(@tagging)
    assert_response :success
  end

  test "should update tagging" do
    patch tagging_url(@tagging), params: { tagging: { event_id: @tagging.event_id, tag_id: @tagging.tag_id } }
    assert_redirected_to tagging_url(@tagging)
  end

  test "should destroy tagging" do
    assert_difference('Tagging.count', -1) do
      delete tagging_url(@tagging)
    end

    assert_redirected_to taggings_url
  end
end

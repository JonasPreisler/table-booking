require 'test_helper'

class PromotersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promoter = promoters(:one)
  end

  test "should get index" do
    get promoters_url
    assert_response :success
  end

  test "should get new" do
    get new_promoter_url
    assert_response :success
  end

  test "should create promoter" do
    assert_difference('Promoter.count') do
      post promoters_url, params: { promoter: { name: @promoter.name } }
    end

    assert_redirected_to promoter_url(Promoter.last)
  end

  test "should show promoter" do
    get promoter_url(@promoter)
    assert_response :success
  end

  test "should get edit" do
    get edit_promoter_url(@promoter)
    assert_response :success
  end

  test "should update promoter" do
    patch promoter_url(@promoter), params: { promoter: { name: @promoter.name } }
    assert_redirected_to promoter_url(@promoter)
  end

  test "should destroy promoter" do
    assert_difference('Promoter.count', -1) do
      delete promoter_url(@promoter)
    end

    assert_redirected_to promoters_url
  end
end

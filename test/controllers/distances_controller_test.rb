require 'test_helper'

class DistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @distance = distances(:one)
  end

  test "should get index" do
    get distances_url
    assert_response :success
  end

  test "should get new" do
    get new_distance_url
    assert_response :success
  end

  test "should create distance" do
    assert_difference('Distance.count') do
      post distances_url, params: { distance: { foot: @distance.foot, route: @distance.route, station: @distance.station } }
    end

    assert_redirected_to distance_url(Distance.last)
  end

  test "should show distance" do
    get distance_url(@distance)
    assert_response :success
  end

  test "should get edit" do
    get edit_distance_url(@distance)
    assert_response :success
  end

  test "should update distance" do
    patch distance_url(@distance), params: { distance: { foot: @distance.foot, route: @distance.route, station: @distance.station } }
    assert_redirected_to distance_url(@distance)
  end

  test "should destroy distance" do
    assert_difference('Distance.count', -1) do
      delete distance_url(@distance)
    end

    assert_redirected_to distances_url
  end
end

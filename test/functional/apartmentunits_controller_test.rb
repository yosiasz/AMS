require 'test_helper'

class ApartmentunitsControllerTest < ActionController::TestCase
  setup do
    @apartmentunit = apartmentunits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartmentunits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartmentunit" do
    assert_difference('Apartmentunit.count') do
      post :create, apartmentunit: @apartmentunit.attributes
    end

    assert_redirected_to apartmentunit_path(assigns(:apartmentunit))
  end

  test "should show apartmentunit" do
    get :show, id: @apartmentunit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartmentunit.to_param
    assert_response :success
  end

  test "should update apartmentunit" do
    put :update, id: @apartmentunit.to_param, apartmentunit: @apartmentunit.attributes
    assert_redirected_to apartmentunit_path(assigns(:apartmentunit))
  end

  test "should destroy apartmentunit" do
    assert_difference('Apartmentunit.count', -1) do
      delete :destroy, id: @apartmentunit.to_param
    end

    assert_redirected_to apartmentunits_path
  end
end

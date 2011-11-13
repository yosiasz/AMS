require 'test_helper'

class ApartmentcomplexesControllerTest < ActionController::TestCase
  setup do
    @apartmentcomplex = apartmentcomplexes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartmentcomplexes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartmentcomplex" do
    assert_difference('Apartmentcomplex.count') do
      post :create, apartmentcomplex: @apartmentcomplex.attributes
    end

    assert_redirected_to apartmentcomplex_path(assigns(:apartmentcomplex))
  end

  test "should show apartmentcomplex" do
    get :show, id: @apartmentcomplex.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartmentcomplex.to_param
    assert_response :success
  end

  test "should update apartmentcomplex" do
    put :update, id: @apartmentcomplex.to_param, apartmentcomplex: @apartmentcomplex.attributes
    assert_redirected_to apartmentcomplex_path(assigns(:apartmentcomplex))
  end

  test "should destroy apartmentcomplex" do
    assert_difference('Apartmentcomplex.count', -1) do
      delete :destroy, id: @apartmentcomplex.to_param
    end

    assert_redirected_to apartmentcomplexes_path
  end
end

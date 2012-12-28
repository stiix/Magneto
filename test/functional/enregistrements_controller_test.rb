require 'test_helper'

class EnregistrementsControllerTest < ActionController::TestCase
  setup do
    @enregistrement = enregistrements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enregistrements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enregistrement" do
    assert_difference('Enregistrement.count') do
      post :create, enregistrement: @enregistrement.attributes
    end

    assert_redirected_to enregistrement_path(assigns(:enregistrement))
  end

  test "should show enregistrement" do
    get :show, id: @enregistrement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enregistrement
    assert_response :success
  end

  test "should update enregistrement" do
    put :update, id: @enregistrement, enregistrement: @enregistrement.attributes
    assert_redirected_to enregistrement_path(assigns(:enregistrement))
  end

  test "should destroy enregistrement" do
    assert_difference('Enregistrement.count', -1) do
      delete :destroy, id: @enregistrement
    end

    assert_redirected_to enregistrements_path
  end
end

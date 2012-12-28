require 'test_helper'

class ChainesControllerTest < ActionController::TestCase
  setup do
    @chaine = chaines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chaines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chaine" do
    assert_difference('Chaine.count') do
      post :create, chaine: @chaine.attributes
    end

    assert_redirected_to chaine_path(assigns(:chaine))
  end

  test "should show chaine" do
    get :show, id: @chaine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chaine
    assert_response :success
  end

  test "should update chaine" do
    put :update, id: @chaine, chaine: @chaine.attributes
    assert_redirected_to chaine_path(assigns(:chaine))
  end

  test "should destroy chaine" do
    assert_difference('Chaine.count', -1) do
      delete :destroy, id: @chaine
    end

    assert_redirected_to chaines_path
  end
end

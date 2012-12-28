require 'test_helper'

class TypePersonnesControllerTest < ActionController::TestCase
  setup do
    @type_personne = type_personnes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_personnes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_personne" do
    assert_difference('TypePersonne.count') do
      post :create, type_personne: @type_personne.attributes
    end

    assert_redirected_to type_personne_path(assigns(:type_personne))
  end

  test "should show type_personne" do
    get :show, id: @type_personne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_personne
    assert_response :success
  end

  test "should update type_personne" do
    put :update, id: @type_personne, type_personne: @type_personne.attributes
    assert_redirected_to type_personne_path(assigns(:type_personne))
  end

  test "should destroy type_personne" do
    assert_difference('TypePersonne.count', -1) do
      delete :destroy, id: @type_personne
    end

    assert_redirected_to type_personnes_path
  end
end

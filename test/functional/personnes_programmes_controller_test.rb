require 'test_helper'

class PersonnesProgrammesControllerTest < ActionController::TestCase
  setup do
    @personnes_programme = personnes_programmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnes_programmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personnes_programme" do
    assert_difference('PersonnesProgramme.count') do
      post :create, personnes_programme: @personnes_programme.attributes
    end

    assert_redirected_to personnes_programme_path(assigns(:personnes_programme))
  end

  test "should show personnes_programme" do
    get :show, id: @personnes_programme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personnes_programme
    assert_response :success
  end

  test "should update personnes_programme" do
    put :update, id: @personnes_programme, personnes_programme: @personnes_programme.attributes
    assert_redirected_to personnes_programme_path(assigns(:personnes_programme))
  end

  test "should destroy personnes_programme" do
    assert_difference('PersonnesProgramme.count', -1) do
      delete :destroy, id: @personnes_programme
    end

    assert_redirected_to personnes_programmes_path
  end
end

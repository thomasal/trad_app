require 'test_helper'

class ActiosControllerTest < ActionController::TestCase
  setup do
    @actio = actios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actio" do
    assert_difference('Actio.count') do
      post :create, actio: { nom_action: @actio.nom_action }
    end

    assert_redirected_to actio_path(assigns(:actio))
  end

  test "should show actio" do
    get :show, id: @actio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actio
    assert_response :success
  end

  test "should update actio" do
    patch :update, id: @actio, actio: { nom_action: @actio.nom_action }
    assert_redirected_to actio_path(assigns(:actio))
  end

  test "should destroy actio" do
    assert_difference('Actio.count', -1) do
      delete :destroy, id: @actio
    end

    assert_redirected_to actios_path
  end
end

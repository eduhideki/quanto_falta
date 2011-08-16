require 'test_helper'

class TemposControllerTest < ActionController::TestCase
  setup do
    @tempo = tempos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempo" do
    assert_difference('Tempo.count') do
      post :create, :tempo => @tempo.attributes
    end

    assert_redirected_to tempo_path(assigns(:tempo))
  end

  test "should show tempo" do
    get :show, :id => @tempo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tempo.to_param
    assert_response :success
  end

  test "should update tempo" do
    put :update, :id => @tempo.to_param, :tempo => @tempo.attributes
    assert_redirected_to tempo_path(assigns(:tempo))
  end

  test "should destroy tempo" do
    assert_difference('Tempo.count', -1) do
      delete :destroy, :id => @tempo.to_param
    end

    assert_redirected_to tempos_path
  end
end

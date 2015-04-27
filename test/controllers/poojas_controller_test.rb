require 'test_helper'

class PoojasControllerTest < ActionController::TestCase
  setup do
    @pooja = poojas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poojas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pooja" do
    assert_difference('Pooja.count') do
      post :create, pooja: { availability: @pooja.availability, description: @pooja.description, idol: @pooja.idol, name: @pooja.name, price: @pooja.price }
    end

    assert_redirected_to pooja_path(assigns(:pooja))
  end

  test "should show pooja" do
    get :show, id: @pooja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pooja
    assert_response :success
  end

  test "should update pooja" do
    patch :update, id: @pooja, pooja: { availability: @pooja.availability, description: @pooja.description, idol: @pooja.idol, name: @pooja.name, price: @pooja.price }
    assert_redirected_to pooja_path(assigns(:pooja))
  end

  test "should destroy pooja" do
    assert_difference('Pooja.count', -1) do
      delete :destroy, id: @pooja
    end

    assert_redirected_to poojas_path
  end
end

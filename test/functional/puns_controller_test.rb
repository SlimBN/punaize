require 'test_helper'

class PunsControllerTest < ActionController::TestCase
  setup do
    @pun = puns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pun" do
    assert_difference('Pun.count') do
      post :create, pun: { board_id: @pun.board_id, category_id: @pun.category_id, currency_id: @pun.currency_id, deleted: @pun.deleted, description: @pun.description, image: @pun.image, link: @pun.link, original_board_id: @pun.original_board_id, original_punaise_id: @pun.original_punaise_id, original_user_id: @pun.original_user_id, price: @pun.price, slug: @pun.slug, title: @pun.title, user_id: @pun.user_id }
    end

    assert_redirected_to pun_path(assigns(:pun))
  end

  test "should show pun" do
    get :show, id: @pun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pun
    assert_response :success
  end

  test "should update pun" do
    put :update, id: @pun, pun: { board_id: @pun.board_id, category_id: @pun.category_id, currency_id: @pun.currency_id, deleted: @pun.deleted, description: @pun.description, image: @pun.image, link: @pun.link, original_board_id: @pun.original_board_id, original_punaise_id: @pun.original_punaise_id, original_user_id: @pun.original_user_id, price: @pun.price, slug: @pun.slug, title: @pun.title, user_id: @pun.user_id }
    assert_redirected_to pun_path(assigns(:pun))
  end

  test "should destroy pun" do
    assert_difference('Pun.count', -1) do
      delete :destroy, id: @pun
    end

    assert_redirected_to puns_path
  end
end

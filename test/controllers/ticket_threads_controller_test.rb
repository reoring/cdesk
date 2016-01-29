require 'test_helper'

class TicketThreadsControllerTest < ActionController::TestCase
  setup do
    @ticket_thread = ticket_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_thread" do
    assert_difference('TicketThread.count') do
      post :create, ticket_thread: { name: @ticket_thread.name }
    end

    assert_redirected_to ticket_thread_path(assigns(:ticket_thread))
  end

  test "should show ticket_thread" do
    get :show, id: @ticket_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_thread
    assert_response :success
  end

  test "should update ticket_thread" do
    patch :update, id: @ticket_thread, ticket_thread: { name: @ticket_thread.name }
    assert_redirected_to ticket_thread_path(assigns(:ticket_thread))
  end

  test "should destroy ticket_thread" do
    assert_difference('TicketThread.count', -1) do
      delete :destroy, id: @ticket_thread
    end

    assert_redirected_to ticket_threads_path
  end
end

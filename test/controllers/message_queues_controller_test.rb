require 'test_helper'

class MessageQueuesControllerTest < ActionController::TestCase
  setup do
    @message_queue = message_queues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:message_queues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create message_queue" do
    assert_difference('MessageQueue.count') do
      post :create, message_queue: { name: @message_queue.name }
    end

    assert_redirected_to message_queue_path(assigns(:message_queue))
  end

  test "should show message_queue" do
    get :show, id: @message_queue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message_queue
    assert_response :success
  end

  test "should update message_queue" do
    patch :update, id: @message_queue, message_queue: { name: @message_queue.name }
    assert_redirected_to message_queue_path(assigns(:message_queue))
  end

  test "should destroy message_queue" do
    assert_difference('MessageQueue.count', -1) do
      delete :destroy, id: @message_queue
    end

    assert_redirected_to message_queues_path
  end
end

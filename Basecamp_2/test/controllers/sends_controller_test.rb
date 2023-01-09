require "test_helper"

class SendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @send = sends(:one)
  end

  test "should get index" do
    get sends_url
    assert_response :success
  end

  test "should get new" do
    get new_send_url
    assert_response :success
  end

  test "should create send" do
    assert_difference("Send.count") do
      post sends_url, params: { send: { sder_id: @send.sder_id, title: @send.title } }
    end

    assert_redirected_to send_url(Send.last)
  end

  test "should show send" do
    get send_url(@send)
    assert_response :success
  end

  test "should get edit" do
    get edit_send_url(@send)
    assert_response :success
  end

  test "should update send" do
    patch send_url(@send), params: { send: { sder_id: @send.sder_id, title: @send.title } }
    assert_redirected_to send_url(@send)
  end

  test "should destroy send" do
    assert_difference("Send.count", -1) do
      delete send_url(@send)
    end

    assert_redirected_to sends_url
  end
end

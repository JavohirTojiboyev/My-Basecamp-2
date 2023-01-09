require "test_helper"

class SdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sder = sders(:one)
  end

  test "should get index" do
    get sders_url
    assert_response :success
  end

  test "should get new" do
    get new_sder_url
    assert_response :success
  end

  test "should create sder" do
    assert_difference("Sder.count") do
      post sders_url, params: { sder: { description: @sder.description, project_id: @sder.project_id, title: @sder.title } }
    end

    assert_redirected_to sder_url(Sder.last)
  end

  test "should show sder" do
    get sder_url(@sder)
    assert_response :success
  end

  test "should get edit" do
    get edit_sder_url(@sder)
    assert_response :success
  end

  test "should update sder" do
    patch sder_url(@sder), params: { sder: { description: @sder.description, project_id: @sder.project_id, title: @sder.title } }
    assert_redirected_to sder_url(@sder)
  end

  test "should destroy sder" do
    assert_difference("Sder.count", -1) do
      delete sder_url(@sder)
    end

    assert_redirected_to sders_url
  end
end

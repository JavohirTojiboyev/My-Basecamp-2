require "test_helper"

class VoltsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @volt = volts(:one)
  end

  test "should get index" do
    get volts_url
    assert_response :success
  end

  test "should get new" do
    get new_volt_url
    assert_response :success
  end

  test "should create volt" do
    assert_difference("Volt.count") do
      post volts_url, params: { volt: { project_id: @volt.project_id, title: @volt.title } }
    end

    assert_redirected_to volt_url(Volt.last)
  end

  test "should show volt" do
    get volt_url(@volt)
    assert_response :success
  end

  test "should get edit" do
    get edit_volt_url(@volt)
    assert_response :success
  end

  test "should update volt" do
    patch volt_url(@volt), params: { volt: { project_id: @volt.project_id, title: @volt.title } }
    assert_redirected_to volt_url(@volt)
  end

  test "should destroy volt" do
    assert_difference("Volt.count", -1) do
      delete volt_url(@volt)
    end

    assert_redirected_to volts_url
  end
end

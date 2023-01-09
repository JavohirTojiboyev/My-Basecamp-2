require "application_system_test_case"

class SendsTest < ApplicationSystemTestCase
  setup do
    @send = sends(:one)
  end

  test "visiting the index" do
    visit sends_url
    assert_selector "h1", text: "Sends"
  end

  test "should create send" do
    visit sends_url
    click_on "New send"

    fill_in "Sder", with: @send.sder_id
    fill_in "Title", with: @send.title
    click_on "Create Send"

    assert_text "Send was successfully created"
    click_on "Back"
  end

  test "should update Send" do
    visit send_url(@send)
    click_on "Edit this send", match: :first

    fill_in "Sder", with: @send.sder_id
    fill_in "Title", with: @send.title
    click_on "Update Send"

    assert_text "Send was successfully updated"
    click_on "Back"
  end

  test "should destroy Send" do
    visit send_url(@send)
    click_on "Destroy this send", match: :first

    assert_text "Send was successfully destroyed"
  end
end

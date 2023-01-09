require "application_system_test_case"

class VoltsTest < ApplicationSystemTestCase
  setup do
    @volt = volts(:one)
  end

  test "visiting the index" do
    visit volts_url
    assert_selector "h1", text: "Volts"
  end

  test "should create volt" do
    visit volts_url
    click_on "New volt"

    fill_in "Project", with: @volt.project_id
    fill_in "Title", with: @volt.title
    click_on "Create Volt"

    assert_text "Volt was successfully created"
    click_on "Back"
  end

  test "should update Volt" do
    visit volt_url(@volt)
    click_on "Edit this volt", match: :first

    fill_in "Project", with: @volt.project_id
    fill_in "Title", with: @volt.title
    click_on "Update Volt"

    assert_text "Volt was successfully updated"
    click_on "Back"
  end

  test "should destroy Volt" do
    visit volt_url(@volt)
    click_on "Destroy this volt", match: :first

    assert_text "Volt was successfully destroyed"
  end
end

require "application_system_test_case"

class SdersTest < ApplicationSystemTestCase
  setup do
    @sder = sders(:one)
  end

  test "visiting the index" do
    visit sders_url
    assert_selector "h1", text: "Sders"
  end

  test "should create sder" do
    visit sders_url
    click_on "New sder"

    fill_in "Description", with: @sder.description
    fill_in "Project", with: @sder.project_id
    fill_in "Title", with: @sder.title
    click_on "Create Sder"

    assert_text "Sder was successfully created"
    click_on "Back"
  end

  test "should update Sder" do
    visit sder_url(@sder)
    click_on "Edit this sder", match: :first

    fill_in "Description", with: @sder.description
    fill_in "Project", with: @sder.project_id
    fill_in "Title", with: @sder.title
    click_on "Update Sder"

    assert_text "Sder was successfully updated"
    click_on "Back"
  end

  test "should destroy Sder" do
    visit sder_url(@sder)
    click_on "Destroy this sder", match: :first

    assert_text "Sder was successfully destroyed"
  end
end

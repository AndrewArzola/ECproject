require "application_system_test_case"

class TrimsTest < ApplicationSystemTestCase
  setup do
    @trim = trims(:one)
  end

  test "visiting the index" do
    visit trims_url
    assert_selector "h1", text: "Trims"
  end

  test "should create trim" do
    visit trims_url
    click_on "New trim"

    fill_in "Content", with: @trim.content
    fill_in "House", with: @trim.house_id
    click_on "Create Trim"

    assert_text "Trim was successfully created"
    click_on "Back"
  end

  test "should update Trim" do
    visit trim_url(@trim)
    click_on "Edit this trim", match: :first

    fill_in "Content", with: @trim.content
    fill_in "House", with: @trim.house_id
    click_on "Update Trim"

    assert_text "Trim was successfully updated"
    click_on "Back"
  end

  test "should destroy Trim" do
    visit trim_url(@trim)
    click_on "Destroy this trim", match: :first

    assert_text "Trim was successfully destroyed"
  end
end

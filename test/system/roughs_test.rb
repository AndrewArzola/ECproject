require "application_system_test_case"

class RoughsTest < ApplicationSystemTestCase
  setup do
    @rough = roughs(:one)
  end

  test "visiting the index" do
    visit roughs_url
    assert_selector "h1", text: "Roughs"
  end

  test "should create rough" do
    visit roughs_url
    click_on "New rough"

    fill_in "Content", with: @rough.content
    fill_in "House", with: @rough.house_id
    check "Picture" if @rough.picture
    click_on "Create Rough"

    assert_text "Rough was successfully created"
    click_on "Back"
  end

  test "should update Rough" do
    visit rough_url(@rough)
    click_on "Edit this rough", match: :first

    fill_in "Content", with: @rough.content
    fill_in "House", with: @rough.house_id
    check "Picture" if @rough.picture
    click_on "Update Rough"

    assert_text "Rough was successfully updated"
    click_on "Back"
  end

  test "should destroy Rough" do
    visit rough_url(@rough)
    click_on "Destroy this rough", match: :first

    assert_text "Rough was successfully destroyed"
  end
end

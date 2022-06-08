require "application_system_test_case"

class CenologistsTest < ApplicationSystemTestCase
  setup do
    @cenologist = cenologists(:one)
  end

  test "visiting the index" do
    visit cenologists_url
    assert_selector "h1", text: "Cenologists"
  end

  test "should create cenologist" do
    visit cenologists_url
    click_on "New cenologist"

    fill_in "Name", with: @cenologist.name
    click_on "Create Cenologist"

    assert_text "Cenologist was successfully created"
    click_on "Back"
  end

  test "should update Cenologist" do
    visit cenologist_url(@cenologist)
    click_on "Edit this cenologist", match: :first

    fill_in "Name", with: @cenologist.name
    click_on "Update Cenologist"

    assert_text "Cenologist was successfully updated"
    click_on "Back"
  end

  test "should destroy Cenologist" do
    visit cenologist_url(@cenologist)
    click_on "Destroy this cenologist", match: :first

    assert_text "Cenologist was successfully destroyed"
  end
end

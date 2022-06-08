require "application_system_test_case"

class WinestrainsTest < ApplicationSystemTestCase
  setup do
    @winestrain = winestrains(:one)
  end

  test "visiting the index" do
    visit winestrains_url
    assert_selector "h1", text: "Winestrains"
  end

  test "should create winestrain" do
    visit winestrains_url
    click_on "New winestrain"

    fill_in "Porcentaje", with: @winestrain.porcentaje
    fill_in "Strain", with: @winestrain.strain_id
    fill_in "Wine", with: @winestrain.wine_id
    click_on "Create Winestrain"

    assert_text "Winestrain was successfully created"
    click_on "Back"
  end

  test "should update Winestrain" do
    visit winestrain_url(@winestrain)
    click_on "Edit this winestrain", match: :first

    fill_in "Porcentaje", with: @winestrain.porcentaje
    fill_in "Strain", with: @winestrain.strain_id
    fill_in "Wine", with: @winestrain.wine_id
    click_on "Update Winestrain"

    assert_text "Winestrain was successfully updated"
    click_on "Back"
  end

  test "should destroy Winestrain" do
    visit winestrain_url(@winestrain)
    click_on "Destroy this winestrain", match: :first

    assert_text "Winestrain was successfully destroyed"
  end
end

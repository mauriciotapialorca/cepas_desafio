require "application_system_test_case"

class JobstittlesTest < ApplicationSystemTestCase
  setup do
    @jobstittle = jobstittles(:one)
  end

  test "visiting the index" do
    visit jobstittles_url
    assert_selector "h1", text: "Jobstittles"
  end

  test "should create jobstittle" do
    visit jobstittles_url
    click_on "New jobstittle"

    fill_in "Job tittle", with: @jobstittle.job_tittle
    click_on "Create Jobstittle"

    assert_text "Jobstittle was successfully created"
    click_on "Back"
  end

  test "should update Jobstittle" do
    visit jobstittle_url(@jobstittle)
    click_on "Edit this jobstittle", match: :first

    fill_in "Job tittle", with: @jobstittle.job_tittle
    click_on "Update Jobstittle"

    assert_text "Jobstittle was successfully updated"
    click_on "Back"
  end

  test "should destroy Jobstittle" do
    visit jobstittle_url(@jobstittle)
    click_on "Destroy this jobstittle", match: :first

    assert_text "Jobstittle was successfully destroyed"
  end
end

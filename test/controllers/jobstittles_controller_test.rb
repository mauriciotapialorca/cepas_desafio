require "test_helper"

class JobstittlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobstittle = jobstittles(:one)
  end

  test "should get index" do
    get jobstittles_url
    assert_response :success
  end

  test "should get new" do
    get new_jobstittle_url
    assert_response :success
  end

  test "should create jobstittle" do
    assert_difference("Jobstittle.count") do
      post jobstittles_url, params: { jobstittle: { job_tittle: @jobstittle.job_tittle } }
    end

    assert_redirected_to jobstittle_url(Jobstittle.last)
  end

  test "should show jobstittle" do
    get jobstittle_url(@jobstittle)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobstittle_url(@jobstittle)
    assert_response :success
  end

  test "should update jobstittle" do
    patch jobstittle_url(@jobstittle), params: { jobstittle: { job_tittle: @jobstittle.job_tittle } }
    assert_redirected_to jobstittle_url(@jobstittle)
  end

  test "should destroy jobstittle" do
    assert_difference("Jobstittle.count", -1) do
      delete jobstittle_url(@jobstittle)
    end

    assert_redirected_to jobstittles_url
  end
end

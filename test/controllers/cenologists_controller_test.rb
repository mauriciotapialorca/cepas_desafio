require "test_helper"

class CenologistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cenologist = cenologists(:one)
  end

  test "should get index" do
    get cenologists_url
    assert_response :success
  end

  test "should get new" do
    get new_cenologist_url
    assert_response :success
  end

  test "should create cenologist" do
    assert_difference("Cenologist.count") do
      post cenologists_url, params: { cenologist: { name: @cenologist.name } }
    end

    assert_redirected_to cenologist_url(Cenologist.last)
  end

  test "should show cenologist" do
    get cenologist_url(@cenologist)
    assert_response :success
  end

  test "should get edit" do
    get edit_cenologist_url(@cenologist)
    assert_response :success
  end

  test "should update cenologist" do
    patch cenologist_url(@cenologist), params: { cenologist: { name: @cenologist.name } }
    assert_redirected_to cenologist_url(@cenologist)
  end

  test "should destroy cenologist" do
    assert_difference("Cenologist.count", -1) do
      delete cenologist_url(@cenologist)
    end

    assert_redirected_to cenologists_url
  end
end

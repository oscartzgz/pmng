require 'test_helper'

class PhoneLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_line = phone_lines(:one)
  end

  test "should get index" do
    get phone_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_line_url
    assert_response :success
  end

  test "should create phone_line" do
    assert_difference('PhoneLine.count') do
      post phone_lines_url, params: { phone_line: { SIM_key: @phone_line.SIM_key, number: @phone_line.number } }
    end

    assert_redirected_to phone_line_url(PhoneLine.last)
  end

  test "should show phone_line" do
    get phone_line_url(@phone_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_line_url(@phone_line)
    assert_response :success
  end

  test "should update phone_line" do
    patch phone_line_url(@phone_line), params: { phone_line: { SIM_key: @phone_line.SIM_key, number: @phone_line.number } }
    assert_redirected_to phone_line_url(@phone_line)
  end

  test "should destroy phone_line" do
    assert_difference('PhoneLine.count', -1) do
      delete phone_line_url(@phone_line)
    end

    assert_redirected_to phone_lines_url
  end
end

require 'test_helper'

class PhoneDevicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phone_device = phone_devices(:one)
  end

  test "should get index" do
    get phone_devices_url
    assert_response :success
  end

  test "should get new" do
    get new_phone_device_url
    assert_response :success
  end

  test "should create phone_device" do
    assert_difference('PhoneDevice.count') do
      post phone_devices_url, params: { phone_device: { IMEI: @phone_device.IMEI, assignment: @phone_device.assignment, brand: @phone_device.brand, model: @phone_device.model, observations: @phone_device.observations, phone_line_id: @phone_device.phone_line_id, quantity: @phone_device.quantity, sku: @phone_device.sku, status: @phone_device.status, value: @phone_device.value } }
    end

    assert_redirected_to phone_device_url(PhoneDevice.last)
  end

  test "should show phone_device" do
    get phone_device_url(@phone_device)
    assert_response :success
  end

  test "should get edit" do
    get edit_phone_device_url(@phone_device)
    assert_response :success
  end

  test "should update phone_device" do
    patch phone_device_url(@phone_device), params: { phone_device: { IMEI: @phone_device.IMEI, assignment: @phone_device.assignment, brand: @phone_device.brand, model: @phone_device.model, observations: @phone_device.observations, phone_line_id: @phone_device.phone_line_id, quantity: @phone_device.quantity, sku: @phone_device.sku, status: @phone_device.status, value: @phone_device.value } }
    assert_redirected_to phone_device_url(@phone_device)
  end

  test "should destroy phone_device" do
    assert_difference('PhoneDevice.count', -1) do
      delete phone_device_url(@phone_device)
    end

    assert_redirected_to phone_devices_url
  end
end

require "application_system_test_case"

class PhoneDevicesTest < ApplicationSystemTestCase
  setup do
    @phone_device = phone_devices(:one)
  end

  test "visiting the index" do
    visit phone_devices_url
    assert_selector "h1", text: "Phone Devices"
  end

  test "creating a Phone device" do
    visit phone_devices_url
    click_on "New Phone Device"

    fill_in "Imei", with: @phone_device.IMEI
    fill_in "Assignment", with: @phone_device.assignment
    fill_in "Brand", with: @phone_device.brand
    fill_in "Model", with: @phone_device.model
    fill_in "Observations", with: @phone_device.observations
    fill_in "Phone line", with: @phone_device.phone_line_id
    fill_in "Quantity", with: @phone_device.quantity
    fill_in "Sku", with: @phone_device.sku
    fill_in "Status", with: @phone_device.status
    fill_in "Value", with: @phone_device.value
    click_on "Create Phone device"

    assert_text "Phone device was successfully created"
    click_on "Back"
  end

  test "updating a Phone device" do
    visit phone_devices_url
    click_on "Edit", match: :first

    fill_in "Imei", with: @phone_device.IMEI
    fill_in "Assignment", with: @phone_device.assignment
    fill_in "Brand", with: @phone_device.brand
    fill_in "Model", with: @phone_device.model
    fill_in "Observations", with: @phone_device.observations
    fill_in "Phone line", with: @phone_device.phone_line_id
    fill_in "Quantity", with: @phone_device.quantity
    fill_in "Sku", with: @phone_device.sku
    fill_in "Status", with: @phone_device.status
    fill_in "Value", with: @phone_device.value
    click_on "Update Phone device"

    assert_text "Phone device was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone device" do
    visit phone_devices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone device was successfully destroyed"
  end
end

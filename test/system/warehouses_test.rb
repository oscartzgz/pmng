require "application_system_test_case"

class WarehousesTest < ApplicationSystemTestCase
  setup do
    @warehouse = warehouses(:one)
  end

  test "visiting the index" do
    visit warehouses_url
    assert_selector "h1", text: "Warehouses"
  end

  test "creating a Warehouse" do
    visit warehouses_url
    click_on "New Warehouse"

    fill_in "Accessory", with: @warehouse.accessory_id
    fill_in "Compute equipement", with: @warehouse.compute_equipement_id
    fill_in "Consumable", with: @warehouse.consumable_id
    fill_in "Printer", with: @warehouse.printer_id
    fill_in "Quantity", with: @warehouse.quantity
    click_on "Create Warehouse"

    assert_text "Warehouse was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse" do
    visit warehouses_url
    click_on "Edit", match: :first

    fill_in "Accessory", with: @warehouse.accessory_id
    fill_in "Compute equipement", with: @warehouse.compute_equipement_id
    fill_in "Consumable", with: @warehouse.consumable_id
    fill_in "Printer", with: @warehouse.printer_id
    fill_in "Quantity", with: @warehouse.quantity
    click_on "Update Warehouse"

    assert_text "Warehouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse" do
    visit warehouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse was successfully destroyed"
  end
end

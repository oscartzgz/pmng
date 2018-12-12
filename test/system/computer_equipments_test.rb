require "application_system_test_case"

class ComputerEquipmentsTest < ApplicationSystemTestCase
  setup do
    @computer_equipment = computer_equipments(:one)
  end

  test "visiting the index" do
    visit computer_equipments_url
    assert_selector "h1", text: "Computer Equipments"
  end

  test "creating a Computer equipment" do
    visit computer_equipments_url
    click_on "New Computer Equipment"

    fill_in "Assignment", with: @computer_equipment.assignment
    fill_in "Brand", with: @computer_equipment.brand
    fill_in "Category", with: @computer_equipment.category
    fill_in "Model", with: @computer_equipment.model
    fill_in "Observations", with: @computer_equipment.observations
    fill_in "Quantity", with: @computer_equipment.quantity
    fill_in "Sku", with: @computer_equipment.sku
    fill_in "Status", with: @computer_equipment.status
    fill_in "Value", with: @computer_equipment.value
    click_on "Create Computer equipment"

    assert_text "Computer equipment was successfully created"
    click_on "Back"
  end

  test "updating a Computer equipment" do
    visit computer_equipments_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @computer_equipment.assignment
    fill_in "Brand", with: @computer_equipment.brand
    fill_in "Category", with: @computer_equipment.category
    fill_in "Model", with: @computer_equipment.model
    fill_in "Observations", with: @computer_equipment.observations
    fill_in "Quantity", with: @computer_equipment.quantity
    fill_in "Sku", with: @computer_equipment.sku
    fill_in "Status", with: @computer_equipment.status
    fill_in "Value", with: @computer_equipment.value
    click_on "Update Computer equipment"

    assert_text "Computer equipment was successfully updated"
    click_on "Back"
  end

  test "destroying a Computer equipment" do
    visit computer_equipments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Computer equipment was successfully destroyed"
  end
end

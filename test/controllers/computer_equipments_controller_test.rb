require 'test_helper'

class ComputerEquipmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @computer_equipment = computer_equipments(:one)
  end

  test "should get index" do
    get computer_equipments_url
    assert_response :success
  end

  test "should get new" do
    get new_computer_equipment_url
    assert_response :success
  end

  test "should create computer_equipment" do
    assert_difference('ComputerEquipment.count') do
      post computer_equipments_url, params: { computer_equipment: { assignment: @computer_equipment.assignment, brand: @computer_equipment.brand, category: @computer_equipment.category, model: @computer_equipment.model, observations: @computer_equipment.observations, quantity: @computer_equipment.quantity, sku: @computer_equipment.sku, status: @computer_equipment.status, value: @computer_equipment.value } }
    end

    assert_redirected_to computer_equipment_url(ComputerEquipment.last)
  end

  test "should show computer_equipment" do
    get computer_equipment_url(@computer_equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_computer_equipment_url(@computer_equipment)
    assert_response :success
  end

  test "should update computer_equipment" do
    patch computer_equipment_url(@computer_equipment), params: { computer_equipment: { assignment: @computer_equipment.assignment, brand: @computer_equipment.brand, category: @computer_equipment.category, model: @computer_equipment.model, observations: @computer_equipment.observations, quantity: @computer_equipment.quantity, sku: @computer_equipment.sku, status: @computer_equipment.status, value: @computer_equipment.value } }
    assert_redirected_to computer_equipment_url(@computer_equipment)
  end

  test "should destroy computer_equipment" do
    assert_difference('ComputerEquipment.count', -1) do
      delete computer_equipment_url(@computer_equipment)
    end

    assert_redirected_to computer_equipments_url
  end
end

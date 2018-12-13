require 'test_helper'

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post employees_url, params: { employee: { accessory_id: @employee.accessory_id, computer_equipment_id: @employee.computer_equipment_id, immediate_boss: @employee.immediate_boss, job: @employee.job, name: @employee.name, phone_device_id: @employee.phone_device_id, printer_id: @employee.printer_id } }
    end

    assert_redirected_to employee_url(Employee.last)
  end

  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :success
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { accessory_id: @employee.accessory_id, computer_equipment_id: @employee.computer_equipment_id, immediate_boss: @employee.immediate_boss, job: @employee.job, name: @employee.name, phone_device_id: @employee.phone_device_id, printer_id: @employee.printer_id } }
    assert_redirected_to employee_url(@employee)
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete employee_url(@employee)
    end

    assert_redirected_to employees_url
  end
end

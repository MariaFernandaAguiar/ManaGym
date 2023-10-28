require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "should create employee" do
    visit employees_url
    click_on "New employee"

    fill_in "Data inicio", with: @employee.data_inicio
    fill_in "Email employee", with: @employee.email_employee
    fill_in "Nome employee", with: @employee.nome_employee
    fill_in "Rg employee", with: @employee.rg_employee
    fill_in "Salario employee", with: @employee.salario_employee
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "should update Employee" do
    visit employee_url(@employee)
    click_on "Edit this employee", match: :first

    fill_in "Data inicio", with: @employee.data_inicio
    fill_in "Email employee", with: @employee.email_employee
    fill_in "Nome employee", with: @employee.nome_employee
    fill_in "Rg employee", with: @employee.rg_employee
    fill_in "Salario employee", with: @employee.salario_employee
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "should destroy Employee" do
    visit employee_url(@employee)
    click_on "Destroy this employee", match: :first

    assert_text "Employee was successfully destroyed"
  end
end

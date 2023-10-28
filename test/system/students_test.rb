require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Data matricula", with: @student.data_matricula
    fill_in "Email student", with: @student.email_student
    fill_in "Gym id", with: @student.gym_id_id
    fill_in "Nome student", with: @student.nome_student
    fill_in "Rg student", with: @student.rg_student
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Data matricula", with: @student.data_matricula
    fill_in "Email student", with: @student.email_student
    fill_in "Gym id", with: @student.gym_id_id
    fill_in "Nome student", with: @student.nome_student
    fill_in "Rg student", with: @student.rg_student
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end

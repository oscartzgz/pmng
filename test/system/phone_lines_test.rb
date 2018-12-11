require "application_system_test_case"

class PhoneLinesTest < ApplicationSystemTestCase
  setup do
    @phone_line = phone_lines(:one)
  end

  test "visiting the index" do
    visit phone_lines_url
    assert_selector "h1", text: "Phone Lines"
  end

  test "creating a Phone line" do
    visit phone_lines_url
    click_on "New Phone Line"

    fill_in "Sim key", with: @phone_line.SIM_key
    fill_in "Number", with: @phone_line.number
    click_on "Create Phone line"

    assert_text "Phone line was successfully created"
    click_on "Back"
  end

  test "updating a Phone line" do
    visit phone_lines_url
    click_on "Edit", match: :first

    fill_in "Sim key", with: @phone_line.SIM_key
    fill_in "Number", with: @phone_line.number
    click_on "Update Phone line"

    assert_text "Phone line was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone line" do
    visit phone_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone line was successfully destroyed"
  end
end

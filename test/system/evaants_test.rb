require "application_system_test_case"

class EvaantsTest < ApplicationSystemTestCase
  setup do
    @evaant = evaants(:one)
  end

  test "visiting the index" do
    visit evaants_url
    assert_selector "h1", text: "Evaants"
  end

  test "should create evaant" do
    visit evaants_url
    click_on "New evaant"

    fill_in "Clubname", with: @evaant.clubname
    fill_in "Desc", with: @evaant.desc
    fill_in "Evant", with: @evaant.evant
    fill_in "When", with: @evaant.when
    click_on "Create Evaant"

    assert_text "Evaant was successfully created"
    click_on "Back"
  end

  test "should update Evaant" do
    visit evaant_url(@evaant)
    click_on "Edit this evaant", match: :first

    fill_in "Clubname", with: @evaant.clubname
    fill_in "Desc", with: @evaant.desc
    fill_in "Evant", with: @evaant.evant
    fill_in "When", with: @evaant.when
    click_on "Update Evaant"

    assert_text "Evaant was successfully updated"
    click_on "Back"
  end

  test "should destroy Evaant" do
    visit evaant_url(@evaant)
    click_on "Destroy this evaant", match: :first

    assert_text "Evaant was successfully destroyed"
  end
end

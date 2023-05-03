require "application_system_test_case"

class EvantsTest < ApplicationSystemTestCase
  setup do
    @evant = evants(:one)
  end

  test "visiting the index" do
    visit evants_url
    assert_selector "h1", text: "Evants"
  end

  test "should create evant" do
    visit evants_url
    click_on "New evant"

    fill_in "Clubname", with: @evant.clubname
    fill_in "Desc", with: @evant.desc
    fill_in "Eventname", with: @evant.eventname
    fill_in "When", with: @evant.when
    click_on "Create Evant"

    assert_text "Evant was successfully created"
    click_on "Back"
  end

  test "should update Evant" do
    visit evant_url(@evant)
    click_on "Edit this evant", match: :first

    fill_in "Clubname", with: @evant.clubname
    fill_in "Desc", with: @evant.desc
    fill_in "Eventname", with: @evant.eventname
    fill_in "When", with: @evant.when
    click_on "Update Evant"

    assert_text "Evant was successfully updated"
    click_on "Back"
  end

  test "should destroy Evant" do
    visit evant_url(@evant)
    click_on "Destroy this evant", match: :first

    assert_text "Evant was successfully destroyed"
  end
end

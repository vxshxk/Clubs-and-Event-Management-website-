require "test_helper"

class EvaantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaant = evaants(:one)
  end

  test "should get index" do
    get evaants_url
    assert_response :success
  end

  test "should get new" do
    get new_evaant_url
    assert_response :success
  end

  test "should create evaant" do
    assert_difference("Evaant.count") do
      post evaants_url, params: { evaant: { clubname: @evaant.clubname, desc: @evaant.desc, evant: @evaant.evant, when: @evaant.when } }
    end

    assert_redirected_to evaant_url(Evaant.last)
  end

  test "should show evaant" do
    get evaant_url(@evaant)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaant_url(@evaant)
    assert_response :success
  end

  test "should update evaant" do
    patch evaant_url(@evaant), params: { evaant: { clubname: @evaant.clubname, desc: @evaant.desc, evant: @evaant.evant, when: @evaant.when } }
    assert_redirected_to evaant_url(@evaant)
  end

  test "should destroy evaant" do
    assert_difference("Evaant.count", -1) do
      delete evaant_url(@evaant)
    end

    assert_redirected_to evaants_url
  end
end

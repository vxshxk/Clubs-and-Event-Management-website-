require "test_helper"

class EvantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evant = evants(:one)
  end

  test "should get index" do
    get evants_url
    assert_response :success
  end

  test "should get new" do
    get new_evant_url
    assert_response :success
  end

  test "should create evant" do
    assert_difference("Evant.count") do
      post evants_url, params: { evant: { clubname: @evant.clubname, desc: @evant.desc, eventname: @evant.eventname, when: @evant.when } }
    end

    assert_redirected_to evant_url(Evant.last)
  end

  test "should show evant" do
    get evant_url(@evant)
    assert_response :success
  end

  test "should get edit" do
    get edit_evant_url(@evant)
    assert_response :success
  end

  test "should update evant" do
    patch evant_url(@evant), params: { evant: { clubname: @evant.clubname, desc: @evant.desc, eventname: @evant.eventname, when: @evant.when } }
    assert_redirected_to evant_url(@evant)
  end

  test "should destroy evant" do
    assert_difference("Evant.count", -1) do
      delete evant_url(@evant)
    end

    assert_redirected_to evants_url
  end
end

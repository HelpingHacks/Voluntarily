require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { clothing: @survey.clothing, contacted: @survey.contacted, continue_visiting: @survey.continue_visiting, flashlights: @survey.flashlights, food: @survey.food, gas: @survey.gas, heat: @survey.heat, medical: @survey.medical, misc: @survey.misc, power: @survey.power, urgency: @survey.urgency, water: @survey.water, water: @survey.water }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    put :update, id: @survey, survey: { clothing: @survey.clothing, contacted: @survey.contacted, continue_visiting: @survey.continue_visiting, flashlights: @survey.flashlights, food: @survey.food, gas: @survey.gas, heat: @survey.heat, medical: @survey.medical, misc: @survey.misc, power: @survey.power, urgency: @survey.urgency, water: @survey.water, water: @survey.water }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end

require 'test_helper'

class OrganizersControllerTest < ActionController::TestCase
  setup do
    @organizer = organizers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizer" do
    assert_difference('Organizer.count') do
      post :create, organizer: { first_name: @organizer.first_name, last_name: @organizer.last_name, organization: @organizer.organization, password: @organizer.password, phone_number: @organizer.phone_number, username: @organizer.username }
    end

    assert_redirected_to organizer_path(assigns(:organizer))
  end

  test "should show organizer" do
    get :show, id: @organizer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizer
    assert_response :success
  end

  test "should update organizer" do
    put :update, id: @organizer, organizer: { first_name: @organizer.first_name, last_name: @organizer.last_name, organization: @organizer.organization, password: @organizer.password, phone_number: @organizer.phone_number, username: @organizer.username }
    assert_redirected_to organizer_path(assigns(:organizer))
  end

  test "should destroy organizer" do
    assert_difference('Organizer.count', -1) do
      delete :destroy, id: @organizer
    end

    assert_redirected_to organizers_path
  end
end

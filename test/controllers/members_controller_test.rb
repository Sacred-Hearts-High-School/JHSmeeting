require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { address: @member.address, car_id: @member.car_id, email: @member.email, food: @member.food, group: @member.group, mobile_phone: @member.mobile_phone, name: @member.name, office_phone: @member.office_phone, person_type: @member.person_type, personal_id: @member.personal_id, room_date: @member.room_date, room_partiner: @member.room_partiner, room_type: @member.room_type, school: @member.school, title: @member.title, transportation: @member.transportation }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { address: @member.address, car_id: @member.car_id, email: @member.email, food: @member.food, group: @member.group, mobile_phone: @member.mobile_phone, name: @member.name, office_phone: @member.office_phone, person_type: @member.person_type, personal_id: @member.personal_id, room_date: @member.room_date, room_partiner: @member.room_partiner, room_type: @member.room_type, school: @member.school, title: @member.title, transportation: @member.transportation }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end

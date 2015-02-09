require 'test_helper'

class ActionablesControllerTest < ActionController::TestCase
  setup do
    @actionable = actionables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:actionables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create actionable" do
    assert_difference('Actionable.count') do
      post :create, actionable: { appeared_at_job: @actionable.appeared_at_job, employeer_requested_student_for_job: @actionable.employeer_requested_student_for_job, job_id: @actionable.job_id, student_approved_for_job: @actionable.student_approved_for_job, student_did_job_well: @actionable.student_did_job_well, student_id: @actionable.student_id, student_requested_job: @actionable.student_requested_job }
    end

    assert_redirected_to actionable_path(assigns(:actionable))
  end

  test "should show actionable" do
    get :show, id: @actionable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @actionable
    assert_response :success
  end

  test "should update actionable" do
    patch :update, id: @actionable, actionable: { appeared_at_job: @actionable.appeared_at_job, employeer_requested_student_for_job: @actionable.employeer_requested_student_for_job, job_id: @actionable.job_id, student_approved_for_job: @actionable.student_approved_for_job, student_did_job_well: @actionable.student_did_job_well, student_id: @actionable.student_id, student_requested_job: @actionable.student_requested_job }
    assert_redirected_to actionable_path(assigns(:actionable))
  end

  test "should destroy actionable" do
    assert_difference('Actionable.count', -1) do
      delete :destroy, id: @actionable
    end

    assert_redirected_to actionables_path
  end
end

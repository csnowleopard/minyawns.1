require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { business_id: @job.business_id, description: @job.description, ending_date: @job.ending_date, ending_time: @job.ending_time, location: @job.location, name: @job.name, num_minyawns: @job.num_minyawns, starting_date: @job.starting_date, starting_time: @job.starting_time, wage: @job.wage }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    patch :update, id: @job, job: { business_id: @job.business_id, description: @job.description, ending_date: @job.ending_date, ending_time: @job.ending_time, location: @job.location, name: @job.name, num_minyawns: @job.num_minyawns, starting_date: @job.starting_date, starting_time: @job.starting_time, wage: @job.wage }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end

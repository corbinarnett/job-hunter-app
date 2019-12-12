require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get jobs_url, as: :json
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post jobs_url, params: { job: { applied: @job.applied, company: @job.company, contacts: @job.contacts, link: @job.link, list_id: @job.list_id, location: @job.location, next_steps: @job.next_steps, notes: @job.notes, position: @job.position } }, as: :json
    end

    assert_response 201
  end

  test "should show job" do
    get job_url(@job), as: :json
    assert_response :success
  end

  test "should update job" do
    patch job_url(@job), params: { job: { applied: @job.applied, company: @job.company, contacts: @job.contacts, link: @job.link, list_id: @job.list_id, location: @job.location, next_steps: @job.next_steps, notes: @job.notes, position: @job.position } }, as: :json
    assert_response 200
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete job_url(@job), as: :json
    end

    assert_response 204
  end
end

class JobsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    current_user.jobs.create(job_params)
    redirect_to root_path
  end

  private

  def job_params
    params.require(:job).permit(:username, :work, :rate, :contact)
  end
end

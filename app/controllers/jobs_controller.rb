class JobsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    Job.create(job_params)
    redirect_to root_path
  end

  private

  def job_params
    params.require(:job).permit(:username, :work, :rate, :contact)
  end
  # def index
  # @jobs = Job.search(params[:search])
  # end

end

class JobsController < ApplicationController

  def index
    @jobs = Job.all
    render json: @jobs
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      render json: @job, status: :created
    else
      render json: { errors: @job.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private

  def job_params
    params.require(:job).permit(:title, :category, :salary)
  end

end

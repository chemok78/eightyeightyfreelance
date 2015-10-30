class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_employer!, except: [:index, :show] #Authenticate employer signed in before able to make edits (Not the right employer yet, just signed in or not / can still see the links in the views)

  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = current_employer.jobs.build
  end

  def edit
  end

  def create
    @job = current_employer.jobs.build(job_params)
      if @job.save
        redirect_to @job, notice: 'Job was successfully created.' 
      else
        render :new 
      end
  end

  def update
      if @job.update(job_params)
        redirect_to @job, notice: 'Job was successfully updated.' 
      else
        render :edit 
      end
  end


  def destroy
    @job.destroy
      redirect_to jobs_url, notice: 'Job was successfully destroyed.' 
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end
    
    def correct_employer
      @job = current_employer.jobs.find_by(id: params[:id]) #check through current_employer is can find the job, if not redirect to jobs_path
    end

    
    def job_params
      params.require(:job).permit(:description, :place, :length, :function, :company, :educationlevel, :yearsexperience, :field1, :field2, :hourlyrate, :region, :field2)
    end
end

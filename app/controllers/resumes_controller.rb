class ResumesController < ApplicationController
  before_action :resume_set, only: [:edit, :show,:update,:destroy]

  def index
      @resumes= Resume.all.order("id DESC")
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user_id = current_speaker.id
      if @resume.save
        redirect_to root_path
      else
        render :new
      end
  end

  def show
  end

  private
  
  def resume_params
    params.require(:resume).permit(:introduction,:image,:category_id,:prefecture_id,:price).merge(user_id: current_speaker.id)
  end

  def resume_set
    @resume = Resume.find(params[:id])
    @resume.user_id = current_speaker.id
    @speaker = Speaker.find_by(id: @resume.user_id)
  end

end

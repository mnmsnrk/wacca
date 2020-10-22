class SpeakerAccountsController < ApplicationController
  before_action :authenticate_speaker!

  def show
    @resume = Resume.find_by(params[:id])
    @speaker = Speaker.find_by(params[:id])
  end
end

class SpeakerAccountsController < ApplicationController

  def show
    @resume = Resume.find_by(params[:id])
    @speaker = Speaker.find(params[:id])
  end
end

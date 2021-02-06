class SpeakerAccountsController < ApplicationController
  before_action :authenticate_speaker!

  def show
    @speaker = Speaker.find_by(params[:id])
  end
end

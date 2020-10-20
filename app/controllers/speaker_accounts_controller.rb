class SpeakerAccountsController < ApplicationController
  before_action :authenticate_speaker!

  def show
    @speaker = Speaker.find(params[:id])
  end
end

class SpeakerAccountsController < ApplicationController
  before_action :authenticate_speaker!

  # def index
  #   @speaker = Speaker.all
  # end

  def show
    @speaker = Speaker.find(params[:id])
  end
end

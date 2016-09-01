class FeedbackController < ApplicationController
  def index
  end

  def create
    render plain: params[:feedback].inspect
  end
end

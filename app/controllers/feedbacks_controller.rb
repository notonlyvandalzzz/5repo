class FeedbacksController < ApplicationController
  def new
  end

  def create
    render plain: params[:feedback].inspect
  end
end

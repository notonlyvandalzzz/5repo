class FeedbacksController < ApplicationController
  def new
  end

  def create
  #  render plain: params[:feedback].inspect
    @feedback = Feedback.new(feedback_params)
    @feedback.save
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :content) 
  end

end

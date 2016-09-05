class FeedbacksController < ApplicationController
  def new
  end

  def create
  #  render plain: params[:feedback].inspect
    @feedback = Feedback.new(feedback_params)
    if @feedback.valid?
      @feedback.save
    else
      render action: 'new'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :content) 
  end

end

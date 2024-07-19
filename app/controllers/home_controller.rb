class HomeController < ApplicationController
  def scene_1
    @textdb = User.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: { status: 'success', message: 'Message saved successfully' }
    else
      render json: { status: 'error', message: 'Failed to save message' }
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def title
  end

  def scene_2
  end
end

class HomeController < ApplicationController
  def scene_1
    @user_input_message = Userinput.new
  end

  def title
  end

  def scene_2
  end

  def create
    @user_input_message = Userinput.new(message_params)
    if @user_input_message.save
      flash[:success] = "ユーザを登録しました"
      # redirect_to @user_input_message
      render :scene_1
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :scene_1
    end
  end

  def index
    @user_input_message = Userinput.all
  end

  private

  def message_params
    params.require(:user_input_message).permit(:input)
  end
end

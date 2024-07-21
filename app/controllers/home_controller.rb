class HomeController < ApplicationController
  def scene_1
    @user_input_message = Answer.new
  end

  def title
  end

  def scene_2
  end

  def AddInput
    # @user_input_message = Userinput.new(message_params)
    @user_input_message = Answer.new(message_params)
    # @user_input_message.update(username: @user_input_name)
    # @user_input_message.username ||= @user_input_name
    @user_input_name = Answer.last
    @user_input_message.username = @user_input_name.username
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
    Answer.all
  end

  def clear_datebase
    Answer.destroy_all
    @user_input_name = Answer.new(name_params)
    # @user_input_message.id = "1"
    if @user_input_name.save
      flash[:success] = "ユーザを登録しました"
      # redirect_to @user_input_message
      render :scene_1
    else
      flash[:danger] = "ユーザの登録に失敗しました"
      render :scene_1
    end
  end

  private

  def name_params
    params.require(:user_input_name).permit(:username, :input)
  end

  def message_params
    params.require(:user_input_message).permit(:username, :input)
  end

end

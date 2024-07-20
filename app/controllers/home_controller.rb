class HomeController < ApplicationController
  def scene_1
    @user_input_message = Userinput.new
  end

  def title
  end

  def scene_2
  end

  def AddInput
    # @user_input_message = Userinput.new(message_params)
    @user_input_message = Userinput.new(message_params)
    @user_input_message.update(name: @user_input_name)
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
    Userinput.all
  end

  def clear_datebase
    Userinput.destroy_all
    @user_input_name = Userinput.new(name_params)
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
    params.require(:user_input_name).permit(:input, :name)
  end

  def message_params
    params.require(:user_input_message).permit(:input, :name)
  end

end

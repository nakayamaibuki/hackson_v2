class HomeController < ApplicationController
  def scene_1
    @user_input_message = Answer.new
  end

  def title
  end

  def scene_2
  end

  def fb
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

  # def AddQid
  #   # @user_input_message = Userinput.new(message_params)
  #   @Q_id = Answer.new(q_id_params)
  #   # @user_input_message.update(username: @user_input_name)
  #   # @user_input_message.username ||= @user_input_name
  #   @user_input = Answer.last
  #   # logger.debug "q_idをログに出力: #{@user_input_message.q_id}" 
  #   @user_input.update(q_id: @Q_id.q_id)
  #   if @user_input.save
  #     flash[:success] = "ユーザを登録しました"
  #     # redirect_to @user_input_message
  #     render :scene_1
  #   else
  #     flash[:danger] = "ユーザの登録に失敗しました"
  #     render :scene_1
  #   end
  # end

  def manner_point
    @Manner_Point.Answer.new(manner_point_params)
    # @user_input_message.username ||= @user_input_name
    @user_input = Answer.last
    @manner_point = parms[:manner_point]
  end

  private

  def name_params
    params.require(:user_input_name).permit(:username, :input)
  end

  def message_params
    params.require(:user_input_message).permit(:username, :input, :q_id)
  end

  def manner_point_params
    params.require(:Manner_Point).permit(:manner_point)
  end

  def q_id_params
    params.require(:Q_id).permit(:q_id)
  end

end

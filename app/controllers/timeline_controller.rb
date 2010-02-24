class TimelineController < ApplicationController
  def show
    @user = User.find_by_login(params[:login])
    @whispers = Whisper.find_all_by_user_id(@user.id)
  end

end

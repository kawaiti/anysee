class TimelineController < ApplicationController
  def show
    @user = User.find_by_login(params[:login])
    @whispers = @user.whispers.limit(MAX_WHISPERS).order("created_at desc")
  end

  def show_followings
    @user = @current_user
    @wispers = @user.whispers.limit(MAX_WHISPERS).order("created_at desc")
  end

  def show_public
    @whispers = Whisper.find(:all).limit(MAX_WHISPERS).order("created_at desc")
  end
end

class ActivitiesController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @users = current_user.active_friends
    @users.push(current_user)
    case params[:content] when 'posts'
      @activities = PublicActivity::Activity.where(owner: @users, trackable_type: "Post").order('created_at DESC')
    else
      @activities = PublicActivity::Activity.where(owner: @users).order('created_at DESC')
    end
  end

end
class PagesController < ApplicationController
  def home
    redirect_to activities_path if current_user
  end

end

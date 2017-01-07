class ApplicationController < ActionController::Base
	helper_method :request_count
  protect_from_forgery with: :exception

  def request_count
  current_user.pending_friend_requests_from(&:friend).size
  end
end

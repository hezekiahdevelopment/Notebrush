module UsersHelper
	def action_buttons(user)
		case current_user.friendship_status(user) when "friends"
			"remove Friendship"
		when "pending"
			"Canel Request"
		when "requested"
			"Accept or Deny"
		when "not_friends"
			"Add as a Friend"
	end
end
end
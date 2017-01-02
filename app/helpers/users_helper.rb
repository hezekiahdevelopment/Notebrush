module UsersHelper
	def action_buttons(user)
		case current_user.friendship_status(user) when "friends"
			link_to "Unfollow", friendship_path(current_user.friendship_relation(user)), method: :delete
		when "pending"
			link_to "Cancel Follow Request", friendship_path(current_user.friendship_relation(user)), method: :delete
		when "requested"
			"Accept or Deny"
		when "not_friends"
			link_to "Follow", friendships_path(user_id: user.id), method: :post
	end
end
end
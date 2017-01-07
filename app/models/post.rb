class Post < ApplicationRecord
	include PublicActivity::Model
	belongs_to :user
	validate_presence_of :user_id
	validate_presence_of :content


	auto_html_for :content
		html_escape
		image
		youtube(width: "100%", height: 400, autoplay: false)
		link target: "_blank", rel: "nofollow"
		
	end
end

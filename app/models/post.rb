class Post < ApplicationRecord
	def self.search(search)
		if search
			post = Post.find_by(name: title)
			if post
				self.where(comment: post)
			else
				Post.all
			end
		else
			Post.all
		end
end
end

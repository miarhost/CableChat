module ApplicationHelper
	def gravatar_for (user, opts = {})
		opts[:alt] = user.name
		image_tag "https://www.gravatar.com/avatar
	/#{Digest::MDS.hexdigest(user.email)}?s=#{opts.delete(:size) {40 }}",
	 opts
end
end

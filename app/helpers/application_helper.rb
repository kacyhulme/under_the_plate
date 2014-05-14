module ApplicationHelper	
	def page_title
		if content_for?(:title)
			"#{params[:controller].capitalize} - #{content_for(:title)}"
		else
			"#{params[:controller].capitalize}"
		end
	end
end


module ApplicationHelper	
	def page_title
		if content_for?(:title)
			"#{params[:controller].capitalize} - #{content_for(:title)}"
		elsif custom_title 
			custom_title
		else
			"#{params[:controller].capitalize}"
		end
	end

	def custom_title
		"Under the Plate"
	end
end


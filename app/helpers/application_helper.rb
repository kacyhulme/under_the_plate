module ApplicationHelper	
	def page_title
		if content_for?(:title)
			"Healthy For Real - #{content_for(:title)}"
		else
			"Healthy For Real"
		end
	end

	# def custom_title
	# 	"Under the Plate"
	# end
end


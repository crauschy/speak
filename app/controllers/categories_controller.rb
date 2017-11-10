class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		# PUT INTO MODEL AS CATEGORIES_RENDER METHOD
		cols = 1
		rows = 1
		@html = ""
		@categories.each do |category|
			if category.name != "Keyboard"
				if cols == 1
					@html = "<div class='row words-row categories-row row-#{rows}'>"
				end
				@html += "<div class='col-md-1 col-#{cols} words-col categories-col'>"
				@html += "#{category.name}"
				# @html += "<img src='#{category.img_src}' alt='Icon'/>"
				@html += "</div>"
			end
			if (cols == 12 || @categories.last.name == category.name)
				@html += "</div>"
				cols = 0
				rows += 1
			end
			cols += 1
		end
		if request.xhr?
			render json: { HTML: @html }
		else
			@html
		end
	end


end
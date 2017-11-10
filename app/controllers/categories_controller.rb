class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		# PUT INTO MODEL AS CATEGORIES_RENDER METHOD
		cols = 1
		rows = 1
		@html = ""
		@categories.each do |category|
			if cols == 1
				@html = "<div class='row words-row categores-row row-#{rows}'>"
			end
			@html += "<div class='col-md-1 col-#{cols} words-col categories-col'>"
			@html += "#{category.name}"
			# @html += "<br>IMAGE PATH"
			@html += "</div>"
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
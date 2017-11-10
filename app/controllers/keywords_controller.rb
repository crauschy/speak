class KeywordsController < ApplicationController

	def index
		@category = Category.find_by(name: params[:category_id])
		@keywords = @category.keywords
		# PUT INTO MODEL AS KEYWORDS_RENDER METHOD
		cols = 1
		rows = 1
		@html = ""
		@keywords.each do |keyword|
			if cols == 1
				@html += "<div class='row words-row keywords-row row-#{rows}'>"
			end
			@html += "<div class='col-md-1 col-#{cols} words-col keywords-col'>"
			@html += "#{keyword.word}"
			@html += "<img src='/assets/icons/#{keyword.img_src}', alt='Icon', height='40px'>"
			@html += "</div>"

			if cols == 12
				@html += "</div>"
				cols = 0
				rows += 1
			end
			cols += 1
		end
		render json: { HTML: @html }
	end


end
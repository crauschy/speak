class KeywordsController < ApplicationController

	def index
		p params
		@category = Category.find_by(name: params[:category_id])
		@keywords = @category.keywords
		@html = render_to_string("partials/_keywords_render", layout: false)
		render json: { html: @html }
	end


end

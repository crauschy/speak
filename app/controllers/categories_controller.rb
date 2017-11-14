class CategoriesController < ApplicationController
	def index
		@categories = Category.all
		if request.xhr?
			render json: { html: render_to_string("partials/_categories_render", layout: false) }
		end
	end
end

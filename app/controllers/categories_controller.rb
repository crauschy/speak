class CategoriesController < ApplicationController
	def index
		@categories = Category.where.not(name: 'Keyboard')
		if session[:user_id]
			@user = User.find_by(id: session[:user_id])
			@most_used = @user.phrases.order(count: :desc)[0..2]
			@most_recent = @user.phrases.order(updated_at: :desc)[0..2]
		end
		if request.xhr?
			render json: { html: render_to_string("partials/_categories_render", layout: false) }
		end
	end
end

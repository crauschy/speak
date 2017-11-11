class KeywordsController < ApplicationController

	def index
		@category = Category.find_by(name: params[:category_id])
		@keywords = @category.keywords
		@html = render_to_string("partials/_keywords_render", layout: false)
		render json: { html: @html }
	end

  def show
    @keyword = Keyword.find_by(word: params[:id])

    @html = render_to_string("partials/_keyword_render", layout: false)
    render json: { html: @html }
  end



end

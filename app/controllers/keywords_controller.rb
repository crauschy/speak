class KeywordsController < ApplicationController

	def index

		@category = Category.find_by(name: params[:category_id])
		@keywords = @category.keywords
		@html = render_to_string("partials/_keywords_render", layout: false)
		render json: { html: @html }
	end

  def show
  	@html = ""
  	words = params[:id].split(",")
  	words.each do |word|
	    @keyword = Keyword.find_by(word: word)
	    @category = @keyword.categories

	    @html += render_to_string("partials/_keyword_render", layout: false)
	end
	render json: { html: @html }
  end



end

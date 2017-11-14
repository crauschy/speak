class KeywordsController < ApplicationController

	def index

		@category = Category.find_by(name: params[:category_id])
		@keywords = @category.keywords
		@html = render_to_string("partials/_keywords_render", layout: false)
		render json: { html: @html }
	end

  def new
    @keyword = Keyword.new
  end

  def create
    binding.pry
    new_word = Keyword.create(word: params[:keyword][:word], user_id: session[:user_id])
    Cloudinary::Uploader.upload(params[:keyword][:img_src], :public_id => "#{session[:user_id]}-#{new_word.id}")
    new_word.img_src = "#{session[:user_id]}-#{new_word.id}"
    category = Category.find_by(name: "Nature")
    new_word.save
    new_word.categories << category
    binding.pry
    redirect_to root_path
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

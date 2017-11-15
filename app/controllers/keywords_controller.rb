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
    @keyword = Keyword.create(keyword_params)
    @keyword.user_id = session[:user_id]
    if params[:keyword][:img_src]
      @keyword.img_src = cloudinary_img
    end
    @keyword.categories << update_categories
    @keyword.save
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

  def destroy
    @keyword = Keyword.find_by(word: params[:data], user_id: session[:user_id])
    @keyword.destroy
  end

end





def cloudinary_img
  if params[:keyword][:img_src]
    Cloudinary::Uploader.upload(params[:keyword][:img_src], :public_id => "#{session[:user_id]}-#{@keyword.id}")
    return "#{session[:user_id]}-#{@keyword.id}"
  else
    return false
  end
end





private

def keyword_params
    params.require(:keyword).permit(:word, :img_src, :category)
end



def update_categories
  return Category.find(params[:keyword][:categories])
end



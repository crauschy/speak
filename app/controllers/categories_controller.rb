class CategoriesController < ApplicationController
	def index
		@categories = Category.all
    # @most_used_phrases = Phrase.where(user_id: session[:user_id]).order(count: :DESC)[0..1]
    # @most_used = []
    # @most_used_phrases.each do |phrase|
    #   @most_used_keywords = []
    #   phrase.sentence.each do |word|
    #     @most_used_keywords << Keyword.find_by(word: word)
    #   end
    #   @most_used << @most_used_keywords
    # end

    @most_recent_phrases = Phrase.where(user_id: session[:user_id]).order(count: :DESC)[0..1]
    @most_recent = []
    @most_recent_phrases.each do |phrase|
      @most_recent_keywords = []
      phrase.sentence.each do |word|
        @most_recent_keywords << Keyword.find_by(word: word)
      end
      @most_recent << @most_recent_keywords
    end

		if request.xhr?
			render json: { html: render_to_string("partials/_categories_render", layout: false) }
		end
	end


  def new
   @category = Category.new
  end

  # def create
  #   new_category = Category.create(name: params[:category][:name], user_id: session[:user_id])
  #   Cloudinary::Uploader.upload(params[:category][:img_src], :public_id => "#{session[:user_id]}-#{new_category.id}-Category")
  #   new_category.img_src = "#{session[:user_id]}-#{new_category.id}-Category"
  #   new_category.save
  #   redirect_to root_path
  # end

  def create
    @category = Category.create(category_params)
    @category.user_id = session[:user_id]
    if params[:category][:img_src]
      @category.img_src = cat_cloudinary_img
    end
    @category.save
    redirect_to user_path(session[:user_id])  end



  def destroy
    @category = Category.find_by(name: params[:data], user_id: session[:user_id])
    @category.destroy
  end


end



def cat_cloudinary_img
  if params[:category][:img_src]
    Cloudinary::Uploader.upload(params[:category][:img_src], :public_id => "D2#{session[:user_id]}-#{@category.id}-Category")
    return "D2#{session[:user_id]}-#{@category.id}-Category"
  else
    return false
  end
end


private

def category_params
    params.require(:category).permit(:name, :img_src)
end





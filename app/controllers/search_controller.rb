class SearchController < ApplicationController

  def index
   if params[:query].present?
     @keywords = .search(params[:query])
   else
     @gifts = Gift.all
   end
 end


end
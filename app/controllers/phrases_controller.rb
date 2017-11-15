class PhrasesController < ApplicationController


	def create
		if session[:user_id]
			@phrase_array = params[:phrase].split(" ")
			@phrase = Phrase.find_or_create_by(sentence: @phrase_array, user_id: session[:user_id])
			@phrase.count += 1
			@phrase.save!
			@most = []
			@phrase.sentence.each do |keyword|
				@keyword = Keyword.find_by(word: keyword)
				@most << @keyword
			end
			render json: { 
				html: render_to_string(
					partial: "partials/most", 
					layout: false, 
					locals: { most: [@most] }) 
			}
		end
	end


end
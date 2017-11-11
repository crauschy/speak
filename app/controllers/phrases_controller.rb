class PhrasesController < ApplicationController


	def create
		if session[:user_id]
			@phrase_array = params[:phrase].split(" ")
			@phrase = Phrase.find_or_create_by(sentence: @phrase_array, user_id: session[:user_id])
			@phrase.count += 1
			@phrase.save!
			@most = [@phrase]
			@html = render_to_string("partials/_most", layout: false)
			render json: { html: @html }
		end
	end


end
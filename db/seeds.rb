data = {Food: ["pizza", "banana", "carrot", "burger", "bread", "breakfast", "juice", "hotdog", "water", "milk"], People: ["me", "you", "us", "sister", "teacher", "brother", "mom", "dad", "family", "friend", "grandparents"], Emotions: ["happy", "sad", "angry", "scared", "excited", "sick", "love", "nervous", "sleepy"], Colors: ["yellow", "blue", "red", "green", "orange", "purple", "white", "black", "brown", "pink"], Location_Helpers: ["right", "left", "up", "down", "close", "far", "under", "there", "here", "in", "out", "on top of"], Action: ["see", "hear", "get", "go", "stop", "eat", "drink", "walk", "stop", "wash", "play", "open", "close", "touch", "brush", "draw"], Places: ["home", "school", "playground", "outside", "hospital", "restaurant", "park", "room", "bathroom"], Animals: ["dog", "cat", "horse", "fish", "turtle", "bird", "bunny", "pig", "chicken", "horse"], Adjectives: ["hot", "cold", "wet", "loud", "quiet", "dry", "hard", "soft", "dirty", "clean", "big", "little"], Nature: ["trees", "flower", "sun", "moon", "cloud", "leaves", "grass", "stars", "rain"], Text: ["want", "help", "need", "I am", "please", "thank you", "you are", "what", "where", "when", "yes", "no"], Keyboard: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "?", "$", "!", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "~", "%", "A", "S", "D", "F", "G", "H", "J", "K", "L", "%", "&", "/", "Z", "X", "C", "V", "B", "N", "M"]}

data.each do |category, keyword|

	category_object = Category.create(name: category, img_src: "#{category}.png")
	i = 0
	while i < keyword.length
		keyword_object = Keyword.create(word: keyword[i], img_src: "#{keyword[i]}.png")
		keyword_object.categories << category_object
		i += 1
	end

end
data = {Food: ["pizza", "banana", "carrot", "burger", "bread", "breakfast", "juice", "hotdog", "water", "milk"], People: ["i", "you", "us", "sister", "teacher", "brother", "mom", "dad", "family", "friends", "grandparents"], Emotions: ["happy", "sad", "angry", "scared", "excited", "sick", "love", "nervous", "sleepy"], Colors: ["yellow", "blue", "red", "green", "orange", "purple", "white", "black", "brown", "pink"], Location_Helpers: ["right", "left", "up", "down", "closed", "far", "under", "there", "here", "inside_of", "outside_of", "on_top_of"], Action: ["see", "hear", "get", "go", "stop", "eat", "drink", "walk", "stop", "wash", "toilet", "play", "open", "close", "touch", "brush", "draw"], places: ["home", "school", "playground", "outside", "hospital", "restaurant", "park", "room", "bathroom"], Animals: ["dog", "cat", "horse", "fish", "turtle", "bird", "bunny", "pig", "chicken", "horse"], Adjectives: ["hot", "cold", "loud", "quiet", "wet", "dry", "hard", "soft", "dirty", "clean", "big", "little"], Nature: ["trees", "flower", "sun", "moon", "cloud", "leaves", "grass", "stars", "rain"], Text: ["want", "help", "need", "I_am", "please", "thank_you", "you_are", "what", "where", "when", "yes", "no"], Keyboard: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "$", "!", "Q", "W", "E", "R", "T", "Y", "U", "I_", "O", "P", "%", "A", "S", "D", "F", "G", "H", "J", "K", "L", "&", "Z", "X", "C", "V", "B", "N", "M"]}

data.each do |category, keyword|

	category_object = Category.create(name: category, img_src: "#{category}.png")
	i = 0
	while i < keyword.length
		keyword_object = Keyword.create(word: keyword[i], img_src: "#{keyword[i]}.png")
		keyword_object.categories << category_object
		i += 1
	end

end

vinnie = User.create(name: "Vinnie", username: "VinnieLu", email: "lu.vinnie@gmail.com", password: "password", gender: "male")
Phrase.create(sentence: ["home", "school", "playground", "outside", "hospital"], count: 1, user_id: 1)
Phrase.create(sentence: ["see", "hear", "get", "go", "stop", "eat"], count: 1, user_id: 1)
Phrase.create(sentence: ["yellow", "blue", "red", "green", "orange"], count: 1, user_id: 1)
Phrase.create(sentence: ["cloud", "leaves", "grass", "stars", "rain"], count: 1, user_id: 1)

chris = User.create(name: "Chris", username: "ChrisFriedman", email: "friedman.chris@gmail.com", password: "password", gender: "male")
Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 2)
Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 2)
Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 2)
Phrase.create(sentence: ["toilet", "play", "open", "close", "touch"], count: 1, user_id: 2)

gaby = User.create(name: "Gaby", username: "GabyRamirez", email: "ramirez.gaby@gmail.com", password: "password", gender: "female")
Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)
Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 3)
Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 3)
Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)

cate = User.create(name: "Cate", username: "CateRauschenberger", email: "rauschenberger.cate@gmail.com", password: "password", gender: "female")
Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)
Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 3)
Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 3)
Phrase.create(sentence: ["bunny", "pig", "chicken", "horse"], count: 1, user_id: 4)



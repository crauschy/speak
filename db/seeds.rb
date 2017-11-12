Category.create(name: "Common", img_src: "common.png")
Category.create(name: "People", img_src: "food.png")
Category.create(name: "Actions", img_src: "Actions.png")
Category.create(name: "Feelings", img_src: "Feelings.png")
Category.create(name: "Animals", img_src: "Animals.png")
Category.create(name: "Bathroom", img_src: "$.png")
Category.create(name: "Nature", img_src: "Nature.png")
Category.create(name: "Play", img_src: "play.png")
Category.create(name: "Sense", img_src: "common.png")
Category.create(name: "Food", img_src: "food.png")
Category.create(name: "Places", img_src: "places.png")
Category.create(name: "Describe", img_src: "describe.png")
Category.create(name: "Colors", img_src: "Colors.png")
Category.create(name: "Prepositions", img_src: "common.png")
Category.create(name: "Numbers", img_src: "$.png")
Category.create(name: "Time", img_src: "$.png")
Category.create(name: "Chat", img_src: "$.png")
Category.create(name: "Actions", img_src: "food.png")
Category.create(name: "Little Words", img_src: "Q.png")
Category.create(name: "Question Words", img_src: "Q.png")


def create_keyword(word_data)
 new_word = Keyword.create(word: word_data[0], img_src: word_data[1])
 category = Category.find_by(name: word_data[2])
 new_word.categories << category
end


words_list = [
["I", "I.png", "Common"],
["you", "you.png", "Common"],
["us", "us.png", "Common"],
["angry", "angry.png", "Feelings"],
["banana", "banana.png", "Food"],
["bathroom", "$.png", "Places"],
["big", "big.png", "Describe"],
["bird", "bird.png", "Animals"],
["black", "black.png", "Colors"],
["blue", "blue.png", "Colors"],
["bread", "bread.png", "Food"],
["breakfast", "breakfast.png", "Food"],
["brother", "brother.png", "People"],
["brown", "brown.png", "Colors"],
["rabbit", "bunny.png", "Animals"],
["burger", "burger.png", "Food"],
["carrot", "carrot.png", "Food"],
["cat", "cat.png", "Animals"],
["chicken", "chicken.png", "Animals"],
["clean", "clean.png", "Describe"],
["closed", "closed.png", "Common"],
["cold", "cold.png", "Common"],
["dad", "dad.png", "People"],
["dirty", "dirty.png", "Common"],
["dog", "dog.png", "Animals"],
["down", "down.png", "Common"],
["draw", "draw.png", "Actions"],
["drink", "drink.png", "Common"],
["dry", "dry.png", "Describe"],
["eat", "eat.png", "Common"],
["excited", "excited.png", "Feelings"],
["family", "family.png", "People"],
["far", "far.png", "Describe"],
["fish", "fish.png", "Animals"],
["food", "food.png", "Food"],
["friends", "friends.png", "People"],
["get", "get.png", "Common"],
["get", "get.png", "Actions"],
["go", "go.png", "Common"],
["go", "go.png", "Actions"],
["grandparents", "grandparents.png", "People"],
["green", "green.png", "Colors"],
["happy", "happy.png", "Feelings"],
["hard", "hard.png", "Describe"],
["hear", "hear.png", "Sense"],
["help", "help.png", "Common"],
["here", "here.png", "Common"],
["home", "home.png", "Places"],
["horse", "horse.png", "Animals"],
["hospital", "hospital.png", "Places"],
["hot", "hot.png", "Common"],
["hot", "hot.png", "Describe"],
["hotdog", "hotdog.png", "Food"],
["juice", "juice.png", "Food"],
["I am", "I_am.png", "Common"],
["left", "left.png", "Common"],
["little", "little.png", "Describe"],
["loud", "loud.png", "Describe"],
["love", "love.png", "Feelings"],
["milk", "milk.png", "Food"],
["mom", "mom.png", "People"],
["need", "need.png", "Common"],
["need", "need.png", "Little Words"],
["nervous", "nervous.png", "Feelings"],
["no", "no.png", "Common"],
["on top of", "on_top_of.png", "Prepositions"],
["open", "open.png", "Common"],
["open", "open.png", "Prepositions"],
["orange", "orange.png", "Colors"],
["outside", "outside.png", "Places"],
["outside of", "outside_of.png", "Prepositions"],
["parents", "parents.png", "People"],
["park", "park.png", "Places"],
["pig", "pig.png", "Animals"],
["pizza", "pizza.png", "Food"],
["playground", "playground.png", "Places"],
["please", "please.png", "Common"],
["thank you", "thank_you.png", "Common"],
["purple", "purple.png", "Colors"],
["quiet", "quiet.png", "Describe"],
["red", "red.png", "Colors"],
["restaurant", "restaurant.png", "Places"],
["right", "right.png", "Common"],
["sad", "sad.png", "Feelings"],
["scared", "scared.png", "Feelings"],
["school", "school.png", "Places"],
["see", "see.png", "Sense"],
["sick", "sick.png", "Sense"],
["sister", "sister.png", "People"],
["sleepy", "sleepy.png", "Feelings"],
["soft", "soft.png", "Describe"],
["stop", "stop.png", "Common"],
["teacher", "teacher.png", "People"],
["there", "there.png", "Common"],
["there", "there.png", "Prepositions"],
["toilet", "toilet.png", "Bathroom"],
["touch", "touch.png", "Sense"],
["turtle", "turtle.png", "Animals"],
["under", "under.png", "Prepositions"],
["up", "up.png", "Common"],
["us", "us.png", "People"],
["walk", "walk.png", "Actions"],
["want", "want.png", "Common"],
["wash", "wash.png", "Actions"],
["wash", "wash.png", "Bathroom"],
["water", "water.png", "Food"],
["wet", "wet.png", "Describe"],
["what", "what.png", "Common"],
["when", "when.png", "Common"],
["where", "where.png", "Common"],
["white", "white.png", "Colors"],
["yellow", "yellow.png", "Colors"],
["you are", "you_are.png", "Little Words"],
["you", "you.png", "People"],
["turn", "$.png", "Actions"],
["look", "$.png", "Actions"],
["find", "$.png", "Actions"],
["open", "$.png", "Actions"],
["want", "$.png", "Actions"],
["say", "$.png", "Actions"],
["come", "$.png", "Actions"],
["like", "$.png", "Actions"],
["work", "$.png", "Actions"],
["make", "$.png", "Actions"],
["color", "$.png", "Actions"],
["stop", "$.png", "Actions"],
["see", "$.png", "Actions"],
["put", "$.png", "Actions"],
["close", "$.png", "Actions"],
["drink", "$.png", "Actions"],
["help", "help.png", "Actions"],
["need", "need.png", "Actions"],
["tell", "$.png", "Actions"],
["read", "$.png", "Actions"],
["feel", "$.png", "Actions"],
["let's", "$.png", "Actions"],
["play", "play.png", "Actions"],
["on", "$.png", "Prepositions"],
["off", "$.png", "Prepositions"],
["in", "$.png", "Prepositions"],
["out", "$.png", "Prepositions"],
["up", "$.png", "Prepositions"],
["to", "$.png", "Prepositions"],
["under", "$.png", "Prepositions"],
["out", "$.png", "Prepositions"],
["down", "$.png", "Prepositions"],
["with", "$.png", "Prepositions"],
["this", "$.png", "Common"],
["that", "$.png", "Common"],
["some", "$.png", "Common"],
["all", "$.png", "Common"],
["the", "$.png", "Little Words"],
["of", "$.png", "Little Words"],
["to", "$.png", "Little Words"],
["and", "$.png", "Little Words"],
["a", "$.png", "Little Words"],
["in", "$.png", "Little Words"],
["is", "$.png", "Little Words"],
["it", "$.png", "Little Words"],
["that", "$.png", "Little Words"],
["for", "$.png", "Little Words"],
["from", "$.png", "Little Words"],
["or", "$.png", "Little Words"],
["as", "$.png", "Little Words"],
["with", "$.png", "Little Words"],
["be", "$.png", "Little Words"],
["am", "$.png", "Little Words"],
["at", "$.png", "Little Words"],
["be", "$.png", "Little Words"],
["was", "$.png", "Little Words"],
["do", "$.png", "Little Words"],
["can", "$.png", "Little Words"],
["will", "$.png", "Little Words"],
["is", "$.png", "Little Words"],
["are", "$.png", "Little Words"],
["were", "$.png", "Little Words"],
["did", "$.png", "Little Words"],
["have", "$.png", "Little Words"],
["but", "$.png", "Little Words"],
["what", "$.png", "Question Words"],
["what", "$.png", "Question Words"],
["where", "$.png", "Question Words"],
["why", "$.png", "Question Words"],
["when", "$.png", "Question Words"],
["who", "$.png", "Question Words"],
["how", "$.png", "Question Words"],
["me", "$.png", "People"],
["mine", "$.png", "People"],
["she", "$.png", "People"],
["they", "$.png", "People"],
["we", "$.png", "People"],
["he", "$.png", "People"],
["1", "1.png", "Numbers"],
["2", "2.png", "Numbers"],
["3", "3.png", "Numbers"],
["4", "4.png", "Numbers"],
["5", "5.png", "Numbers"],
["6", "6.png", "Numbers"],
["7", "7.png", "Numbers"],
["8", "8.png", "Numbers"],
["9", "9.png", "Numbers"],
["first", "$.png", "Numbers"],
["second", "$.png", "Numbers"],
["third", "$.png", "Numbers"],
["fourth", "$.png", "Numbers"],
["fifth", "$.png", "Numbers"],
["last", "$.png", "Numbers"],



]


words_list.each do |word|
  create_keyword(word)
end


# data = Food: ["pizza", "banana", "carrot", "burger", "bread", "breakfast", "juice", "hotdog", "water", "milk"], People: ["i", "you", "us", "sister", "teacher", "brother", "mom", "dad", "family", "friends", "grandparents"], Emotions: ["happy", "sad", "angry", "scared", "excited", "sick", "love", "nervous", "sleepy"], Colors: ["yellow", "blue", "red", "green", "orange", "purple", "white", "black", "brown", "pink"], Location_Helpers: ["right", "left", "up", "down", "closed", "far", "under", "there", "here", "inside_of", "outside_of", "on_top_of"], Action: ["see", "hear", "get", "go", "stop", "eat", "drink", "walk", "stop", "wash", "toilet", "play", "open", "close", "touch", "brush", "draw"], Places: ["home", "school", "playground", "outside", "hospital", "restaurant", "park", "room", "bathroom"], Animals: ["dog", "cat", "horse", "fish", "turtle", "bird", "bunny", "pig", "chicken", "horse"], Adjectives: ["hot", "cold", "loud", "quiet", "wet", "dry", "hard", "soft", "dirty", "clean", "big", "little"], Nature: ["trees", "flower", "sun", "moon", "cloud", "leaves", "grass", "stars", "rain"], Text: ["want", "help", "need", "I_am", "please", "thank_you", "you_are", "what", "where", "when", "yes", "no"], Keyboard: ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "$", "!", "Q", "W", "E", "R", "T", "Y", "U", "I_", "O", "P", "%", "A", "S", "D", "F", "G", "H", "J", "K", "L", "&", "Z", "X", "C", "V", "B", "N", "M"]}





# data.each do |category, keyword|

# 	category_object = Category.create(name: category, img_src: "#{category}.png")
# 	i = 0
# 	while i < keyword.length
# 		keyword_object = Keyword.create(word: keyword[i], img_src: "#{keyword[i]}.png")
# 		keyword_object.categories << category_object
# 		i += 1
# 	end

# end

# vinnie = User.create(name: "Vinnie", username: "VinnieLu", email: "lu.vinnie@gmail.com", password: "password", gender: "male")
# Phrase.create(sentence: ["home", "school", "playground", "outside", "hospital"], count: 1, user_id: 1)
# Phrase.create(sentence: ["see", "hear", "get", "go", "stop", "eat"], count: 1, user_id: 1)
# Phrase.create(sentence: ["yellow", "blue", "red", "green", "orange"], count: 1, user_id: 1)
# Phrase.create(sentence: ["cloud", "leaves", "grass", "stars", "rain"], count: 1, user_id: 1)

# chris = User.create(name: "Chris", username: "ChrisFriedman", email: "friedman.chris@gmail.com", password: "password", gender: "male")
# Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 2)
# Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 2)
# Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 2)
# Phrase.create(sentence: ["toilet", "play", "open", "close", "touch"], count: 1, user_id: 2)

# gaby = User.create(name: "Gaby", username: "GabyRamirez", email: "ramirez.gaby@gmail.com", password: "password", gender: "female")
# Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)
# Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 3)
# Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 3)
# Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)

# cate = User.create(name: "Cate", username: "CateRauschenberger", email: "rauschenberger.cate@gmail.com", password: "password", gender: "female")
# Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 3)
# Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 3)
# Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 3)
# Phrase.create(sentence: ["bunny", "pig", "chicken", "horse"], count: 1, user_id: 4)

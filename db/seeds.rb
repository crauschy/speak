Category.create(name: "Common", img_src: "common.png")
Category.create(name: "Little Words", img_src: "white.png")
Category.create(name: "Question Words", img_src: "white.png")
Category.create(name: "People", img_src: "People.png")
Category.create(name: "Actions", img_src: "Actions.png")
Category.create(name: "Feelings", img_src: "Feelings.png")
Category.create(name: "Possession", img_src: "white.png")
Category.create(name: "Describe", img_src: "describe.png")
Category.create(name: "Animals", img_src: "Animals.png")
Category.create(name: "Things", img_src: "white.png")
Category.create(name: "Nature", img_src: "Nature.png")
Category.create(name: "Play", img_src: "play.png")
Category.create(name: "Sense", img_src: "white.png")
Category.create(name: "Food", img_src: "foody.png")
Category.create(name: "Places", img_src: "places.png")
Category.create(name: "Colors", img_src: "Colors.png")
Category.create(name: "Prepositions", img_src: "white.png")
Category.create(name: "Numbers", img_src: "white.png")
Category.create(name: "Time", img_src: "white.png")
Category.create(name: "Chat", img_src: "white.png")
Category.create(name: "Bathroom", img_src: "white.png")


def create_keyword(word_data)
 new_word = Keyword.create(word: word_data[0], img_src: word_data[1])
 category = Category.find_by(name: word_data[2])
 new_word.categories << category
end


words_list = [
["not", "white.png", "Common"],
["me", "I.png", "Common"],
["I", "I.png", "Common"],
["you", "you.png", "Common"],
["us", "us.png", "Common"],
["angry", "angry.png", "Feelings"],
["banana", "banana.png", "Food"],
["bathroom", "white.png", "Places"],
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
["dirty", "dirty.png", "Describe"],
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
["food", "foody.png", "Food"],
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
["yes", "yes.png", "Common"],
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
["sick", "sick.png", "Feelings"],
["sister", "sister.png", "People"],
["sleepy", "sleepy.png", "Feelings"],
["soft", "soft.png", "Describe"],
["stop", "stop.png", "Common"],
["teacher", "teacher.png", "People"],
["there", "there.png", "Common"],
["there", "there.png", "Things"],
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
["your", "white.png", "Possession"],
["turn", "white.png", "Actions"],
["look", "white.png", "Actions"],
["find", "white.png", "Actions"],
["open", "white.png", "Actions"],
["want", "white.png", "Actions"],
["say", "white.png", "Actions"],
["said", "white.png", "Actions"],
["come", "white.png", "Actions"],
["like", "white.png", "Actions"],
["work", "white.png", "Actions"],
["make", "white.png", "Actions"],
["color", "white.png", "Actions"],
["stop", "white.png", "Actions"],
["see", "white.png", "Actions"],
["put", "white.png", "Actions"],
["close", "white.png", "Actions"],
["drink", "white.png", "Actions"],
["help", "help.png", "Actions"],
["need", "need.png", "Actions"],
["tell", "white.png", "Actions"],
["read", "white.png", "Actions"],
["feel", "white.png", "Actions"],
["let's", "white.png", "Actions"],
["play", "play.png", "Actions"],
["on", "white.png", "Prepositions"],
["off", "white.png", "Prepositions"],
["in", "white.png", "Prepositions"],
["out", "white.png", "Prepositions"],
["up", "white.png", "Prepositions"],
["to", "white.png", "Prepositions"],
["under", "white.png", "Prepositions"],
["out", "white.png", "Prepositions"],
["down", "white.png", "Prepositions"],
["with", "white.png", "Prepositions"],
["this", "white.png", "Common"],
["that", "white.png", "Common"],
["some", "white.png", "Common"],
["all", "white.png", "Common"],
["the", "white.png", "Little Words"],
["of", "white.png", "Little Words"],
["to", "white.png", "Little Words"],
["and", "white.png", "Little Words"],
["a", "white.png", "Little Words"],
["in", "white.png", "Little Words"],
["is", "white.png", "Little Words"],
["it", "white.png", "Little Words"],
["that", "white.png", "Little Words"],
["for", "white.png", "Little Words"],
["from", "white.png", "Little Words"],
["or", "white.png", "Little Words"],
["as", "white.png", "Little Words"],
["with", "white.png", "Little Words"],
["am", "white.png", "Little Words"],
["at", "white.png", "Little Words"],
["be", "white.png", "Little Words"],
["but", "white.png", "Little Words"],
["was", "white.png", "Little Words"],
["do", "white.png", "Little Words"],
["can", "white.png", "Actions"],
["will", "white.png", "Little Words"],
["is", "white.png", "Little Words"],
["are", "white.png", "Little Words"],
["were", "white.png", "Little Words"],
["did", "white.png", "Little Words"],
["have", "white.png", "Little Words"],
["but", "white.png", "Little Words"],
["what", "white.png", "Question Words"],
["what", "white.png", "Question Words"],
["where", "white.png", "Question Words"],
["why", "white.png", "Question Words"],
["when", "white.png", "Question Words"],
["who", "white.png", "Question Words"],
["how", "white.png", "Question Words"],
["question", "white.png", "Question Words"],
["me", "white.png", "People"],
["mine", "white.png", "Possession"],
["she", "white.png", "People"],
["they", "white.png", "People"],
["we", "white.png", "People"],
["he", "white.png", "People"],
["1", "1.png", "Numbers"],
["2", "2.png", "Numbers"],
["3", "3.png", "Numbers"],
["4", "4.png", "Numbers"],
["5", "5.png", "Numbers"],
["6", "6.png", "Numbers"],
["7", "7.png", "Numbers"],
["8", "8.png", "Numbers"],
["9", "9.png", "Numbers"],
["first", "white.png", "Numbers"],
["second", "white.png", "Numbers"],
["third", "white.png", "Numbers"],
["fourth", "white.png", "Numbers"],
["fifth", "white.png", "Numbers"],
["last", "white.png", "Numbers"],
["some", "white.png", "Numbers"],
["all", "white.png", "Numbers"],
["most", "white.png", "Numbers"],
["none", "white.png", "Numbers"],
["many", "white.png", "Numbers"],
["more", "white.png", "Numbers"],
["less", "white.png", "Numbers"],
["other", "white.png", "Numbers"], ##
["other", "white.png", "Little Words"],
["use", "white.png", "Actions"],
["hello", "white.png", "Chat"],
["good-bye", "white.png", "Chat"],
["yes", "white.png", "Chat"],
["no", "white.png", "Chat"],
["good", "white.png", "Chat"],
["bad", "white.png", "Chat"],
["okay", "white.png", "Chat"],
["how are you", "white.png", "Chat"],
["tired", "white.png", "Feelings"],
["thirsty", "white.png", "Feelings"],
["hungry", "white.png", "Feelings"],
["bored", "white.png", "Feelings"],
["fine", "white.png", "Feelings"],
["people", "white.png", "People"],
["eat", "white.png", "Actions"],
["their", "white.png", "Possession"],
["would", "white.png", "Little Words"],
["her", "white.png", "Possession"],
["his", "white.png", "Possession"],
["my", "white.png", "Possession"],
["about", "white.png", "Prepositions"],
["know", "white.png", "Actions"],
["as", "white.png", "Little Words"],
["now", "white.png", "Time"],
["later", "white.png", "Time"],
["soon", "white.png", "Time"],
["after", "white.png", "Time"],
["before", "white.png", "Time"],
["time", "white.png", "Time"],
["today", "white.png", "Time"],
["yesterday", "white.png", "Time"],
["tomorrow", "white.png", "Time"],
["day", "white.png", "Time"],
["week", "white.png", "Time"],
["year", "white.png", "Time"],
["month", "white.png", "Time"],
["Sunday", "white.png", "Time"],
["Monday", "white.png", "Time"],
["Tuesday", "white.png", "Time"],
["Wednesday", "white.png", "Time"],
["Thursday", "white.png", "Time"],
["Friday", "white.png", "Time"],
["Saturday", "white.png", "Time"],
["Sunday", "white.png", "Time"],
["January", "white.png", "Time"],
["February", "white.png", "Time"],
["March", "white.png", "Time"],
["April", "white.png", "Time"],
["May", "white.png", "Time"],
["June", "white.png", "Time"],
["July", "white.png", "Time"],
["August", "white.png", "Time"],
["September", "white.png", "Time"],
["October", "white.png", "Time"],
["November", "white.png", "Time"],
["December", "white.png", "Time"],
["hour", "white.png", "Time"],
["minute", "white.png", "Time"],
["so", "white.png", "Little Words"],
["think", "white.png", "Actions"],
["which", "white.png", "Question Words"],
["them", "white.png", "People"],
["people", "white.png", "People"],
["take", "white.png", "Actions"],
["into", "white.png", "Prepositions"],
["just", "white.png", "Time"],
["him", "white.png", "People"],
["feel", "white.png", "Sense"],
["smell", "white.png", "Sense"],
["taste", "white.png", "Sense"],
["feel", "white.png", "Sense"],
["balance", "white.png", "Sense"],
["itchy", "white.png", "Sense"],
["could", "white.png", "Little Words"],
["than", "white.png", "Little Words"],
["then", "white.png", "Time"],
["its", "white.png", "Possession"],
["it", "white.png", "Things"],
["word", "white.png", "Things"],
["our", "white.png", "Possession"],
["these", "white.png", "Things"],
["way", "white.png", "Things"],
["also", "white.png", "Little Words"],
["new", "white.png", "Describe"], ######
["because", "white.png", "Common"],
["man", "white.png", "People"],
["find", "white.png", "Actions"],
["here", "white.png", "Things"],
["thing", "white.png", "Things"],
["give", "white.png", "Actions"],
["many", "white.png", "Numbers"],##
["had", "white.png", "Actions"],
["by", "white.png", "Actions"],
["an", "white.png", "Numbers"],
["each", "white.png", "Numbers"],
["if", "white.png", "Little Words"],##
["call", "white.png", "Actions"],
["may", "white.png", "Actions"],
["home", "white.png", "Actions"],
["page", "white.png", "Things"],
["search","white.png", "Actions"],
["free","white.png", "Describe"],
["information","white.png", "Things"],
["site","white.png", "Things"],
["news","white.png", "Things"],
["only","white.png", "Numbers"],##
["contact","contact_lense.png", "Things"],
["contact", "contact.png", "Actions"],
["business","white.png", "Things"],
["web", "web.png", "Things"],
["view", "view.png", "Actions"],
["been", "white.png", "Little Words"],
["click", "click.png", "Actions"],
["press", "press.png", "Actions"],
["price", "price.png", "Things"],
["date", "date_time.png", "Time"],
["date", "date_food.png", "Food"],
["date", "date_action.png", "Actions"],
["sorry", "sorry.png", "Chat"],
["sleep", "sleep.png", "Actions"],
["pull", "pull.png", "Actions"],
["fix", "fix.png", "Actions"],
["broke", "broke.png", "Actions"]
]






words_list.each do |word|
  create_keyword(word)
end






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

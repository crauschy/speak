Category.create(name: "Little Words", img_src: "Little_Words.png")
Category.create(name: "Question Words", img_src: "question_mark.png")
Category.create(name: "Common", img_src: "common.png")
Category.create(name: "Keyboard", img_src: "Keyboard.png")
Category.create(name: "Things", img_src: "thing.png")
Category.create(name: "Possession", img_src: "possession.png")


Category.create(name: "People", img_src: "people.png")
Category.create(name: "Actions", img_src: "Actions.png")
Category.create(name: "Feelings", img_src: "Feelings.png")
Category.create(name: "Play", img_src: "play.png")
Category.create(name: "Sense", img_src: "sense.png")
Category.create(name: "Hygiene", img_src: "bathroom.png")

Category.create(name: "Describe", img_src: "describe.png")
Category.create(name: "Food", img_src: "Food.png")
Category.create(name: "Places", img_src: "placey.png")
Category.create(name: "Colors", img_src: "Colors.png")
Category.create(name: "Nature", img_src: "Nature.png")
Category.create(name: "Animals", img_src: "Animals.png")

Category.create(name: "Time", img_src: "timecat.png")
Category.create(name: "Numbers", img_src: "numbers.png")
Category.create(name: "Chat", img_src: "chat.png")
Category.create(name: "Prepositions", img_src: "preposition.png")



def create_keyword(word_data)
 new_word = Keyword.create(word: word_data[0], img_src: word_data[1])
 category = Category.find_by(name: word_data[2])
 new_word.categories << category
end


words_list = [



# Little_Words
["need", "need.png", "Little Words"],
["the", "the.png", "Little Words"],
["of", "of.png", "Little Words"],
["to", "to.png", "Little Words"],
["and", "and.png", "Little Words"],
["a", "_a.png", "Little Words"],
["in", "in.png", "Little Words"],
["is", "is.png", "Little Words"],
["it", "it.png", "Little Words"],
["that", "that.png", "Little Words"],
["for", "for.png", "Little Words"],
["from", "from.png", "Little Words"],
["or", "or.png", "Little Words"],
["as", "as.png", "Little Words"],
["with", "with.png", "Little Words"],
["am", "am.png", "Little Words"],
["at", "at.png", "Little Words"],
["be", "be.png", "Little Words"],
["but", "but.png", "Little Words"],
["was", "was.png", "Little Words"],
["do", "do.png", "Little Words"],
["will", "will.png", "Little Words"],
["are", "are.png", "Little Words"],
["were", "were.png", "Little Words"],
["did", "did.png", "Little Words"],
["have", "have.png", "Little Words"],
["other", "other.png", "Little Words"],
["would", "would.png", "Little Words"],
["you are", "you_are.png", "Little Words"],
["so", "so.png", "Little Words"],
["could", "could.png", "Little Words"],
["than", "than.png", "Little Words"],
["also", "also.png", "Little Words"],
["if", "if.png", "Little Words"],##
["been", "been.png", "Little Words"],


# question words
["what", "what.png", "Question Words"],
["where", "where.png", "Question Words"],
["why", "why.png", "Question Words"],
["who", "who.png", "Question Words"],
["how", "how.png", "Question Words"],
["question", "question.png", "Question Words"],
["which", "which.png", "Question Words"],
["when", "when.png", "Question Words"],

# common words
["not", "no.png", "Common"],
["me", "me.png", "Common"],
["I", "i.png", "Common"],

["you", "you.png", "Common"],
["us", "us.png", "Common"],
["closed", "closed.png", "Common"],
["cold", "cold.png", "Common"],
["down", "down.png", "Common"],
["drink", "drink.png", "Common"],
["eat", "eat.png", "Common"],
["get", "get.png", "Common"],
["go", "go.png", "Common"],
["help", "help.png", "Common"],
["here", "here.png", "Common"],
["home", "home.png", "Places"],
["I am", "i.png", "Common"],
["left", "left.png", "Common"],
["need", "need.png", "Common"],
["yes", "yes.png", "Common"],
["no", "no.png", "Common"],
["open", "open.png", "Common"],
["please", "please.png", "Common"],
["thank you", "thankyou.png", "Common"],
["right", "right.png", "Common"],
["stop", "stop.png", "Common"],
["there", "there.png", "Common"],
["up", "up.png", "Common"],
["want", "want.png", "Common"],
["what", "what.png", "Common"],
["when", "when.png", "Common"],
["where", "where.png", "Common"],
["some", "some.png", "Common"],
["all", "all.png", "Common"],
["this", "this.svg", "Common"],
["that", "that.png", "Common"],


# Keyboard
["1", "1_.png", "Keyboard"],
["2", "2_.png", "Keyboard"],
["3", "3_.png", "Keyboard"],
["4", "4_.png", "Keyboard"],
["5", "5_.png", "Keyboard"],
["6", "6_.png", "Keyboard"],
["7", "7_.png", "Keyboard"],
["8", "8_.png", "Keyboard"],
["9", "9_.png", "Keyboard"],
["0", "0_.png", "Keyboard"],
["%", "%_.png", "Keyboard"],
["!", "!_.png", "Keyboard"],
["&", "&_.png", "Keyboard"],
["Q", "Q_.png", "Keyboard"],
["W", "W_.png", "Keyboard"],
["E", "E_.png", "Keyboard"],
["R", "R_.png", "Keyboard"],
["T", "T_.png", "Keyboard"],
["Y", "Y_.png", "Keyboard"],
["U", "U_.png", "Keyboard"],
["I", "I_.png", "Keyboard"],
["O", "O_.png", "Keyboard"],
["P", "P_.png", "Keyboard"],
["A", "A_up.png", "Keyboard"],
["S", "S_.png", "Keyboard"],
["D", "D_.png", "Keyboard"],
["F", "F_.png", "Keyboard"],
["G", "G_.png", "Keyboard"],
["H", "H_.png", "Keyboard"],
["J", "J_.png", "Keyboard"],
["K", "K_.png", "Keyboard"],
["L", "L_.png", "Keyboard"],
["Z", "Z_.png", "Keyboard"],
["X", "X_.png", "Keyboard"],
["C", "C_.png", "Keyboard"],
["V", "V_.png", "Keyboard"],
["B", "B_.png", "Keyboard"],
["N", "N_.png", "Keyboard"],
["M", "M_.png", "Keyboard"],


# things
["it", "postit.png", "Things"],
["word", "word.png", "Things"],
["these", "these.png", "Things"],
["way", "way.png", "Things"],
["thing", "thing.png", "Things"],
["page", "page.png", "Things"],
["information","information.png", "Things"],
["site","site.png", "Things"],
["news","news.png", "Things"],
["contact","contact_lense.png", "Things"],
["business","business.png", "Things"],
["web", "web.png", "Things"],
["price", "price.png", "Things"],


# chat
["hello", "hello.png", "Chat"],
["good-bye", "goodbye.png", "Chat"],
["yes", "yes.png", "Chat"],
["no", "no.png", "Chat"],
["good", "good.png", "Chat"],
["bad", "bad.png", "Chat"],
["okay", "ok.png", "Chat"],
["how are you", "howareyou.png", "Chat"],
["sorry", "sorry.png", "Chat"],
["thank you", "thankyou.png", "Chat"],


# people
["mom", "mom.png", "People"],
["dad", "dad.png", "People"],
["brother", "brother.png", "People"],
["sister", "sister.png", "People"],
["family", "family.png", "People"],
["friends", "friends.png", "People"],
["grandparents", "grandparents.png", "People"],
["parents", "parents.png", "People"],
["teacher", "teacher.png", "People"],
["police", "police.png", "People"],
["doctor", "doctor.png", "People"],
["us", "us.png", "People"],
["you", "you.png", "People"],
["me", "me.png", "People"],
["she", "she.png", "People"],
["they", "they.png", "People"],
["we", "we.png", "People"],
["he", "he.png", "People"],
["your", "your.png", "People"],
["people", "people.png", "People"],
["them", "them.png", "People"],
["him", "him.png", "People"],
["her", "her.png", "People"],
["man", "man.png", "People"],
["woman", "woman.png", "People"],


# Actions
["draw", "draw.png", "Actions"],
["get", "get.png", "Actions"],
["go", "go.png", "Actions"],
["walk", "walk.png", "Actions"],
["wash", "wash.png", "Actions"],
["can", "can.png", "Actions"],
["turn", "turn.png", "Actions"],
["look", "look.png", "Actions"],
["find", "find.png", "Actions"],
["open", "open.svg", "Actions"],
["want", "want.png", "Actions"],
["say", "speak_keyword.png", "Actions"],
["come", "come.png", "Actions"],
["like", "like.svg", "Actions"],
["work", "work.png", "Actions"],
["make", "make.png", "Actions"],
["color", "color.svg", "Actions"],
["stop", "stop.png", "Actions"],
["see", "see.png", "Actions"],
["put", "put.png", "Actions"],
["close", "close.svg", "Actions"],
["help", "help.png", "Actions"],
["need", "need.png", "Actions"],
["tell", "speak_keyword.png", "Actions"],
["read", "book.png", "Actions"],
["feel", "feel.png", "Actions"],
["let's", "lets.svg", "Actions"],
["play", "play.png", "Actions"],
["use", "use.png", "Actions"],
["eat", "eat.png", "Actions"],
["know", "know.png", "Actions"],
["take", "take.png", "Actions"],
["give", "give.png", "Actions"],
["had", "had.png", "Actions"],
["by", "by.png", "Actions"],
["call", "call.png", "Actions"],
["may", "mayi.png", "Actions"],
["search", "search.png", "Actions"],
["contact", "contact.png", "Actions"],
["click", "click.png", "Actions"],
["press", "press.png", "Actions"],
["date", "date_action.png", "Actions"],
["sleep", "sleep.png", "Actions"],
["pull", "pull.png", "Actions"],
["fix", "fix.png", "Actions"],
["broke", "broke.png", "Actions"],
["think", "think.png", "Actions"],
["drink", "drink.png", "Actions"],
["view", "view.png", "Actions"],


# Feelings
["angry", "angry.png", "Feelings"],
["excited", "excited.png", "Feelings"],
["happy", "happy.png", "Feelings"],
["love", "love.png", "Feelings"],
["nervous", "nervous.png", "Feelings"],
["scared", "scared.png", "Feelings"],
["sick", "sick.png", "Feelings"],
["sleepy", "sleepy.png", "Feelings"],
["thirsty", "thirsty.png", "Feelings"],
["hungry", "hungry.png", "Feelings"],
["bored", "bored.png", "Feelings"],
["fine", "fine.png", "Feelings"],
["sad", "sad.png", "Feelings"],


# play
["music", "music.png", "Play"],
["soccer", "soccer.png", "Play"],
["baseball", "baseball.png", "Play"],
["volleyball", "volleyball.png", "Play"],
["cards", "cards.png", "Play"],
["chess", "chess.png", "Play"],
["pool", "pool.png", "Play"],
["football", "football.png", "Play"],
["bowling", "bowling.png", "Play"],
["dominos", "dominos.png", "Play"],
["darts", "darts.png", "Play"],
["kite", "kite.png", "Play"],
["tennis", "tennis.png", "Play"],
["golf", "golf.png", "Play"],
["pingpong", "pingpong.png", "Play"],
["checkers", "checkers.png", "Play"],
["video game", "videogame.png", "Play"],
["reading", "read.png", "Play"],


# Sense
["hear", "hear.png", "Sense"],
["see", "see.png", "Sense"],
["touch", "touch.png", "Sense"],
["balance", "balance.png", "Sense"],
["itchy", "itchy.png", "Sense"],
["feel", "feel.png", "Sense"],
["smell", "smell.png", "Sense"],
["taste", "taste.png", "Sense"],


# Bathroom
["toilet", "toilet.png", "Hygiene"],
["wash", "wash.png", "Hygiene"],
["toilet paper", "toiletpaper.png", "Hygiene"],
["shower", "shower.png", "Hygiene"],
["shampoo", "shampoo.png", "Hygiene"],
["conditioner", "conditioner.png", "Hygiene"],
["soap", "soap.png", "Hygiene"],
["tub", "tub.png", "Hygiene"],
["hairbrush", "hairbrush.png", "Hygiene"],
["toothbrush", "toothbrush.png", "Hygiene"],
["toothpaste", "toothpaste.png", "Hygiene"],
["mirror", "mirror.png", "Hygiene"],


#Describe
["clean", "clean.png", "Describe"],
["dirty", "dirty.png", "Describe"],
["dry", "dry.png", "Describe"],
["wet", "wet.png", "Describe"],
["far", "far.png", "Describe"],
["hard", "hard.png", "Describe"],
["soft", "soft.png", "Describe"],
["hot", "hot.png", "Describe"],
["cold", "cold.png", "Describe"],
["little", "little.png", "Describe"],
["big", "big.png", "Describe"],
["loud", "loud.png", "Describe"],
["quiet", "quiet.png", "Describe"],
["new", "new.png", "Describe"],
["free", "free.png", "Describe"],


#food
["banana", "banana.png", "Food"],
["bread", "bread.png", "Food"],
["breakfast", "breakfast.png", "Food"],
["burger", "burger.png", "Food"],
["carrot", "carrot.png", "Food"],
["hotdog", "hotdog.png", "Food"],
["juice", "juice.png", "Food"],
["milk", "milk.png", "Food"],
["pizza", "pizza.png", "Food"],
["water", "water.png", "Food"],
["date", "date_food.png", "Food"],
["lollipop", "lollipop.png", "Food"],
["popcorn", "popcorn.png", "Food"],
["sandwich", "sandwich.png", "Food"],
["tomato", "tomato.png", "Food"],
["rice", "rice.png", "Food"],
["cupcake", "cupcake.png", "Food"],
["chocolate", "chocolate.png", "Food"],
["donut", "donut.png", "Food"],
["onion", "onion.png", "Food"],
["avocado", "avocado.png", "Food"],
["broccoli", "broccoli.png", "Food"],
["pineapple", "pineapple.png", "Food"],
["lemon", "lemon.png", "Food"],
["strawberry", "strawberry.png", "Food"],
["chili", "chili.png", "Food"],
["corn", "corn.png", "Food"],
["ketchup", "ketchup.png", "Food"],
["peach", "peach.png", "Food"],
["watermelon", "watermelon.png", "Food"],
["cherry", "cherry.png", "Food"],
["tuna", "tuna.png", "Food"],
["pie", "pie.png", "Food"],
["soup", "soup.png", "Food"],
["chicken", "chickenfood.png", "Food"],
["tea", "tea.png", "Food"],
["coffee", "coffee.png", "Food"],
["cookie", "cookie.png", "Food"],
["muffin", "muffin.png", "Food"],
["toast", "toast.png", "Food"],
["salt", "salt.png", "Food"],
["pepper", "pepper.png", "Food"],


# places
["bathroom", "bathroom.png", "Places"],
["hospital", "hospital.png", "Places"],
["outside", "outside.png", "Places"],
["park", "park.png", "Places"],
["playground", "playground.png", "Places"],
["restaurant", "restaurant.png", "Places"],
["school", "school.png", "Places"],
["bank", "bank.png", "Places"],
["carnival", "carnival.png", "Places"],
["airport", "airport.png", "Places"],
["church", "church.png", "Places"],
["temple", "temple.png", "Places"],
["downtown", "downtown.png", "Places"],
["nieghborhood", "nieghborhood.png", "Places"],
["work", "work.png", "Places"],
["movies", "movies.png", "Places"],
["coffee shop", "coffee-shop.png", "Places"],
["living room", "livingroom.png", "Places"],
["kitchen", "kitchen.png", "Places"],
["laundry", "laundry.png", "Places"],


# colors
["black", "black.png", "Colors"],
["blue", "blue.png", "Colors"],
["brown", "brown.png", "Colors"],
["green", "green.png", "Colors"],
["orange", "orange.png", "Colors"],
["purple", "purple.png", "Colors"],
["red", "red.png", "Colors"],
["white", "white.png", "Colors"],
["yellow", "yellow.png", "Colors"],

# insert nature words here
["flower", "flower.png", "Nature"],
["cloud", "cloud.png", "Nature"],
["leaves", "leaves.png", "Nature"],
["grass", "grass.png", "Nature"],
["stars", "stars.png", "Nature"],
["rain", "rain.png", "Nature"],
["cold", "cold.png", "Nature"],
["hot", "hot.png", "Nature"],
["dirt", "dirty.png", "Nature"],
["trees", "trees.png", "Nature"],
["sun", "sun.png", "Nature"],





# animals
["bird", "bird.png", "Animals"],
["rabbit", "bunny.png", "Animals"],
["cat", "cat.png", "Animals"],
["chicken", "chicken.png", "Animals"],
["dog", "dog.png", "Animals"],
["fish", "fish.png", "Animals"],
["horse", "horse.png", "Animals"],
["pig", "pig.png", "Animals"],
["turtle", "turtle.png", "Animals"],
["bee", "bee.png", "Animals"],
["duck", "duck.png", "Animals"],
["owl", "owl.png", "Animals"],
["unicorn", "unicorn.png", "Animals"],
["lion", "lion.png", "Animals"],
["fox", "fox.png", "Animals"],
["mouse", "mouse.png", "Animals"],
["deer", "deer.png", "Animals"],
["giraffe", "giraffe.png", "Animals"],
["squirrel", "squirrel.png", "Animals"],
["ladybug", "ladybug.png", "Animals"],
["panda", "panda.png", "Animals"],
["monkey", "monkey.png", "Animals"],
["whale", "whale.png", "Animals"],
["hamster", "hamster.png", "Animals"],
["frog", "frog.png", "Animals"],
["dolphin", "dolphin.png", "Animals"],
["shark", "shark.png", "Animals"],
["penguin", "penguin.png", "Animals"],
["zebra", "zebra.png", "Animals"],
["hedgehog", "hedgehog.png", "Animals"],


# time
["time", "timekey.png", "Time"],
["now", "now.png", "Time"],
["later", "later.png", "Time"],
["soon", "soon.png", "Time"],
["after", "after.png", "Time"],
["before", "before.png", "Time"],
["just", "just.png", "Time"],
["then", "then.png", "Time"],
["hour", "hour.png", "Time"],
["minute", "minute.png", "Time"],
["day", "day.png", "Time"],
["date", "date_time.png", "Time"],
["today", "today.png", "Time"],
["yesterday", "yesterday.png", "Time"],
["tomorrow", "tomorrow.png", "Time"],
["week", "week.png", "Time"],
["year", "year.png", "Time"],
["month", "month.png", "Time"],
["Sunday", "sunday.png", "Time"],
["Monday", "monday.png", "Time"],
["Tuesday", "tuesday.png", "Time"],
["Wednesday", "wednesday.png", "Time"],
["Thursday", "thursday.png", "Time"],
["Friday", "friday.png", "Time"],
["Saturday", "saturday.png", "Time"],
["January", "january.png", "Time"],
["February", "february.png", "Time"],
["March", "march.png", "Time"],
["April", "april.png", "Time"],
["May", "may.png", "Time"],
["June", "june.png", "Time"],
["July", "july.png", "Time"],
["August", "august.png", "Time"],
["September", "september.png", "Time"],
["October", "october.png", "Time"],
["November", "november.png", "Time"],
["December", "december.png", "Time"],


# numbers
["1", "1.png", "Numbers"],
["2", "2.png", "Numbers"],
["3", "3.png", "Numbers"],
["4", "4.png", "Numbers"],
["5", "5.png", "Numbers"],
["6", "6.png", "Numbers"],
["7", "7.png", "Numbers"],
["8", "8.png", "Numbers"],
["9", "9.png", "Numbers"],
["10", "10.png", "Numbers"],
["first", "first.png", "Numbers"],
["second", "second.png", "Numbers"],
["third", "third.png", "Numbers"],
["last", "last.png", "Numbers"],
["some", "some.png", "Numbers"],
["all", "all.png", "Numbers"],
["none", "none.png", "Numbers"],
["more", "more.png", "Numbers"],
["less", "less.png", "Numbers"],
["many", "many.png", "Numbers"],##
["an", "an.png", "Numbers"],
["each", "each.png", "Numbers"],
["only", "only.png", "Numbers"],##
["other", "other.png", "Numbers"], ##


# preposition
["on top of", "on_top_of.png", "Prepositions"],
["open", "open.png", "Prepositions"],
["outside of", "outside_of.png", "Prepositions"],
["under", "under.png", "Prepositions"],
["on", "on.png", "Prepositions"],
["off", "off.png", "Prepositions"],
["in", "in.png", "Prepositions"],
["out", "out.png", "Prepositions"],
["up", "up.png", "Prepositions"],
["to", "to.png", "Prepositions"],
["out", "out.png", "Prepositions"],
["down", "down.svg", "Prepositions"],
["with", "with.svg", "Prepositions"],
["about", "about.png", "Prepositions"],
["into", "into.png", "Prepositions"],



# Possession
["their", "their.png", "Possession"],
["hers", "hers.png", "Possession"],
["his", "his.png", "Possession"],
["mine", "mine.png", "Possession"],
["my", "my.png", "Possession"],
["its", "its.png", "Possession"],
["ours", "ours.png", "Possession"]
]












words_list.each do |word|
  create_keyword(word)
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
Phrase.create(sentence: ["pizza", "banana", "carrot", "burger", "bread"], count: 1, user_id: 4)
Phrase.create(sentence: ["dad", "family", "friends", "grandparents"], count: 1, user_id: 4)
Phrase.create(sentence: ["green", "orange", "purple", "white", "black"], count: 1, user_id: 4)
Phrase.create(sentence: ["bunny", "pig", "chicken", "horse"], count: 1, user_id: 4)

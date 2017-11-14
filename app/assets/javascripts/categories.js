$(document).ready(function() {


	///////////MODEL///////////

	var callPolly = function(text) {
		var polly = new AWS.Polly()

			var params = {
	        OutputFormat: 'mp3', /* required */
	        Text: text, /* required */
	        VoiceId: 'Justin', /* required */
	        SampleRate: '22050',
	        TextType: 'text'
	    };
     	polly.synthesizeSpeech(params, callBack);
	}

	var toHome = function() {
		$.ajax({
			url: "/categories",
			type: "GET"
		})
		.done(function(response) {
			$(".main-populate-me").html(response.html)
		})
	}

	var populateSentenceBar = function(text) {
		$.ajax({
			url: "/categories/" + text + "/keywords/" + text,
			type: "GET"
		})
		.done(function(response) {
			$(".sentence-bar").append(response.html)
			toHome()
		})

		callPolly(text)
	}

	var openCategories = function(category) {
		$.ajax({
			url: "/categories/" + category + "/keywords",
			type: "GET"
		})
		.done(function(response) {
			$(".main-populate-me").html(response.html)
		})
	}

	var keyEvents = function(e, key, row, column) {
		if ($(".modal-open").length === 0) {
			if (e.keyCode === 27) {
				toHome()
			}
			else if (e.keyCode === key) {
				if ($(".populate-me.last").find(".categories-row").length > 0) {
					var text = $($($(".populate-me.last").find(".categories-row")[row]).find(".categories-col")[column]).find("p").text()
					openCategories(text)
				}
				else if($(".populate-me.last").find(".keywords-row").length > 0) {
					var text = $($($(".populate-me.last").find(".keywords-row")[row]).find(".keywords-col")[column]).find("p").text()
					populateSentenceBar(text)
				}
				return false
			}
		}
	}

	var mostClick = function(phrase) {
		var words = []
		for(i=0;i<phrase.length-1;i++) {
			words.push($(phrase[i]).find("p").text())
		}
		$.ajax({
			url: "/categories/" + words + "/keywords/" + words,
			type: "GET"
		})
		.done(function(response) {
			$(".sentence-bar").html(response.html)
		})
	}


	///////////CONTROLLER///////////


	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		toHome()
	})

	$(".populate-me.last").on("click", ".most-click", function(event) {
		event.preventDefault()
		var phrase = $(this).closest(".most-row").children(".most-col")
		mostClick(phrase)
	})

	$(".delete-button").on("click", function(event) {
		event.preventDefault()
		$(".sentence-bar").children(".sentence-col").last().remove()
	})

	$(".delete-button").dblclick(function(event) {
		event.preventDefault()
		$(".sentence-bar").children(".sentence-col").remove()
	})

	$(".populate-me").on("click", ".categories-col", function(event) {
		event.preventDefault()
		var category = $(this).data('category');
		openCategories(category)
	})


	$(".populate-me").on("click", ".keywords-col", function(event) {
		event.preventDefault()
		var text = $(this).data('category')
		populateSentenceBar(text)
	})


	$(document).keydown(function(e) {
		keyEvents(e, 49, 0, 0)
		keyEvents(e, 50, 0, 1)
		keyEvents(e, 51, 0, 2)
		keyEvents(e, 52, 0, 3)
		keyEvents(e, 53, 0, 4)
		keyEvents(e, 54, 0, 5)

		keyEvents(e, 81, 1, 0)
		keyEvents(e, 87, 1, 1)
		keyEvents(e, 69, 1, 2)
		keyEvents(e, 82, 1, 3)
		keyEvents(e, 84, 1, 4)
		keyEvents(e, 89, 1, 5)

		keyEvents(e, 65, 2, 0)
		keyEvents(e, 83, 2, 1)
		keyEvents(e, 68, 2, 2)
		keyEvents(e, 70, 2, 3)
		keyEvents(e, 71, 2, 4)
		keyEvents(e, 72, 2, 5)
	})



// $(".speak").on("click", function(event) {
// 		event.preventDefault()
// 		$.ajax({
// 			url: "/speak",
// 			type: "GET"
// 		})
// 		.done(function(response) {
// 			console.log(response)
// 			debugger;
// 		  var sentence = $(".sentence-bar .sentence-col")
// 		  var compiled= ""
// 		  for(i=0;i<sentence.length;i++) {
// 			 compiled = compiled + $(sentence[i]).text() + " "
// 		}
// 	  var polly = new AWS.Polly()
//     var params = {
//         OutputFormat: 'mp3', /* required */
//         Text: compiled, /* required */
//         VoiceId: 'Justin', /* required */
//         SampleRate: '22050',
//         TextType: 'text'
//     };

//      polly.synthesizeSpeech(params, callBack);
// 		})

// })




	// $.ajax({
	// 	url: "/sessions/keys",
	// 	type: "GET"
	// })
	// .done(function(response) {
	// 	console.log(response);
	// AWS.config.region = 'us-east-2';
	// AWS.config.accessKeyId = response.AWS_ACCESS_KEY_ID;
	// AWS.config.secretAccessKey = response.AWS_SECRET_ACCESS_KEY;

	// })




	$(".speak").on("click", function(event) {
		event.preventDefault()

		var sentence = $(".sentence-bar .sentence-col")
		var compiled= ""
		for(i=0;i<sentence.length;i++) {
			compiled = compiled + $(sentence[i]).find("p").text() + " "
		}

		callPolly(compiled)

		$.ajax({
			url: "/phrases",
			type: "POST",
			data: { phrase: compiled }
		})
		.done(function(response) {

			$(".main-populate-me").html(response.html)
			if(response) {
				$(".most-recent-populate-me").prepend(response.html)
				$(".most-recent-populate-me .most-row").last().remove()
			}
		})



  });


		///////////VIEW///////////

})

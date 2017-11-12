$(document).ready(function() {

	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		$.ajax({
			url: "/categories",
			type: "GET"
		})
		.done(function(response) {
			$(".main-populate-me").html(response.html)
		})
	})

	$(".populate-me.last").on("click", ".most-click", function(event) {
		event.preventDefault()
		var phrase = $(this).closest(".most-row").children(".most-col")
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
		 var polly = new AWS.Polly()

    var params = {
        OutputFormat: 'mp3', /* required */
        Text: compiled, /* required */
        VoiceId: 'Justin', /* required */
        SampleRate: '22050',
        TextType: 'text'
    };
     polly.synthesizeSpeech(params, callBack);

     $.ajax({
     	url: "/phrases",
     	type: "POST",
     	data: { phrase: compiled }
     })
     .done(function(response) {
     	// var most_new = "<div class='row words-row most-row'>"
     	// most_new = most_new + response.html
     	// most_new = most_new + "<div class='col-md-1 words-col most-col most-click'><p>Click to sentence-me</p></div></div>"
     	$(".most-recent-populate-me").prepend(response.html)
     	$(".most-recent-populate-me .most-row").last().remove()
     })

  });


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
		$.ajax({
			url: "/categories/" + category + "/keywords",
			type: "GET"
		})
		.done(function(response) {
      console.log("hrer")
			$(".main-populate-me").html(response.html)
		})
	})

	$(".populate-me").on("click", ".keywords-col", function(event) {
		event.preventDefault()
		var text = $(this).data('category')
		$.ajax({
			url: "/categories/" + text + "/keywords/" + text,
			type: "GET"
		})
		.done(function(response) {
			$(".sentence-bar").append(response.html)
		})



	})
})

$(document).ready(function() {

	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		$.ajax({
			url: "/categories",
			type: "GET"
		})
		.done(function(response) {
			$(".populate-me.last").html(response.html)
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
			compiled = compiled + $(sentence[i]).text() + " "
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

  });


	$(".delete-button").on("click", function(event) {
		event.preventDefault()
		$(".sentence-bar").children(".sentence-col").last().remove()
	})

	$(".populate-me").on("click", ".categories-col", function(event) {
		event.preventDefault()
		var category = $(this).data('category');
		$.ajax({
			url: "/categories/" + category + "/keywords",
			type: "GET"
		})
		.done(function(response) {
			$(".populate-me.last").html(response.html)
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

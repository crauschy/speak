$(document).ready(function() {

	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		$.ajax({
			url: "/categories",
			type: "GET"
		})
		.done(function(response) {
			html = response.HTML
			$(".populate-me.last").html(html)
		})
	})

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
		$.ajax({
			url: "/categories/" + $(this).text() + "/keywords",
			type: "GET"
		})
		.done(function(response) {
			html = response.HTML
			$(".populate-me.last").html(html)
		})
	})

	$(".populate-me").on("click", ".keywords-col", function(event) {
		event.preventDefault()
		var html = ""
			html = html + "<div class='col-md-1 words-col keywords-col sentence-col'>"
			html = html + $(this).text()
			html += "<img src='/assets/icons/" + $(this).text() + ".png', alt='Icon', height='40px'>"
			// html = html + "<img src='/assets/icons/pizza.png', alt='Icon', height='40px'>"
			html = html + "</div>"
			$(".sentence-bar").append(html)
	})
})
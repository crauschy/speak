$(document).ready(function() {

	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		$.ajax({
			url: "/categories",
			type: "GET"
		})
		.done(function(response) {
			html = response.HTML
			$(".populate-me").html(html)
		})
	})

	$(".speak").on("click", function(event) {
		event.preventDefault()
		alert("this speaks the sentence!")
	})

	$(".navbar-keyboard").on("click", function(event) {
		event.preventDefault()
		alert("this opens the keyboard!")
	})

	$(".delete-button").on("click", function(event) {
		event.preventDefault()
		alert("this deletes an item!")
	})

	$(".populate-me").on("click", ".categories-col", function(event) {
		event.preventDefault()
		$.ajax({
			url: "/categories/" + $(this).text() + "/keywords",
			type: "GET"
		})
		.done(function(response) {
			html = response.HTML
			$(".populate-me").html(html)
		})
	})

	$(".populate-me").on("click", ".keywords-col", function(event) {
		event.preventDefault()
		var html = ""
			html = html + "<div class='col-md-1 words-col keywords-col sentence-col'>"
			html = html + $(this).text()
			// # @html += "IMAGE PATH HERE"
			html = html + "</div>"
			$(".sentence-bar").append(html)


		// $.ajax({
		// 	url: "/categories/" + $(this).text() + "/keywords",
		// 	type: "GET"
		// })
		// .done(function(response) {
		// 	html = response.HTML
		// 	$(".populate-me").html(html)
		// })
	})
})
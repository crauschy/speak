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
		alert("this speaks the sentence!")
	})

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
			// # @html += "<img src='/assets/icons/" + $(this).text() + ".png', alt='Icon', height='40px'>"
			html = html + "<img src='/assets/icons/pizza.png', alt='Icon', height='40px'>"
			html = html + "</div>"
			$(".sentence-bar").append(html)
	})
})
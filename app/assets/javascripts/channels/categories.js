$(document).ready(function() {

	$(".navbar-home-button").on("click", function(event) {
		event.preventDefault()
		alert("this takes you home!")
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

	$(".words-col").on("click", function(event) {
		event.preventDefault()
		alert($(this).text())
		alert("Send an ajax to this location: '/categories/' + $(this).text() + '/keywords', and return the html string to replace the populate-me div")
	})
})
root = exports ? this

letters = ['T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B', 'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E', 'T']

root.calculate = () ->
	console.log "Vamos a empezar"
	number = obtain_number()
	console.log "number = #{number}"
	letter = if is_valid number then calculate_letter_of number else show_error "It is not a valid number"
	console.log letter
	if letter then show_letter letter

obtain_number = () ->
	input = document.getElementById "input_number"
	input.value

is_valid = (number) ->
	console.log number.length
	if number.length is 8 and not isNaN number
		true
	else
		false

show_error = (message) -> 
	alert message

calculate_letter_of = (number) ->
	letters[number %23]

show_letter = (letter) ->
	text = document.getElementById "letter"
	text.innerHTML = letter

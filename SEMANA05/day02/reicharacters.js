 var character={
// 	name: 'Han SOlo',
// 	occupation: 'Smuggler'
​
// }
​
​
// function hundlerCharachters(response){
// 	console.log(response);
// }
​
// var request = $.get('https://ironhack-characters.herokuapp.com/characters', character, "json")
​
// request.done(hundlerCharachters)
​
​
// var character={
// 	name: 'Satwats Character',
// 	occupation: 'Stuntman'
​
// }
​
// $.post('https://ironhack-characters.herokuapp.com/characters', character)
​
​
// request.done(hundlerCharachters)
​
// var answer  = $.get("http://pokeapi.co/api/v2/pokemon/1/")
​
// function handleResponse(response){
// 	console.log("You searched for " + response.name + " the pokemon has as a primary move " + response.moves[0].move.name)
// 	for (var i= 1; i<response.moves.length; i++){
// 		console.log("Move number " + i + " is " + response.moves[i].move.name)
// 	}
// }
​
// answer.done(handleResponse)
$(document).ready(function() {
​
	$('#get_chars').on('click', getCharacters)
​
	$('#post_chars').on('submit', postCharacter)
​
​
​
	function getCharacters(){
		var request = $.get('https://ironhack-characters.herokuapp.com/characters');
		request.done(addCharactersToList);
	}
​
	function addCharactersToList(request){
		request.forEach(function(element){
			$('.char-list').append('<li>' + element.name + '</li>');
		})
	}
​
	function postCharacter(event){
		event.preventDefault();
​
		var character={
			name: $('#name').val(),
			occupation: $('#occupation').val(),
			weapon: $('#weapon').val()
		}
​
		var response = $.post('https://ironhack-characters.herokuapp.com/characters', character)
​
		response.done(console.log("added " + name + " to the database!"))
		response.fail(console.log("something went wrong"))
	}
​
​
​
​
});
Add Comment
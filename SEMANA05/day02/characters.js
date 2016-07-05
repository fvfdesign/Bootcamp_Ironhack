// function onSubmit (event) {
//   event.preventDefault();
//   console.debug('SUBMITTED');
// 	var newCharacter = {

// 			name: $('.input').val(),
// 			ocupation: $('.input02').val()

//   // Build a new character from the values in the form
//   }
// }


// $('.js-submit').on('click', onSubmit);



$(document).ready(function(){



	$('.get_characters').on('click', getCharacters)
	$('.post_character').on('submit', postCharacters)


	function getCharacters(response){

		var request = $.get('https://ironhack-characters.herokuapp.com/characters',"json");

	request.done(addCharactersToList)

	}

	function addCharacterToList(request){

		$request.forEach (function(element){
		
		$('.character_list').append('<li>' + element.name + '</li>')

		})
	}



	function postCharacters(event){
		event.preventDefault();

		var newCharacter = {

					name: $('#name').val(),
					ocupation: $('#ocupation').val(),
					weapoon: $('#weapoon').val()
		}

		var p = $.post('https://ironhack-characters.herokuapp.com/characters', newCharacter, "json");



	// p.done(postCharacters)


		p.done(function(){
			
			console.log(response)


		})
	}

})





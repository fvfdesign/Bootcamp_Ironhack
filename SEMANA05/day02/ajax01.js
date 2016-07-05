// /////// var equest = $.get('https://ironhack-characters.herokuapp.com/characters')

// ///////// request.done = function(response0{
// ///////// console.log(repsonse)}

// var character ={
// 	name "Han solo",
// 	occupation: "Smuggler"

// }


// function handleCharacters(response){

// 	console.log(response);
// } ////////// success



// var request = $.get('https://ironhack-characters.herokuapp.com/characters', character, "jason");

// request.done(handleCharacters);

// ///////// request.fail(function(){console.log('error')});

///............................................................................

var newCharacter ={

	name: 'Chewbacca',
	occupation: 'Muscle',
	weapon: 'Bowcaster'
};

function hundleCharacters(response){

	console.log(response);
} // success




var r = $.post('https://ironhack-characters.herokuapp.com/characters', newCharacter, "json");




r.done(function(){
var request = $.get('https://ironhack-characters.herokuapp.com/characters',"json");
request.done(hundleCharacters)

})



///............................................................................



var request = $.get("http://pokeapi.co/api/v2/ability/34/","json");

function handleCharacters(response){

	console.log(response);
}

request.done(handleCharacters)



////.............


// var character = {
//   name: 'Raul', 
//   occupation: 'Teacher',
//   weapon: 'axe'
// }
// ​
// function hundlerCharacters(response){
//   console.log('characters:')
//   console.log(response);
// }
// ​
// var r = $.post('https://ironhack-characters.herokuapp.com/characters', character, "json");
// ​
// r.done(function(){
//   var request = $.get('https://ironhack-characters.herokuapp.com/characters', "json");
//   request.done(hundlerCharacters);
// })
// Add Comment Collapse

// 1 new message since 10:52 AM
// Mark as read (esc)
// About webmad0616
// Channel Details
// Pinned Items
// 11/19 Members











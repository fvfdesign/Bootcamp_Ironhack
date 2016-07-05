// $("body").append('<h1 class="title">Phrases</h1>');
// $(".title").after('<div/>');

// $(".container").append('<ul/>');
// $("ul").attr("id","phrases-list"); 

var phrases = [
'I like pie',
'Lorem ipsum dolor sit amet, consectetur adipisicing elit.',
'Libero ea rem fugit ullam at voluptas unde temporibus eaque', 
'Error corrupti accusamus sapiente, doloremque voluptatum inventore',
'Distinctio alias corporis quae iste.' 
]

// var random = Math.floor((phrases.length) * Math.random());

// $(".container").append(phrases[random]);
var random = Math.floor((phrases.length) * Math.random());

$('.container').append('<h3>' + phrases[random] + '</h3>')


$('button').on('click', function(){

	$(".container").empty()

	random = Math.floor((phrases.length) * Math.random());

	$(".container").append('<h3>' + phrases[random] + '</h3>');
	console.log(phrases.length);
})

$('.input').keypress( function(){

	if (input.value != ""){
		phrases.push(input.value);
	}


});






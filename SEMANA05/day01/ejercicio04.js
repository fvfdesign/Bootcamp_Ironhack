$(function(){

	$('form').on('submit', function(event){
		var isFilled = true
		var inputs = $('form input[type="text"]')
		
			for(var i = 0; i<inputs.length; i++){

			if(inputs[i].value === ""){
				isFilled = false;
			}



		}

			if(!isFilled){

			event.preventDefault();
			alert("Fill everything to submit");

			}
			console.log('hi');

	})
});




// $('form').on('submit', function(event){
// 	event.preventDefault();
// 	console.log("probando");

// });




// $(".next").click(function() {
//     var empty = $(this).parent().find("input").filter(function() {
//         return this.value === "";
//     });
//     if(empty.length) {
//         //At least one input is empty
//     }
// });

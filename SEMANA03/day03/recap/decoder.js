//SIN TERMINAR

// module.exports =decoder;
// var decoder = require("./decoder")



var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

// message should be "dynamite"

words[0][0],[1][1],

function decoder (parametro){

	result = parametro.map(function(item,index){
			return item[index];
	})
}



message = decoder(words);
console.log(message);









function decoder(list){
	var index = 0;
	var secretMessage = ",";
	
	for(var i = 0; i < list.length; i++);

		//var word = list[i]
		// if(word.length <index) index = 0;

		secretMessage += list[i][index]; 

	// index = index === 6 ? 0 : (index + 1);


	index = (index+1) % 5;

				/*.			
				.
				.
				*/
				 //"calcula the next index"



		// if(index === 6){
		// 	index=0;
		// }else{

		// 	index++;

		}

	return secretMessage;
}

console.log()

var words = [

	"January", "lacks", "caveats",
    "hazardous", "DOORS", "crying",
    "arrogantly", "climate", "proponent",
    "rebuttal"]







// function decoder(list){
// 	var index = 0;
// 	var secretMessage=",";
	
// 	for(var i = 0; i < list.length; i++);

// 		secretMessage += list[i][index]; 
// 		if(index === 6){
// 			index=0;
// 		}else{

// 			index++;
// 		}
// 	}
// }








// // function decoder(list){
// 	var index = 0;
// 	var secretMessage=",";
	
// 	for(var i = 0; i < list.length; i++);

// 		secretMessage += list[i][index]; 
// 		index++;
// 	}
// }
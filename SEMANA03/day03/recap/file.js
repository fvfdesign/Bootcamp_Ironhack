// CLASE DE JAVI....

// var exampleArray = [2, -5, 10, 5, 4, -10, 0];

// // function exampleArray(){

// // }


/*

EJERCICICO:

Write a function that takes as array of numbers. 
Return every pair of positions where the addition 
of numbers sums to zero.

                    0   1  2   3  4   5   6
var sample_array = [2, -5, 10, 5, 4, -10, 0];
var results = process(exampleArray);
console.log(results);

=> [ "1,3" , "2,5" , "3,1, "5,2" , 6,6"]

*/


var sample_array = [2, -5, 10, 5, 4, -10, 0];

function process(data){
	var positions = [];
	data.forEach(function(number1, index1){
		data.forEach (funciont (number2, index2){
			if (number1 + number2 === 0) {positions.push (index1 + "," + index2)}

		});
	});
	return positions;
	console.log("You can sum these pairs of numbers and get zero:");
	console.log(positions);

}

process(sample_array);






//.........................................


var exampleArray = [2, -5, 10, 5, 4, -10, 0];

for(var i=0,i<exampleArray.length;i++){
console.log(exampleArray[i]);

}


//.........................................



var exampleArray = [2, -5, 10, 5, 4, -10, 0];

for(var i=0,i<exampleArray.length;i++){
for(var j=0,j<exampleArray.length;j++){
	if(exampleArray[i] + exampleArray[j] === 0){

	pairs.push("(" + exampleArray[i] + "," exampleArray[j] + "," ")");


	}
 }
}


// funtion add(result,item){
// 	return result + item;}
// }

//.........................................



var exampleArray = [2, -5, 10, 5, 4, -10, 0];
// console.log (getZerosums(exampleArray));

exampleArray.reduce(function(finalresult, i){
	exampleArray.reduce(funtion(iterationResult,j){
		if(i+j ===0) {
		iterationResult.push ("(" + i + "," + j + ",")
		}

		return iterationResult;
	},finalResult);
}, []);



//.........................................

var exampleArray = [2, -5, 10, 5, 4, -10, 0];
// console.log (getZerosums(exampleArray));

console.log(exampleArray.reduce(function(finalresult, i, posi){
	return exampleArray.reduce(funtion(iterationResult,j, posj){
		return i+j === 0 {
?iterationResult.concat("(" + posi + "," + posj + ",");
:iterationResult;
		}, finalResult);

},[]);

//.........................................


var exampleArray = [2, -5, 10, 5, 4, -10, 0];
// console.log (getZerosums(exampleArray));

function zeroCool(array){
	return(exampleArray.reduce(function(finalresult, i, posi){
		return exampleArray.reduce(funtion(iterationResult,j, posj){
			return i+j === 0 {
				?iterationResult.concat("(" + posi + "," + posj + ",");
				:iterationResult;
		}, finalResult);

	},[]);
}


//.........................................



var exampleArray = [2, -5, 10, 5, 4, -10, 0];
// console.log (getZerosums(exampleArray));

exampleArray.reduce(function(result, item)
	return result + item;
}, 0);


}






/*

var sample_array = [2, -5, 10, 5, 4, -10, 0]

function process(data){
	var positions = [];
	data.forEach (function (a,i){
		data.forEach (function (b,j){
if (a+b === 0) {positions.push (i + "," + j)}
		});
	});
	// return positions;
	console.log("You can sum these pairs of numbers and get zero:" + positions);
	// console.log(positions);
}

process(sample_array);

*/


//...................................................

// var sample_array = [2, -5, 10, 5, 4, -10, 0];

// function process(data){
// 	var positions = [];
// 	data.forEach(function(value,i){
// 		data.forEach (funciont (value2,j){

// 		});
// 	});

// }

// process(sample_array);






var i;

for(i=1; i <= 42; i +=1){
	console.log(i);
}






//..........................................

//--------- FOREACH ----------------------------

var foods = ["pizza", "cookies", "bread"];
foods.forEach(function(food){
	console.log(food);
});

/*result:

pizza
cookies
bread

*/

//..........................................

//--------- MAP ----------------------------

var foods = ["pizza", "cookies", "bread"];

var capsFoods = foods.map(function(food){
	return food.toUpperCase();
});

console.log(capsFoods);

// Result: [ 'PIZZA', 'COOKIES', 'BREAD' ]

//..........................................

//--------- REDUCE ----------------------------

var foods = ["pizza", "cookies", "bread", "banana", "apple"];

var msg = foods.reduce(function(pre,food){
	return pre + " AND " + food;
});

console.log(msg)

//Returns: pizza AND cookies AND bread AND banana AND apple

//..........................................


//--------- FILTER ----------------------------

var foods = ["pizza", "cookies", "bread", "banana", "apple"];

var best = foods.filter(function(food){
	return food !== "bread";
});

console.log(best);

 // Returns: [ 'pizza', 'cookies', 'banana', 'apple' ]


//..........................................


//--------- IF..ELSE----------------------------

var foods = ["pizza", "cookies", "bread", "banana", "apple"];

if (food === "pizza") {
	console.log("Oh dear lord, pizza");
}else if (food === "cookies"){
	console.log("Mmmm cookies");
}else {
	console.log("What the hell...");
}



// No var defined before
//Gobal scope
/*

function sum(data){
	var positions;
	function process(data){
		positions = [];
	}
}

//more code
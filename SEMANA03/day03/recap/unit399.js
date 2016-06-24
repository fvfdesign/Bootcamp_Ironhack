//RESUELTO POR PROFESORES


// var numbers = "80:70:90:10"

// var allNumbers = numbers.split(":")

// allNumbers.reduce(function(){


// 	console.log(allNumbers)
// }


var numbers = "80:70:90:10"

function stringNumbersToArray(str){
	return str.split(":").map(function(item){ // (item, index)

		return parseInt(item); //parseInt(item,10);
	});
}


function sumArray(array){

	return array.reduce(function(result,item){
		return result + item;

	}, 0);
}



function averageArray(array){

sumArray(array)/array.length;
}


function calculate(numbers){

	return average(stringNumbersToArray(numbers));
}


// console.log(stringNumberstoAray(numbers));

// console.log(sumArray(stringNumbersToAray("80:70:90:10"));

// console.log(averageArray(stringNumbersToAray("80:70:90:10")));

console.log(calculate("80:70:90:10")));












var numbers = "80:70:90:10"

function stringNumberstoAray(str){
	return str.split(":").map(fucntion(item){

		return parseInt(item);
	});
}
console.log(stringNumberstoAray(numbers));


// function average(numbersArray){
// 	var allNumbers = numbersArray.split(":") 
// 	console.log(numbers)


// 	var allNumbers_array = allNumbers.map(item)
// 	parseInt(allNumbers)

// 	allNumbers.reduce()

// 	x/allNumbers_array.length

// 	return allNumbers_array
// }

// average(numbers)
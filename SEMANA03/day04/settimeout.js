//CLASE....

// sleep(10, function(){
// 	console.log ("it's been 10 seconds.");
// });

// function hello(){
// 	console.log("Hello");
// }


function sleep(time,fn){
	setTimeout(fn, time*1000);
}

function logTime(){
	console.log("time elapse");
}


sleep(2,logTime);


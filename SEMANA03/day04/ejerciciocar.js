var Car = function(model,noise){

	this.model = model;
	this.noise = noise;

	this.makeNoise = function(){
		console.log(this.noise + "")
	};

};
var car01 = new Car ("ford", "BRRRR"); 
var car02 = new Car ("fiat", "BROM"); 
var car03 = new Car ("Renault", "BRROMMM");

car01.makeNoise(); 





// AYUDA DE ALFONSO Y RAUL

var Viking = function(name){

	                // numero de vidas 10, valor numerico 100

	this.name = name;
	this.health = Math.floor((Math.random() * (100 - 1)) + 1);
	this.strength = Math.floor((Math.random() * (100 - 1)) + 1);


	this.attack = function(){
	 	var damage = this.strength / 10
	 	return damage
	};
};




var Arena = function(viking01, viking02){

	this.fight = function(){
		while viking01.health> 0 && viking01.health> 0;
		viking02.health = viking02.health - viking01.attack();
		viking01.health = viking01.health - viking02.attack();
		console.log("viking01's helat is " + health + "and" + "viking02's helat is" + health);
	};
	this.showWiner = function(){

	};
};
	

 // TURNOS 5 and 8



var viking01 = new Viking("Paul"); 
var viking02 = new Viking("Rous"); 
var viking03 = new Viking("Mikkel");
var viking04 = new Viking("Alex");



console.log(viking01)
console.log(viking01.golpe())
console.log(viking02)
console.log(viking03)
console.log(viking04)






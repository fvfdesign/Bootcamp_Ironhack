// var Animal =function(name, sound){
// this.name = name;
// this.sound = sound;
// };

// Animal.prototype.makeNoise = function(){
// console.log(this.sound);

// Animal.prtotype.startNoise = function(){
// sentInterval(this.makeNoise, 5);
// };




function onLocation (position) {
  console.log('Your latitud is' + position.coords.latitude);
  console.log('Your longitud is' + position.coords.longitude);
  document.getElementById('position').innerHTML =  'Lat': + position.coords.latitude + ', long': position.coords.longitude 
}

function errorHandler(error){
	console.log(error);
}

getElementById('get-location').onclick = navigator.geolocation.getCurrentPosition()

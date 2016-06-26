// AYUDA DE ALFONSO Y CILLAS
// NO ACABADO, DA ERROR


var read = require('read');

options = {
    prompt: "What's your name?\n>"
};


function displayName (err, name){
    console.log("Your name is: " + name)

}
//read(options, displayName);

//......................................

var Question = function(text, answer){
	this.text= text;
	this.answer = answer;
	return {
		prompt: this.text,
		answer: this.answer
	}

}

var question01 = new Question("en que año estamos?", "2016"); 
var question02 = new Question("en que qué país estamos?", "Spain"); 
var question03 = new Question("que dia es hoy?", "Viernes");
var question04 = new Question("en que mes estamos?", "Junio");

var arrayQuestions =[question01, question02, question03, question04];




function checkAnswer(err, userAnswer){
	console.log("Your answer is: " + userAnswer);	
	if(userAnswer === arrayQuestions[i].answer){
		console.log("Your answer is correct");
		i = i + 1;
	}
	else{
		console.log("error!");
	}
}

var Quizz = function(arrayQuestions){
	i = 0;
	while (i < arrayQuestions.length) {
	read(arrayQuestions[i] ,checkAnswer);

	}
}
//read(arrayQuestions[0] ,checkAnswer);

var quizz1 = new Quizz(arrayQuestions);






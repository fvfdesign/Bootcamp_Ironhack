
$("body").append('<h1 class="title">Our awesome page</h1>');
$('.title').after('<div/>');
$('div').addClass("container");
$('.container').append('<ul/>');
$('ul').attr('id','shopping-list');
var fruits = ['apple', 'pineapple', 'watermelon'];
for(var i=0; i<fruits.length; i++){
    $('#shopping-list').append('<li>' + fruits[i] + '</li>');
}








// $("body").append('<div id="container" class="container" style="margin-top: 50px;">')

// $('.title').after('div/>');

// $('div').addClass('container');

// $("body").append('<ul>"Shoping List"</ul>')

// $('ul').prop('id','shoppinglist')

// $('shoppinglist')
// .append('<li>Apple</li>')





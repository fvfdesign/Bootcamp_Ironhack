//AYUDA DE RAUL Y ALFONSO

function searchTrack(e){
	e.preventDefault();
	var track = $('#name').val()
	var url = 'https:api.spotify.com/v1/search?type=track&query=' + track
	var request = $.get(url,"json");
	request.done(insertSongDetails);
}
function insertSongDetails(response){
	$('.title').text(response.tracks.items[0].name);
	$('.author').text(response.tracks.items[0].artists[0].name);
	$('.cover img').prop('src',response.tracks.items[0].album.images[0].url);
	addTrackToBox(response);
}
function addTrackToBox(response){
	$('.js-player').prop('src',response.tracks.items[0].preview_url)
	//console.log(response)
	// debugger
}
function playSong(){
	$('.js-player').trigger('play')

	if (!$('.btn-play').hasClass('playing')){
		$('.btn-play').toggleClass('playing')

	} else {
		$('.js-player').trigger('pause')
		$('.btn-play').toggleClass('playing')	
	}
}


$(document).ready(function(){
	$('.get_track').on('click', searchTrack);
	$('.btn-play').on('click', playSong);
})
// AYUDA DE REINIER Y ALFONSO


$(document).ready(function(){

	$('.get_artist').on('click', getArtist)
	function getArtist(){
		var artist = $('#name').val()
		var url = 'https://api.spotify.com/v1/search?type=artist&query=' + artist 
		var request = $.get(url,"json");

	//https://api.spotify.com/v1/artists/{id}

		$('.artist_list').empty();

		request.done(handleArtist)
	}

	function addartistToList(response){
		// console.log(response)
		response.artists.items.forEach(function(artist){
			$('.artist_list').append('<li>' + '<a class="artist list" href="https://api.spotify.com/v1/artists/'+ artist.id +'/albums">' + artist.name +'</li>');
			// $('.artist_list').append('<li>' + artist.name + '<img src='+ artist.images[0].url +'></li>');			
		})
	}
	function handleArtist(response){
	// console.log(response.artists.items[0].name)
	// console.log(response.artists.items[0].images[0].url)
	var source_url = response.artists.items[0].images[0].url
	// $('.image-div').append('<img src=' + response.artists.items[0].images[0].url+ '>')

	$('.image-div').append('<img src=' + source_url + '>')
	// <img src=response.artists.items[0].images[0].url >
	addartistToList(response)
	}
	$('.artist_list').on('click','.artist', function(event){
	
		event.preventDefault();
		var request = $.get(event.currentTarget.href, "json");

		$('.image-div').empty();

		request.done(addalbumToList)
	})

	function addalbumToList(response){
		console.log(response)
		
		response.items.forEach(function(album){
		$('.artist_album_list').append('<li><a class="album artist" href=https://api.spotify.com/v1/albums/' + album.id + '/tracks>'+  album.name + '<img src=' + album.images[0].url + '> </li>');
		})
	}
 
	$('.artist_album_list').on('click','.album', function(event){
		
		event.preventDefault();
		// var url_trakcs = "https:api.spotify.com/v1/tracks"
		var request = $.get(event.currentTarget.href, "json");

		request.done(addaTrackToList)
	})
	function addaTrackToList(response){
		console.log(response)
		// debugger
		response.items.forEach(function(track){
			$('.album_track_list').append('<li><a class="album track" target="_blank" href=' +track.preview_url + '>' + track.name + '</li>');
		// addartistToList(response)
		})
	}
});


	


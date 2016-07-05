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
		console.log(response)
		response.artists.items.forEach(function(artist){
			$('.artist_list').append('<li>' + '<a class="artist list" href="https://api.spotify.com/v1/artists/'+ artist.id +'/albums">' + artist.name +'</li>');
			// $('.artist_list').append('<li>' + artist.name + '<img src='+ artist.images[0].url +'></li>');
			
		})
	}


	function handleArtist(response){

	console.log(response.artists.items[0].name)
	console.log(response.artists.items[0].images[0].url)
	var source_url = response.artists.items[0].images[0].url
	// $('.image-div').append('<img src=' + response.artists.items[0].images[0].url+ '>')

	$('.image-div').append('<img src=' + source_url + '>')



	// <img src=response.artists.items[0].images[0].url >
	addartistToList(response)
	}




	$('.artist_list').on('click','.artist', function(event){

		//var album = $('#name_album').val();

		event.preventDefault();
		var request = $.get(event.currentTarget.href, "json");



		//request.done(addalbumToList)
		request.done(handleAlbum)

	
	})


	function addalbumToList(response){
	console.log(response)
	debugger
	// $('.artist_album_list').append('<li>'+ album.name +'</li>');

	}



	// function handleAlbum(response){

	// console.log(response.albums.items[0].name)
	// console.log(response.albums.items[0].images[0].url)
	// var source_url = response.albums.items[0].images[0].url
	// // $('.image-div').append('<img src=' + response.albums.items[0].images[0].url+ '>')

	// $('image_album_div').append('<img src=' + source_url + '>')




	// addalbumToList(response)
	// }

})


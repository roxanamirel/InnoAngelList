$(document).ready(function(){

	/*  Hamburger Menu & Icon  */
	$('.hamburger').on('click', function(e){		
		e.preventDefault();
		$(this).toggleClass('opned');
		$('header nav').toggleClass('active');		
	});

	/*  Advanced search form & Icon  */
	$('#advanced_search_btn').on("click", function(e){
		e.preventDefault();

		var ads_box =$('.advanced_search');
		
		if(!ads_box.hasClass('advanced_displayed')){

			$(this).addClass('active');
			ads_box.stop().fadeIn(200).addClass('advanced_displayed');

		}else{

			$(this).removeClass('active');
			ads_box.stop().fadeOut(200).removeClass('advanced_displayed');

		}

	});
});
/*
function searchStartupsByLocation(event) {
	if (event.keyCode == 13) {
		var startupsLocation = document.getElementById('max_price').value;
		
		document.getElementById('search_results').style.backgroundColor = 'green';
		//document.getElementById('search_results').load(document.URL +  ' #search_results');
		alert(startupsLocation);
		$('#search_results').load('startupsTable.jsp');
		//document.getElementById('search_results').innerHTML = "hello world";
	}
}
*/
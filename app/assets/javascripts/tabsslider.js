//slideshow_fnc

function prevSlide(){

	var $next1 = $('.latest_project .project div.displayslide');

	nextnumber = parseInt($next1[0].id.substring(5,6));

	nextnumber--;
	if (nextnumber<1) nextnumber = maxslidernumber ;

	changeSlide2this(nextnumber);

}

function nextSlide(){

	var $next1 = $('.latest_project .project div.displayslide');

	nextnumber = parseInt($next1[0].id.substring(5,6));

	nextnumber++;
	if (nextnumber>maxslidernumber ) nextnumber = 1;

	changeSlide2this(nextnumber);

}

function changeSlide2this(number){
	var maxnumber = maxslidernumber ;

	var $active1 = $('.latest_project .project div.displayslide');

	var $next1 = $('#slide'+number);

	$active1.addClass('last-active');
	$('ul.project_bubles li a').each(function(index){
		$(this).removeClass('active');
	});
	$('#slide-tab' + number).addClass('active');

		nextnumber = parseInt($next1[0].id.substring(5,6));

		if (1)
		{
			inanimation = true;

			$active1.css({opacity: 1.0})

			$next1.css({opacity: 0.0});

			$active1
				.removeClass('displaynone')
				.addClass('displayslide')
				.animate({opacity: 0.0}, 500, function() {
					if(!lockslide)
					{
					 $active1.removeClass('displayslide');
					 $active1.addClass('displaynone');
					

					 $next1.css({opacity: 0.0})
						.removeClass('displaynone')
						.addClass('displayslide')



					 $next1.animate({opacity: 1.0}, 500, function() {
							if(!lockslide)
							{
								

							}
							lockslide=false;
							inanimation = false;

						});

					}
					lockslide=false;
					inanimation = false;
				});

			
		}

}

var lockslide = false;
var slideTimer = null;
var inanimation = false;
var slideshow = true;

jQuery.preloadImages = function()
{
  for(var i = 0; i<arguments.length; i++)
  {
    jQuery("<img>").attr("src", arguments[i]);
  }
}


function slideSwitch() {
	if (slideshow)
	{
		var $active1 = $('.latest_project .project div.displayslide');
		var lastone1 = false;


		if ( $active1.length == 0 ) {$active1 = $('.latest_project .project div.tabb:last'); }


		var $next1 =  $active1.next().length ? $active1.next()
			: $('.latest_project .project div.tabb:first');

		if (!$active1.next().length )	 lastone1 = true;


		$active1.addClass('last-active');

		nextnumber = parseInt($next1[0].id.substring(5,6));

		if (1)
		{
			inanimation = true;

			$active1.css({opacity: 1.0})

			$next1.css({opacity: 0.0});

			$active1
				.removeClass('displaynone')
				.addClass('displayslide')
				.animate({opacity: 0.0}, 500, function() {
					if(!lockslide)
					{
					 $active1.removeClass('displayslide');
					 $active1.addClass('displaynone');
					

					 $next1.css({opacity: 0.0})
						.removeClass('displaynone')
						.addClass('displayslide')



					 $next1.animate({opacity: 1.0}, 500, function() {
							if(!lockslide)
							{
								

							}
							lockslide=false;
							inanimation = false;

						});

					}
					lockslide=false;
					inanimation = false;
				});

			
		}
	}
}


function setSlidePause(){
	var maxnumber = maxslidernumber ;
	for(i =1;i<=maxnumber;i++)
	{
		$('#slide'+i).mouseenter(
			function() {
				clearInterval(slideTimer);
			}
		);
		$('#slide'+i).mouseleave(
			function() { 
				clearInterval(slideTimer);
				slideTimer = setInterval( "slideSwitch()", slideTimeout );
			}
		);
	}
	$('.sec_menu').mouseenter(
				function() {
			clearInterval(slideTimer);
		}
	);
	$('.sec_menu').mouseleave(
		function() { 
			clearInterval(slideTimer);
			slideTimer = setInterval( "slideSwitch()", slideTimeout );
		}
	);


}

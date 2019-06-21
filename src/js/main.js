$(document).ready(function() {
    $('a[data-rel^=lightcase]').lightcase();

    $('a[data-rel=lightcase:myCollection:slideshow]').lightcase({
    	transition: 'scrollHorizontal',
    	showSequenceInfo: false,
    	showTitle: false
    });
});
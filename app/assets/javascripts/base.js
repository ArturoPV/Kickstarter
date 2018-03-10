$("body > div > div.container > ul > li").on('click', function (event){
	$("body > div > div.container > ul > li").removeClass("active");
	$("body > div > div.container > ul > li > a").removeClass("active");
	$(event.target).parent().addClass('active');
});

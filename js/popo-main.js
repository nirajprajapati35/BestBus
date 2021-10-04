<!-- OnClick li active Script -->

	
	$(document).ready(function(){

		$('.nav .nav-item').click(function(){
			$('.nav .nav-item').removeClass('active');
        	$(this).addClass('active');	
		});


	});



<!-- Accordion Plus / Minus Script -->

	
	function toggleIcon(e) {
    $(e.target)
        .prev('.card-header')
        .find(".more-less")
        .toggleClass('popofa-plus1 popofa-minus2');
	    }
	    $('.popo-accordion').on('hidden.bs.collapse', toggleIcon);
	    $('.popo-accordion').on('shown.bs.collapse', toggleIcon);



<!-- Sidebar Promocode Script -->

	$(document).ready(function(){

		$('#promo-link').click(function(){
			//console.log('e');
			$(this).hide();
			$('.promo-code').css('display' , 'block');
		});

		$('.promo-code span').click(function(){
			//console.log('f');
			$('.promo-code').hide();
			$('.applied-code').css('display' , 'inline-block');
		});

		$('.applied-code .cancel-promo').click(function(){
			//console.log('g');
			$('.applied-code').hide();
			$('#promo-link').css('display' , 'block');
		});
	});


<!-- Onclick of Sidebar Add to Cart Button Script -->

	
	$(document).ready(function(){

		$('.popo-cart').click(function(){
			$('#sidebar .cart-item #domain-item-02').css('display' , 'block');
		});

	});


<!-- SideBar OnClick of No Hosting Text Open The Next Accordion -->

	
	$(document).ready(function(){

		$('#no-hosting').click(function(){
			$('#no-hosting').hide();
			$('.popo-accordion .card #collapseOne').removeClass('show');
			$('.accordion.popo-accordion #headingOne .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
			$('.popo-accordion .card #collapseTwo').addClass('show');
			$('.accordion.popo-accordion #headingTwo .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
		});

		$('.basic-plan').click(function(){
			$('#sidebar .cart-item #basic-plan').css('display' , 'block');
			$('#sidebar .cart-item #standard-plan').hide();
			$('#sidebar .cart-item #premium-plan').hide();
			$('.popo-accordion .card #collapseTwo').removeClass('show');
			$('.accordion.popo-accordion #headingTwo .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
			$('.popo-accordion .card #collapseThree').addClass('show');
			$('.accordion.popo-accordion #headingThree .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
		});

		$('.standard-plan').click(function(){
			$('#sidebar .cart-item #standard-plan').css('display' , 'block');
			$('#sidebar .cart-item #basic-plan').hide();
			$('#sidebar .cart-item #premium-plan').hide();
			$('.popo-accordion .card #collapseTwo').removeClass('show');
			$('.accordion.popo-accordion #headingTwo .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
			$('.popo-accordion .card #collapseThree').addClass('show');
			$('.accordion.popo-accordion #headingThree .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
		});

		$('.premium-plan').click(function(){
			$('#sidebar .cart-item #premium-plan').css('display' , 'block');
			$('#sidebar .cart-item #standard-plan').hide();
			$('#sidebar .cart-item #basic-plan').hide();
			$('.popo-accordion .card #collapseTwo').removeClass('show');
			$('.accordion.popo-accordion #headingTwo .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
			$('.popo-accordion .card #collapseThree').addClass('show');
			$('.accordion.popo-accordion #headingThree .popo-plus').toggleClass('popofa-plus1 popofa-minus2');
		});

	});



<!-- OnClick of Sidebar Close Icon Script -->
	
	$(document).ready(function(){

		$('.close-01').click(function(){
			$('#domain-item-01').hide();
		});

		$('.close-02').click(function(){
			$('#domain-item-02').hide();
		});

		$('.close-03').click(function(){
			$('#basic-plan').hide();
			$('#standard-plan').hide();
			$('#premium-plan').hide();
		});

	});


<!-- OnScroll Sticky SideBar Script -->


 	$(function() {
        var offset = $("#sidebar").offset();
        var topPadding = 15;
        $('.modal').scroll(function() {
            if ($('.modal').scrollTop() > offset.top) {
                $("#sidebar").stop().animate({
                    marginTop: $('.modal').scrollTop() - offset.top + topPadding
                });
            } else {
                $("#sidebar").stop().animate({
                    marginTop: 0
                });
            };
        });
    });


<!-- Pricing Table Dropdown click Change Value Script -->

	$('#basic-value').on('change',function(){
	  $("#total-basic").text($(this).val());
	});

	$('#standard-value').on('change',function(){
	  $("#total-standard").text($(this).val());
	});

	$('#premium-value').on('change',function(){
	  $("#total-premium").text($(this).val());
	});

	$('#basic-value2').on('change',function(){
	  $("#total-basic2").text($(this).val());
	});

	$('#standard-value2').on('change',function(){
	  $("#total-standard2").text($(this).val());
	});

	$('#premium-value2').on('change',function(){
	  $("#total-premium2").text($(this).val());
	});

<!-- Display Text Box Value on Pop-up text-box/congrats name/cart domain name -->
	
	$("#search-domain").click(function() {
	  	var name = $("#d-name").val();
	  	console.log('name: ' + name);
	 	$('.popo-accordion .card .popo-collapse .card-body .domian-congrats .text-congrats #name-f-domain').text(name);
	 	$('.accordion .card .card-body .madpopo-domain .line-tab-content .tab-pane .input-group #domain-name-pop').val(name);
	 	$('.popo-content .cart-item .cart-product p #domain-name-cart').text(name);
	});	
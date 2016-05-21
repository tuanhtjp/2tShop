// JavaScript Document
jQuery(document).ready(function($){
		
	//slider1 - owl-carousel 
	  $('.slider1').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  responsive:{
		    0:{
				nav:false
			},
			768:{
				nav:true
			},
			922:{
				nav:true
			},
			1200:{
				nav:true
			}
	  },
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,
	});
		 
		 //slider1 - owl-carousel 
	  $('#slidercare').owlCarousel({
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  responsive:{
		  	0:{
				items:1,
				nav:false,
				autoplay:true
			},
		  	360:{
				items:2,
				nav:false,
				autoplay:true,
			},
		  	640:{
				items:3,
				nav:false,
				autoplay:true
			},
		    736:{
				items:3,
				nav:false,
				autoplay:true
			},
			768:{
				items:3,
				nav:true
			},
			991:{
				items:4,
				nav:true
			},
			1200:{
				items:5,
				nav:true
			}
	  },
	  nav:true,
	  dots:true,
	  autoplay:false,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });
		 
	//owl-carousel - slidersale
	  $('#slidersale').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  responsive:{
		    0:{
				nav:false
			},
			768:{
				nav:false
			},
			922:{
				nav:true
			},
			1200:{
				nav:true
			}
	  },
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,
	  
		 });
		 
	//owl-carousel - sliderbid
	  $('#sliderbid').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  responsive:{
		    0:{
				nav:false
			},
			768:{
				nav:false
			},
			922:{
				nav:true
			},
			1200:{
				nav:true
			}
	  },
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });
		 
	//slidercath1-owl-carousel
	  $('#slidercath1').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  responsive:{
		    0:{
				nav:false
			},
			768:{
				nav:false
			},
			922:{
				nav:true
			},
			1200:{
				nav:true
			}
	  },
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,
	  
		 });
	
	//slidercath2-owl-carousel
	  $('#slidercath2').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:false,
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });
	
	//slidercath3-owl-carousel
	  $('#slidercath3').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:false,
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });
	
	//slidercover slideroutlet
	  $('#slideroutlet').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:false,
	  nav:true,
	  dots:true,
	  autoplay:true,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });
	  
	//imageslider
	$('#imageslider').owlCarousel({
		margin:0,
		responsiveClass:true,
		nav:true,
		dots:false,
		autoplay:false,
		autoHeight:false,
		autoplayTimeout:4000,
		autoplayHoverPause:true,
		navText:false,
		responsive:{
			0:{
				items:1,
				nav:false
			},
			414:{
				items:1,
				nav:false
			},
			736:{
				items:1
			},
			768:{
				items:4
			},
			992:{
				items:6
			},
			1200:{
				items:6
			}
		}
		
	});	
	
	//imageslider1
	$('#imageslider1').owlCarousel({
		margin:0,
		responsiveClass:true,
		nav:true,
		dots:false,
		autoplay:false,
		autoHeight:false,
		autoplayTimeout:4000,
		autoplayHoverPause:true,
		navText:false,
		responsive:{
			0:{
				items:1,
				nav:false
			},
			414:{
				items:1,
				nav:false
			},
			736:{
				items:1
			},
			768:{
				items:4
			},
			992:{
				items:6
			},
			1200:{
				items:6
			}
		}
	});	
	
	//imageslider2
	$('#imageslider2').owlCarousel({
		margin:0,
		nav:true,
		dots:false,
		autoplay:false,
		autoHeight:false,
		autoplayTimeout:4000,
		autoplayHoverPause:true,
		navText:false,
		responsiveClass:true,
		responsive:{
			0:{
				items:1,
				nav:false
			},
			414:{
				items:1,
				nav:false
			},
			736:{
				items:1
			},
			768:{
				items:4
			},
					992:{
				items:6
			},
			1200:{
				items:6
			}
		}
	});
	
	//slider-pop-product
	  $('#slider-poppro').owlCarousel({
	  items:1,
	  loop:true,
	  margin:0,
	  responsiveClass:true,
	  nav:true,
	  dots:true,
	  autoplay:false,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });

	//request
	  $('#slider-request').owlCarousel({
	  loop:true,
	  margin:5,
	  responsiveClass:true,
	  responsive:{
		  	0:{
				items:1,
				nav:false
			},
			533:{
				items:2,
				nav:false
			},
			736:{
				items:2,
				nav:false,
			},
			768:{
				items:2
			},
			1200:{
				items:3
			},
		},
	  nav:true,
	  dots:true,
	  autoplay:false,
	  autoHeight:false,
	  autoplayTimeout:4000,
	  autoplayHoverPause:false,

		 });

	//image detail click
		$('.pi-item a').click(function() {
		var parent = $(this).parent();
		var grand = $(this).parent().parent().parent();
		var x = $(this).attr('href');
		$('.pi-item',$(grand)).removeClass("active");
		$(parent).addClass("active");
		$('.pd-image img').attr('src',x);
		return false;
	});
	
	// function tab product detail click
	$('a', $('.pd-tabs .pt-title ul li.pt-tabscroll')).click(function() {
		var id = $(this).attr('href');
		var navHeight = $('.header-top').height();
		$('html, body').animate({scrollTop: $(id).offset().top - navHeight}, 700);
		return false;
	});
	
	// pay-left
		$('li', $('.pay-left ul')).click(function() {
		$('.pay-left ul li .fa').removeClass('fa-dot-circle-o').addClass('fa-circle-thin');
		$('.pay-left ul li.active').removeClass('active');
		$(this).addClass('active');
		$('.fa',$(this)).removeClass('fa-circle-thin').addClass('fa-dot-circle-o');
		$('.pay-right .pr-tab.active').hide().removeClass('active');
		var activeTab = $(this).attr('for');
		$(activeTab).addClass('active').fadeIn();
		return false;
	});
	// filter
		$('li', $('.filter-left ul')).click(function() {
		$('.filter-left ul li .fa').removeClass('fa-dot-circle-o').addClass('fa-circle-thin');
		$('.filter-left ul li.selected').removeClass('selected');
		$(this).addClass('selected');
		$('.fa',$(this)).removeClass('fa-circle-thin').addClass('fa-dot-circle-o');
		$('.filter-right .pr-tab.active').hide().removeClass('active');
		var activeTab = $(this).attr('for');
		$(activeTab).addClass('active').fadeIn();
		return false;
	});
	// nav-user
	//	$('li', $('.leftcate1 ul')).click(function() {
	//	$('.nav-user ul li .fa').removeClass('fa-dot-circle-o').addClass('fa-circle-thin');
	//	$('.nav-user ul li.active').removeClass('active');
	//	$(this).addClass('active');
	//	$('.fa',$(this)).removeClass('fa-circle-thin').addClass('fa-dot-circle-o');
	//	$('.right-alluser .pr-tab.active').hide().removeClass('active');
	//	var activeTab = $(this).attr('for');
	//	$(activeTab).addClass('active').fadeIn();
	//	return false;
	//});
	//checkout click choose 
	$(".box-bank").click(function(){
		var parent = $(this).parent();	
		var grand = $(this).parent().parent();	
		if ($(parent).hasClass("active")) {
			//logo
			$('.content-trans .bank-gf li',$(parent)).removeClass("active");
			$('.content-trans .bank-gf li a .logo-tick',$(parent)).remove();
        } else {
			$('li.active .content-trans',$(grand)).slideUp();
			//logo
			$('.all-bank .show-bank .active .content-trans .bank-gf li').removeClass("active");
			$('.logo-tick',$('.all-bank .show-bank .active .content-trans .bank-gf li a')).remove();
			//logo
			$('.content-trans .bank-gf li:first',$(parent)).addClass("active");
			$('.content-trans .bank-gf li:first a',$(parent)).append("<span class='logo-tick'></span>");
        }
		return false;
	});
	$(".all-bank .bank-gf a").click(function() {
        var parent = $(this).parent();
        var grand = $(this).parent().parent().parent().parent().parent();
        if ($(parent).hasClass("active")) {
            //$(parent).removeClass("active");
            //$(grand).removeClass("border-right-none");
            //$('.logo-tick', $(this)).remove();
        } else {
            $('li', $('.all-bank .bank-gf')).removeClass("active");
            $(parent).addClass("active");
            $('.box-bank li', $('.all-bank')).removeClass("border-right-none");
            $('.logo-tick', $('.all-bank')).remove();
            $(this).append("<span class='logo-tick'></span>");
        }
        return false;
    });
	 //popout hoverjs
		$('.popout-hoverjs > .ba-nolink').click(function(e) {
			var parent = $(this).parent();
			var grand = $(this).parent().parent();
			$('.popout-submenu',$(grand)).hide();
			$('li',$(grand)).removeClass("active");
			$(parent).addClass("active");
			$('.popout-submenu',$(parent)).show();
			return false;
		});
		$('body').click(function(e) {       
			var bs = $('.popout-hoverjs .popout-submenu');  
			if (bs.is(':visible') && $(e.target).parents('.popout-hoverjs .popout-submenu').length == 0){
				$('.box-admin > ul > li').removeClass("active");
				bs.hide();
			}
		}); 
		// Click checked vat
	   $('input.check-vat').change(function(){
			if($(this).is(':checked'))
			{
				$('form#vat').css('display','block');
			}
			else
			{
				$('form#vat').css('display','none');
			}
		   });
		   // Click checked term
	   $('input.pop-term').change(function(){
			if($(this).is(':checked'))
			{
				$('.bs-term-modal-lg').modal('show');
			}
			else
			{
				$('.bs-term-modal-lg').modal('hidden');
			}
		   });
		// Click delete coupon
		  $('button.input-coupon').click(function(){
			$('div#show-coupon').css('display','block');
		})
	//popout-product
	$( document ).ready(function() {
	$(window).scroll(function(){
	if($(this).scrollTop()>1000){
		$('.popout-product').css('top','0');
		} else {
		$('.popout-product').css('top','-100px');	
			}
	});
    
});
	//modal-signin
	/*$( document ).ready(function() {
		$('.bs-signin-modal-sm').modal('show');
	});
	//modal-checkout-step3
	$( document ).ready(function() {
		$('#checkoutModal').modal('show');
	});*/
	// button checkout igree
	$('.checkout-toggle').click(function(){
		if ($(this).hasClass("fa-toggle-on")) {
            $(this).removeClass("fa-toggle-on");
			$(this).addClass("fa-toggle-off");
			$(this).attr('data-original-title','Tắt');
        } else {
			$(this).removeClass("fa-toggle-off");
			$(this).addClass("fa-toggle-on");
			$(this).attr('data-original-title','Bật');
        }
		return false;
	});
	//loading
		$(window).load(function(){
		$('.loading').css('display', 'none');
		$('.warrper').css('opacity',1);
		$('.price-request').css('right','-15px');
		$('.support-request').css('right','-15px');
	});
	// Fix-khieunai
		  $('button.btn-fix').click(function(){
			$('div#fix-khieunai').css('display','block');
			$('div#inputed-khieunai').css('display','none');
		})
	//menu
	  $('nav#menu').mmenu();
	  
	//tooltip
	  $(function () {
  	  $('[data-toggle="tooltip"]').tooltip()
		});
	//popover
	$(function () {
  $('[data-toggle="popover"]').popover()
});

	//CloudZoom
	  CloudZoom.quickStart();
});


jQuery(document).ready(function($){
	$('.alias-title').click(function(){
		$('.alias-title .listcathome').slideToggle();
	});
	$('.support-request').click(function(){
		$('.support-request-box').css('right','0');
		$('.price-request').css('right','-150px');
		$('.support-request').css('right','-150px');
	});
	$('.support-request-box .head-box .close-box').click(function(){
		$('.support-request-box').css('right','-230px');
		$('.price-request').css('right','-15px');
		$('.support-request').css('right','-15px');
	});
	
	$('.ebay-beta-feedback').click(function(){
		$('.popup-bottom').fadeOut(500);
	});
	/*jQuery(document).mouseup(function($){
		var support_box = $(".support-request-box");

		if (!support_box.is(e.target) // if the target of the click isn't the container...
			&& support_box.has(e.target).length === 0) // ... nor a descendant of the container
		{
			$('.support-request-box').css('right','-230px');
			$('.price-request').css('right','-15px');
			$('.support-request').css('right','-15px');
		}
	});*/
});
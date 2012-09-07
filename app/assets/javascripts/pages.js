$(document).ready(function (){
        $("#about_link").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $("#about").offset().top - ($("#navigation").height() + 30)
                     }, 1000);
            //});
        });

		$("#signup_link").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $("#signup").offset().top - ($("#navigation").height() + 45)
                     }, 1000);
            //});
        });

		$("#cal_link").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $("#cal").offset().top - ($("#navigation").height() + 45)
                     }, 1000);
            //});
        });

		$("#contact_link").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $("#contact").offset().top - ($("#navigation").height() + 45)
                     }, 1000);
            //});
        });
		
		$("#logo_link").click(function (){
            //$(this).animate(function(){
                $('html, body').animate({
                    scrollTop: $("#top_bar").offset().top
                     }, 1000);
            //});
        });

    });
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery.themepunch.plugins.min
//= require jquery.themepunch.revolution
//= require superfish
//= require shared/bootstrap
//= require retina
//= require validate
//= require jquery.wizard
//= require jquery.icheck
//= require jquery.validator
//= require jquery.placeholder
//= require functions
//= require mapmarker.jquery
//= require mapmarker
//= require classie
//= require uisearch
//= require moment
//= require fullcalendar
//= require dashboard

//= require_self

// $(document).ready(function (){
// 	$("#sidebar-toggle").click(function(e) {
// 	        e.preventDefault();
// 	        $("#sidebar").toggleClass("active");
// 	});
// });'
$(document).ready(function () {
	new UISearch( document.getElementById( 'sb-search' ) );

	revapi = jQuery('.tp-banner').revolution(
	{
		delay:9000,
		startwidth:1700,
		startheight:600,
		hideThumbs:true,
		navigationType:"none",
		fullWidth:"on",
		forceFullWidth:"on"
	});

	// WIZARD  ===============================================================================
jQuery(function($) {
				// Basic wizard with validation
				$("#survey_container").wizard({
					stepsWrapper: "#wrapped",
					submit: ".submit",
					beforeSelect: function( event, state ) {
						var inputs = $(this).wizard('state').step.find(':input');
						return !inputs.length || !!inputs.valid();
					}
			

				}).validate({
					errorPlacement: function(error, element) { 
						if ( element.is(':radio') || element.is(':checkbox') ) {
							error.insertBefore( element.next() );

						} else { 
							error.insertAfter( element );
						}
					}
				});
				
				//  progress bar
				$("#progressbar").progressbar();

				$("#survey_container").wizard({
					afterSelect: function( event, state ) {
						$("#progressbar").progressbar("value", state.percentComplete);
						$("#location").text("(" + state.stepsComplete + "/" + state.stepsPossible + ")");
					}
				});

			});
			

});
// OHTER ===============================================================================
 $(document).ready(function(){   
		//Check and radio input styles
		$('input.check_radio').iCheck({
    	checkboxClass: 'icheckbox_square-aero',
   	    radioClass: 'iradio_square-aero'
  		});
		
			//Pace holder
		$('input, textarea').placeholder();
    });
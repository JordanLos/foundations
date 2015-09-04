$( document ).ready(function() {
	/*
	$('.click-me').click(function() {
		//Highlights clicked tab
		$( this ).addClass( "focus" );
		//Unhighlights other tabs
		$( '.click-me' ).not( this ).removeClass( 'focus' );
		//Finds the clicked tab's index number
		var self  = $( this ).index();
		//Matches the tab to its card
		var	matchedTarget = $( '.click-me-object' ).eq(self);
		//Displays the card
		matchedTarget.css("display", "block" );
		//Hides all other cards
		$( '.click-me-object' ).not(matchedTarget).css("display", "none");
	});
	*/
	function switchCard() {
		//Highlights clicked tab
		$( this ).addClass( "focus" );
		//Unhighlights other tabs
		$( '.click-tab-place' ).not( this ).removeClass( 'focus' );
		//Finds the clicked tab's index number
		var self  = $( this ).index();
		//Matches the tab to its card
		var	matchedTarget = $( '.click-me-object' ).eq(self);
		//Displays the card
		matchedTarget.css("display", "block" );
		//Hides all other cards
		$( '.click-me-object' ).not(matchedTarget).css("display", "none");
	};
	
	$( '.click-tab-place' ).hover(switchCard);














});

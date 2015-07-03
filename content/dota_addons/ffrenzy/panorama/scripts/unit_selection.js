"use strict";

var skip = false;

function OnUpdateSelectedUnit( event )
{
	if (skip == true){
		skip = false;
		$.Msg("skip")
		return
	}

	var iPlayerID = Players.GetLocalPlayer();
	var selectedEntities = Players.GetSelectedEntities( iPlayerID );
	var mainSelected = Players.GetLocalPlayerPortraitUnit();
	
	$.Msg( "OnUpdateSelectedUnit, main selected index: "+mainSelected);

	$.Msg( "Player "+iPlayerID+" Selected Entities:" );
	for (var i = 0; i < selectedEntities.length; i++) {
		$.Msg( selectedEntities[i]+" "+Entities.IsCreature( selectedEntities[i] ) );
		if ( Entities.IsCreature( selectedEntities[i] )) {
			$.Msg( selectedEntities[i]+ " is a creature" );
		};
	};

	skip = true; // Makes it skip an update
	//GameUI.SelectUnit(someIndex, false);
}

function OnUpdateQueryUnit( event )
{
	$.Msg( "OnUpdateQueryUnit" );
}


(function () {
	GameEvents.Subscribe( "dota_player_update_selected_unit", OnUpdateSelectedUnit );
	GameEvents.Subscribe( "dota_player_update_query_unit", OnUpdateQueryUnit );
})();
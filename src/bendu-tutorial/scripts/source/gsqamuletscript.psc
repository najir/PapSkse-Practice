Scriptname GSQAmuletScript extends ObjectReference  

Event OnPickup(ObjectReference newContainer, ObjectReference oldContainer)
	if(newContainer == Game.GetPlayer())
		GSQ01.SetObjectiveDisplayed(30)
		GSQ01.SetStage(30)
	endif
EndEvent

Event OnContainerChange(ObjectReference newContainer, ObjectReference oldContainer)
	if(oldContainer == Game.GetPlayer() && GSQ01.GetStage() != 40)
		GSQ01.SetObjectiveDisplayed(20)
		GSQ01.SetStage(20)
	endif
EndEvent

Quest Property GSQ01  Auto  

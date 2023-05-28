Scriptname GSQBenduOloScript extends ObjectReference  

Event OnDeath(Actor Killer)
	if(!GSQ01.IsCompleted())
		GSQ01.SetStage(200)
	endif
EndEvent

Quest Property GSQ01  Auto  

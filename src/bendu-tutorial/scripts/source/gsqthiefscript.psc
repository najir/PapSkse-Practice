Scriptname GSQThiefScript extends ObjectReference  

Event OnDeath(Actor Killer)
	TutorialQuest.SetObjectiveDisplayed(20)
	TutorialQuest.SetStage(20)
EndEvent

Quest Property TutorialQuest  Auto  

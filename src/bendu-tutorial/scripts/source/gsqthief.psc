Scriptname GSQThief extends ReferenceAlias  

Event OnDeath(Actor Killer)
	GetOwningQuest().SetObjectiveDisplayed(20)
	GetOwningQuest().SetStage(20)
EndEvent
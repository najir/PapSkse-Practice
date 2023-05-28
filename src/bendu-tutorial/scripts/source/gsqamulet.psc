Scriptname GSQAmulet extends ReferenceAlias  

Event OnPickup(ObjectReference newContainer, ObjectReference oldContainer)
	if(newContainer == Game.GetPlayer())
		GetOwningQuest().SetObjectiveDisplayed(30)
		GetOwningQuest().SetStage(30)
	endif
EndEvent

Event OnContainerChange(ObjectReference newContainer, ObjectReference oldContainer)
	if(oldContainer == Game.GetPlayer() && GetOwningQuest().GetStage() != 40)
		GetOwningQuest().SetObjectiveDisplayed(20)
		GetOwningQuest().SetStage(20)
	endif
EndEvent


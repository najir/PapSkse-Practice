Scriptname GSQQuestGiver extends ReferenceAlias  

Event OnDeath(Actor akKiller)
	if (!GetOwningQuest().IsCompleted())
		GetOwningQuest().SetStage(200)
	endif
EndEvent

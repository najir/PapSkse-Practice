Scriptname GSQGuardPlacementFuture extends ObjectReference  

Quest Proeprt GSQGuardPlacementQuest Auto

ObjectReference r
ObjectReference Property result Hidden
    function Set(ObjectReference fnResult)
        done = true
        r = fnResult
    EndFunction
EndProperty

bool isDone = false
bool function GetIsDone()
    return isDone
EndFunction

ObjectReference function GetResult()
    int i = 0
    while !done && i < 100
        i+= 1
        Utility.Wait(0.1)
    endwhile
    RegisterForSingleUpdate(0.1)

    if i >= 100
        (GuardPlacementQuest as GuardPlacementThreadManager).TryToUnlockThread(self as ObjectReference)
    endif
    return r
EndFunction

Event OnUpdate()
    self.Disable()
    self.Delete()
EndEvent
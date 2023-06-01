Scriptname GSQGuardPlacementThread extends Quest Hidden 

ObjectReference futureRef
bool isThreadQueued = false
ActorBase guardRef
Static markerRef

ObjectReference function GetAsync(Activator future, ObjectReference futureAnchor, ActorBase guard, Static xMarker)

    isThreadQueued = true
    guardRef = guard
    markerRef = xMarker

    futureRef = futureAnchor.PlaceAtMe(future)
    return futureRef

EndFunction

bool function HasActiveThread()
    return isThreadQueued
EndFunction

bool function HasFuture(ObjectReference future)
    if future == futureRef
        return true
    else
        return false
    endif
EndFunction

bool function ForceUnlock()
    ClearThread()
    isThreadQueued = false
    return true
EndFunction

Event OnGuardPlacement()
    if isThreadQueued
        ObjectReference tempMarker = Game.GetPlayer().PlaceAtMe(markerRef)
        MoveGuardMarkerNearPlayer(tempMarker)
        ObjectReference adjustedMarker = tempMarker.PlaceAtMe(guardRef)
        
        tempMarker.disable()
        tempMarker.delete()

        (futureRef as GuardPlacementFuture).result = result

        ClearThread()

        isThreadQueued = false
    endif
EndEvent

function MoveGuardMarkerNearPlayer(ObjectReference marker)

EndFunction

function ClearThread()
    guardRef = None
    markerRef = None
EndFunction

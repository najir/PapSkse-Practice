Scriptname GSQSpawnGroupEffectScript extends ActiveMagicEffect  

Quest Property GSQGuardPlacementQuest Auto

ActorBase Property Guard Auto

ObjectReference Guard1
ObjectReference Guard2
ObjectReference Guard3
ObjectReference Guard4
ObjectReference Guard5
ObjectReference Guard6
ObjectReference Guard7
ObjectReference Guard8
ObjectReference Guard9
ObjectReference Guard10
ObjectReference Guard11
ObjectReference Guard12
ObjectReference Guard13
ObjectReference Guard14
ObjectReference Guard15
ObjectReference Guard16
ObjectReference Guard17
ObjectReference Guard18
ObjectReference Guard19
ObjectReference Guard20

Event OnEffectStart(Actor target, Actor caster)
    if caster == Game.GetPlayer()

        GuardPlacementThreadManager threadManager = GuardPlacementQuest as GuardPlacementThreadManager

        ObjectReference guard1Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard2Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard3Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard4Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard5Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard6Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard7Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard8Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard9Future  = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard10Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard11Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard12Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard13Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard14Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard15Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard16Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard17Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard18Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard19Future = threadManager.PlaceConjuredGuardAsync(Guard)
        ObjectReference guard20Future = threadManager.PlaceConjuredGuardAsync(Guard)

        threadManager.WaitForThread()

        Guard1  = (guard1Future  as GSQGuardPlacementFuture).GetResult()
        Guard2  = (guard2Future  as GSQGuardPlacementFuture).GetResult()
        Guard3  = (guard3Future  as GSQGuardPlacementFuture).GetResult()
        Guard4  = (guard4Future  as GSQGuardPlacementFuture).GetResult()
        Guard5  = (guard5Future  as GSQGuardPlacementFuture).GetResult()
        Guard6  = (guard6Future  as GSQGuardPlacementFuture).GetResult()
        Guard7  = (guard7Future  as GSQGuardPlacementFuture).GetResult()
        Guard8  = (guard8Future  as GSQGuardPlacementFuture).GetResult()
        Guard9  = (guard9Future  as GSQGuardPlacementFuture).GetResult()
        Guard10 = (guard10Future as GSQGuardPlacementFuture).GetResult()
        Guard11 = (guard11Future as GSQGuardPlacementFuture).GetResult()
        Guard12 = (guard12Future as GSQGuardPlacementFuture).GetResult()
        Guard13 = (guard13Future as GSQGuardPlacementFuture).GetResult()
        Guard14 = (guard14Future as GSQGuardPlacementFuture).GetResult()
        Guard15 = (guard15Future as GSQGuardPlacementFuture).GetResult()
        Guard16 = (guard16Future as GSQGuardPlacementFuture).GetResult()
        Guard17 = (guard17Future as GSQGuardPlacementFuture).GetResult()
        Guard18 = (guard18Future as GSQGuardPlacementFuture).GetResult()
        Guard19 = (guard19Future as GSQGuardPlacementFuture).GetResult()
        Guard20 = (guard20Future as GSQGuardPlacementFuture).GetResult()

        ;/ Non multi-threaded code example
        MoveGuardMarkerNearPlayer(1)
        Guard1  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(2)
        Guard2  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(3)
        Guard3  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(4)
        Guard4  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(5)
        Guard5  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(6)
        Guard6  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(7)
        Guard7  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(8)
        Guard8  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(9)
        Guard9  = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(10)
        Guard10 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(11)
        Guard11 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(12)
        Guard12 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(13)
        Guard13 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(14)
        Guard14 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(15)
        Guard15 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(16)
        Guard16 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(17)
        Guard17 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(18)
        Guard18 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(19)
        Guard19 = GuardMarker.PlaceAtMe(Guard)
        MoveGuardMarkerNearPlayer(20)
        Guard20 = GuardMarker.PlaceAtMe(Guard) /;
    endif
EndEvent

Event OnEffectFinish(Actor target, Actor caster)
    if caster == Game.GetPlayer()
        Guard1.disable()
        Guard1.delete()
        Guard2.disable()
        Guard2.delete()
        Guard3.disable()
        Guard3.delete()
        Guard4.disable()
        Guard4.delete()
        Guard5.disable()
        Guard5.delete()
        Guard6.disable()
        Guard6.delete()
        Guard7.disable()
        Guard7.delete()
        Guard8.disable()
        Guard8.delete()
        Guard9.disable()
        Guard9.delete()
        Guard10.disable()
        Guard10.delete()
        Guard11.disable()
        Guard11.delete()
        Guard12.disable()
        Guard12.delete()
        Guard13.disable()
        Guard13.delete()
        Guard14.disable()
        Guard14.delete()
        Guard15.disable()
        Guard15.delete()
        Guard16.disable()
        Guard16.delete()
        Guard17.disable()
        Guard17.delete()
        Guard18.disable()
        Guard18.delete()
        Guard19.disable()
        Guard19.delete()
        Guard20.disable()
        Guard20.delete()
    endif
EndEvent
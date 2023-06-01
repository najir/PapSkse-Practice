Scriptname GSQGuardPlacementThreadManager extends Quest  

Quest Property GSQGuardPlacementQuest Auto

Activator Property GSQGuardPlacementFutureActivator Auto

ObjectReference Property GSQGuardPlacementFutureAnchor Auto

Static Property xMarker Auto

GSQGuardPlacementThread0 thread0
GSQGuardPlacementThread1 thread1
GSQGuardPlacementThread2 thread2
GSQGuardPlacementThread3 thread3
GSQGuardPlacementThread4 thread4
GSQGuardPlacementThread5 thread5
GSQGuardPlacementThread6 thread6
GSQGuardPlacementThread7 thread7
GSQGuardPlacementThread8 thread8
GSQGuardPlacementThread9 thread9

Event OnInit()
    RegisterForModEvent("GSQ_OnGuardPlacement", "OnGuardPlacement")
    thread0 = GSQGuardPlacementQuest as GSQGuardPlacementThread0
    thread1 = GSQGuardPlacementQuest as GSQGuardPlacementThread1
    thread2 = GSQGuardPlacementQuest as GSQGuardPlacementThread2
    thread3 = GSQGuardPlacementQuest as GSQGuardPlacementThread3
    thread4 = GSQGuardPlacementQuest as GSQGuardPlacementThread4
    thread5 = GSQGuardPlacementQuest as GSQGuardPlacementThread5
    thread6 = GSQGuardPlacementQuest as GSQGuardPlacementThread6
    thread7 = GSQGuardPlacementQuest as GSQGuardPlacementThread7
    thread8 = GSQGuardPlacementQuest as GSQGuardPlacementThread8
    thread9 = GSQGuardPlacementQuest as GSQGuardPlacementThread9
EndEvent

ObjectReference function PlaceConjuredGuardAsync(ActorBase guard)
    ObjectReference future
    while !future
        if !thread0.HasActiveThread()
            future = thread0.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread1.HasActiveThread()
            future = thread1.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread2.HasActiveThread()
            future = thread2.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread3.HasActiveThread()
            future = thread3.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread4.HasActiveThread()
            future = thread4.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread5.HasActiveThread()
            future = thread5.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread6.HasActiveThread()
            future = thread6.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread7.HasActiveThread()
            future = thread7.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread8.HasActiveThread()
            future = thread8.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        elseif !thread9.HasActiveThread()
            future = thread9.GetAsync(GSQGuardPlacementFutureActivator, GSQGuardPlacementFutureAnchor, guard, xMarker)
        else
            WaitForThread()
        endif
    endwhile
    return future
EndFunction

function WaitForThread()
    RaiseEventOnGuardPlacement()
    BeginWait()
EndFunction

function BeginWait()
    bool waiting = true
    int i = 0
    while waiting
        if thread0.HasActiveThread() || thread1.HasActiveThread() || Thread2.HasActiveThread() || Thread3.HasActiveThread() \
           thread4.HasActiveThread() || thread5.HasActiveThread() || thread6.HasActiveThread() || thread6.HasActiveThread() \
           thread7.HasActiveThread() || thread8.HasActiveThread() || thread9.HasActiveThread()
            i += 1
            Utility.wait(0.1)
            if i >= 100
                debug.trace("Error: A catastrophic error has occurred. All threads have become unresponsive. Please debug this issue or notify the author.")
                i = 0
                return
            endif
        else
            waiting = false
        endif
    endwhile
EndFunction

function TryToUnlockThread(ObjectReference future)
    bool success = false
    if thread0.HasFuture(future)
        success = thread0.ForceUnlock()
    elseif thread1.HasFuture(future)
        success = thread1.ForceUnlock()
    elseif thread2.HasFuture(future)
        success = thread2.ForceUnlock()
    elseif thread3.HasFuture(future)
        success = Thread3.ForceUnlock()
    elseif thread4.HasFuture(future)
        success = thread4.ForceUnlock()
    elseif thread5.HasFuture(future)
        success = thread5.ForceUnlock()
    elseif thread6.HasFuture(future)
        success = thread6.ForceUnlock()
    elseif thread7.HasFuture(future)
        success = thread7.ForceUnlock()
    elseif thread8.HasFuture(future)
        success = thread8.ForceUnlock()
    elseif thread9.HasFuture(future)
        success = thread9.ForceUnlock()
    endif

    if !success
        debug.trace("Error: A thread has encountered an error and has become unresponsive.")
    else
        debug.trace("Warning: An unresponsive thread was successfully unlocked.")
    endif
EndFunction

function RaiseEventOnGuardPlacement()
    int handle = ModEvent.Create("GSQ_OnGuardPlacement")
    if handle
        ModEvent.Send(handle)
    else
        ;pass
    endif
EndFunction

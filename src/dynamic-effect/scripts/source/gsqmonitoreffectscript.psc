Scriptname GSQMonitorEffectScript extends ActiveMagicEffect  

Actor targetRef
Float targetHealth

Event OnEffectStart(Actor target, actor caster)
    targetRef = target
    targetHealth = targetRef.GetActorValue("Health")
    RegisterForSingleUpdate(0.25)
    GoToState("alive")
EndEvent

State alive
    Event OnBeginState()
        RegisterForSingleUpdate(0.25)
    EndEvent

    Event OnUpdate()
        targetHealth = targetRef.GetActorValue("Health")
        RegisterForSingleUpdate(0.25)
        RegisterForSingleUpdate(0.25)
    EndEvent

    Event OnEffectFinish(Actor target, Actor caster)
        UnregisterForUpdate()
    EndEvent

    Event OnHit(ObjectReference aggressor, Form source, Projectile projectile, bool isPowerAttack, \
                bool isSneakAttack, bool isBashAttack, bool isHitBlocked)
        Float damageAmount = targetHealth - targetRef.GetActorValue("Health")
        if(aggressor == Game.GetPlayer() && damageAmount > 0)
            Debug.Notification("You did " + damageAmount + "damage to " + targetRef)
        endif
    EndEvent

    Event OnDying(Actor killer)
        UnregisterForUpdate()
        GoToState("dead")
    EndEvent
EndState

State dead
EndState
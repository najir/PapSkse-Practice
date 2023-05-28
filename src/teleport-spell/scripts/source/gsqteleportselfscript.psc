Scriptname GSQTeleportSelfScript extends ActiveMagicEffect  

Event OnEffectStart(Actor target, Actor caster)
    ObjectReference playerRef = Game.GetPlayer()
    float angleZ = playerRef.GetAngleZ()
    caster.MoveTo(playerRef, 100.0 *  Math.sin(angleZ), 100.0 * Math.cos(angleZ), 0.0, true)
EndEvent

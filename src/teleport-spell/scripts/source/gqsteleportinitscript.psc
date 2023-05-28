Scriptname GQSTeleportInitScript extends Quest  

SPELL Property GSQTeleportSpell  Auto  


Event Init()
    Game.GetPlayer().AddSpell(GSQTeleportSpell)
    Debug.MessageBox("GSQ Has initialized, Spell Added")
EndEvent

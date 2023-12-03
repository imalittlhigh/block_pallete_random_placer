##
 # replace.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
tag @s add bprand.player.triggered_replace
execute unless entity @e[tag=bprand.marker.corner.1] unless entity @e[tag=bprand.marker.corner.2] run tellraw @s ["",{"text":"----------","color":"gold"},{"text":"\n"},{"text":"No Selection found...","color":"red"},{"text":"\n"},{"text":"----------","color":"gold"}]
execute if entity @e[tag=bprand.marker.corner.1] unless entity @e[tag=bprand.marker.corner.2] run tellraw @s ["",{"text":"----------","color":"gold"},{"text":"\n"},{"text":"Selection is missing Corner 2...","color":"red"},{"text":"\n"},{"text":"----------","color":"gold"}]
execute if entity @e[tag=bprand.marker.corner.2] unless entity @e[tag=bprand.marker.corner.1] run tellraw @s ["",{"text":"----------","color":"gold"},{"text":"\n"},{"text":"Selection is missing Corner 1...","color":"red"},{"text":"\n"},{"text":"----------","color":"gold"}]

execute if entity @e[tag=bprand.marker.corner.1] if entity @e[tag=bprand.marker.corner.2] at @e[tag=bprand.marker.corner.1] run function bprand:replace/main
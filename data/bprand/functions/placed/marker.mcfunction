##
 # marker.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
tag @s remove bprand.marker.new

execute if entity @e[tag=bprand.marker.corner.1,distance=0.2..] if entity @e[tag=bprand.marker.corner.2,distance=0.2..] run kill @s
execute if entity @e[tag=bprand.marker.corner.1,distance=0.2..] if entity @e[tag=bprand.marker.corner.2,distance=0.2..] run return 303

execute if entity @e[tag=bprand.marker.corner.1,distance=0.2..] run tag @s add bprand.marker.corner.2
execute unless entity @e[tag=bprand.marker.corner.1,distance=0.2..] run tag @s add bprand.marker.corner.1

say placed

execute align xyz run summon block_display ~ ~ ~ {Tags:["bprand.blockdisplay.corner","bprand.blockdisplay","bprand"],Passengers:[{Tags:["bprand.blockdisplay.corner","bprand.blockdisplay","bprand"],Glowing:1b,id:"minecraft:block_display",block_state:{Name:"minecraft:tinted_glass",Properties:{}},transformation:[0.7500f,0.0000f,0.0000f,0.1250f,0.0000f,0.7500f,0.0000f,0.1250f,0.0000f,0.0000f,0.7500f,0.1250f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
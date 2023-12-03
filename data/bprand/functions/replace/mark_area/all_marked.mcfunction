##
 # all_marked.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
tag @e[tag=bprand.areamarker] add bprand.areamarker.replace

execute store result storage bprand:pos corner1x double 1 run scoreboard players get %corner1.x.origin bprand.dummy
execute store result storage bprand:pos corner1y double 1 run scoreboard players get %corner1.y.origin bprand.dummy
execute store result storage bprand:pos corner1z double 1 run scoreboard players get %corner1.z.origin bprand.dummy

data modify entity @s Pos[0] set from storage bprand:pos corner1x

data modify entity @s Pos[1] set from storage bprand:pos corner1y

data modify entity @s Pos[2] set from storage bprand:pos corner1z

execute if data storage bprand:blocks id_replace run say replacing
##
 # z_mod.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
data modify entity @s Pos[0] set from storage bprand:pos.origin x
data modify entity @s Pos[1] set from storage bprand:pos.origin y
data modify entity @s Pos[2] set from storage bprand:pos.origin z


execute if data storage bprand:direction {z:"negative"} run scoreboard players remove %corner1.z bprand.dummy 1
execute if data storage bprand:direction {z:"positive"} run scoreboard players add %corner1.z bprand.dummy 1

scoreboard players operation %corner1.y bprand.dummy = %corner1.y.origin bprand.dummy
execute store result storage bprand:pos corner1y double 1 run scoreboard players get %corner1.y.origin bprand.dummy
execute store result storage bprand:pos corner1z double 1 run scoreboard players get %corner1.z bprand.dummy

data modify entity @s Pos[1] set from storage bprand:pos corner1y

data modify entity @s Pos[2] set from storage bprand:pos corner1z

scoreboard players operation %diff.x bprand.dummy = %distance.x bprand.dummy
scoreboard players operation %diff.y bprand.dummy = %distance.y bprand.dummy


execute at @s run function bprand:replace/mark_area/loop/z_run
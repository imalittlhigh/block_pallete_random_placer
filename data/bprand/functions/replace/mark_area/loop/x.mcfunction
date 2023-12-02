##
 # x.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say x
tag @s remove bprand.x_done
execute if score %diff.x bprand.dummy matches ..0 run tag @s add bprand.x_done
execute if score %diff.x bprand.dummy matches 1.. if data storage bprand:direction {x:"positive"} positioned ~1 ~ ~ run function bprand:replace/mark_area/loop/x_run
execute if score %diff.x bprand.dummy matches 1.. if data storage bprand:direction {x:"negative"} positioned ~-1 ~ ~ run function bprand:replace/mark_area/loop/x_run

execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"positive"} run scoreboard players add %corner1.y bprand.dummy 1
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"negative"} run scoreboard players remove %corner1.y bprand.dummy 1
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. store result storage bprand:pos y int 1 run scoreboard players get %corner1.y bprand.dummy
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. run data modify entity @s Pos[1] set from storage bprand:pos y
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"positive"} run function bprand:replace/mark_area/loop/y
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"negative"} run function bprand:replace/mark_area/loop/y

execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches ..0 positioned ~ ~ ~ run function bprand:replace/mark_area/loop/y
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

execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"positive"} positioned ~ ~1 ~ run function bprand:replace/mark_area/loop/y
execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {y:"negative"} positioned ~ ~-1 ~ run function bprand:replace/mark_area/loop/y

execute as @s[tag=bprand.x_done] at @s if score %diff.y bprand.dummy matches ..0 positioned ~ ~ ~ run function bprand:replace/mark_area/loop/y
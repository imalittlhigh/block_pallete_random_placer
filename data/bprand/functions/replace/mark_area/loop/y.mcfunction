##
 # y.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say y
tag @s remove bprand.y_done
scoreboard players operation %diff.x bprand.dummy = %distance.x bprand.dummy
execute if score %diff.y bprand.dummy matches ..0 run tag @s add bprand.y_done
execute if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {x:"positive"} positioned ~ ~1 ~ run function bprand:replace/mark_area/loop/y_run
execute if score %diff.y bprand.dummy matches 1.. if data storage bprand:direction {x:"negative"} positioned ~ ~-1 ~ run function bprand:replace/mark_area/loop/y_run


execute as @s[tag=bprand.y_done] at @s if score %diff.z bprand.dummy matches 1.. if data storage bprand:direction {z:"positive"} positioned ~ ~ ~1 run function bprand:replace/mark_area/loop/z
execute as @s[tag=bprand.y_done] at @s if score %diff.z bprand.dummy matches 1.. if data storage bprand:direction {z:"negative"} positioned ~ ~ ~-1 run function bprand:replace/mark_area/loop/z

execute as @s[tag=bprand.y_done] at @s if score %diff.z bprand.dummy matches ..0 positioned ~ ~ ~ run function bprand:replace/mark_area/loop/z

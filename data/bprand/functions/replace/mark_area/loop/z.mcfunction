##
 # z.mcfunction
 # 
 #
 # Created bz imalittlhigh.
##
say z
tag @s remove bprand.z_done
scoreboard players operation %diff.x bprand.dummy = %distance.x bprand.dummy
scoreboard players operation %diff.y bprand.dummy = %distance.y bprand.dummy
execute if score %diff.z bprand.dummy matches ..0 run tag @s add bprand.z_done
execute if score %diff.z bprand.dummy matches 1.. if data storage bprand:direction {z:"positive"} positioned ~ ~ ~1 run function bprand:replace/mark_area/loop/z_run
execute if score %diff.z bprand.dummy matches 1.. if data storage bprand:direction {z:"negative"} positioned ~ ~ ~-1 run function bprand:replace/mark_area/loop/z_run

execute as @s[tag=bprand.z_done] run say done
execute as @s[tag=bprand.z_done] run return 0
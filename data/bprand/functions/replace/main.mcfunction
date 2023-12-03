##
 # main.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
function bprand:replace/get_ids
execute as @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] run function bprand:replace/get_pos
summon marker ~ ~ ~ {Tags:["bprand.areamarker","bprand"]}
execute as @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] run function bprand:replace/mark_area/loop/x
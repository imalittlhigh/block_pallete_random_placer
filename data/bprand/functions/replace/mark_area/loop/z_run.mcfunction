##
 # z_run.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
summon marker ~ ~ ~ {Tags:["bprand.areamarker","bprand"]}
scoreboard players remove %diff.z bprand.dummy 1
function bprand:replace/mark_area/loop/x

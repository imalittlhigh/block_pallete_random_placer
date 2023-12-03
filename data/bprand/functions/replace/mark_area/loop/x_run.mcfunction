##
 # x_run.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

summon marker ~ ~ ~ {Tags:["bprand.areamarker","bprand"]}
scoreboard players remove %diff.x bprand.dummy 1
function bprand:replace/mark_area/loop/x
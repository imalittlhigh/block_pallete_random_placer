##
 # x_run.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say x run
scoreboard players remove %diff.x bprand.dummy 1
setblock ~ ~ ~ glass
function bprand:replace/mark_area/loop/x

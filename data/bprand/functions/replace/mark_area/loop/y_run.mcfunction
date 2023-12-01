##
 # y_run.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say y run
scoreboard players remove %diff.y bprand.dummy 1
setblock ~ ~ ~ glass
function bprand:replace/mark_area/loop/x

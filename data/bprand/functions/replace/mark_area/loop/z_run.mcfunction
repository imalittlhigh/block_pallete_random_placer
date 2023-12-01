##
 # z_run.mcfunction
 # 
 #
 # Created bz imalittlhigh.
##
say z run
scoreboard players remove %diff.z bprand.dummy 1
setblock ~ ~ ~ glass
function bprand:replace/mark_area/loop/x


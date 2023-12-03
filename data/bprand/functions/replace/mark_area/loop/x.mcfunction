##
 # x.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute if score %diff.x bprand.dummy matches ..0 at @s run function bprand:replace/mark_area/loop/y
execute if score %diff.x bprand.dummy matches 1.. if data storage bprand:direction {x:"positive"} positioned ~1 ~ ~ run function bprand:replace/mark_area/loop/x_run
execute if score %diff.x bprand.dummy matches 1.. if data storage bprand:direction {x:"negative"} positioned ~-1 ~ ~ run function bprand:replace/mark_area/loop/x_run

##
 # y.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute if score %diff.y bprand.dummy matches ..0 at @s run function bprand:replace/mark_area/loop/z
execute if score %diff.y bprand.dummy matches 1.. run function bprand:replace/mark_area/loop/y_mod
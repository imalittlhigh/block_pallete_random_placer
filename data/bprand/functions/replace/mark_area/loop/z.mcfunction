##
 # z.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute if score %diff.z bprand.dummy matches ..0 at @s run function bprand:replace/mark_area/all_marked
execute if score %diff.z bprand.dummy matches 1.. run function bprand:replace/mark_area/loop/z_mod
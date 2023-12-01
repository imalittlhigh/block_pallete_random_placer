##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##
execute as @e[tag=bprand.marker.new] at @s run function bprand:placed/marker

execute as @e[tag=bprand.marker.area,tag=bprand.marker.processed,limit=50,sort=random] at @s run function bprand:replace/replace/set_storage
execute as @e[tag=bprand.marker.area,tag=!bprand.marker.processed,level=100] at @s run function bprand:replace/mark_area/loop/detect
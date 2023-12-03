##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##
execute as @e[tag=bprand.marker.new] at @s run function bprand:placed/marker

execute as @e[tag=bprand.areamarker.replace,limit=250,sort=random] at @s run function bprand:replace/replace/block

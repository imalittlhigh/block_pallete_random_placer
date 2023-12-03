##
 # corner_2.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
execute at @e[tag=bprand.marker.corner.2,limit=1,sort=nearest] run kill @e[tag=bprand.blockdisplay,limit=2,sort=nearest,distance=..1]
kill @e[tag=bprand.marker.corner.2,limit=1,sort=nearest]
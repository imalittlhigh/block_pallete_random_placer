##
 # get_pos.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say getpos

data remove storage bprand:pos corner1y
data remove storage bprand:pos corner1x
data remove storage bprand:pos corner1z

execute store result score %corner1.x bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[0]
execute store result score %corner1.y bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[1]
execute store result score %corner1.z bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[2]

execute store result score %corner1.x.origin bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[0]
execute store result score %corner1.y.origin bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[1]
execute store result score %corner1.z.origin bprand.dummy run data get entity @e[tag=bprand.marker.corner.1,limit=1,sort=nearest] Pos[2]

execute store result score %corner2.x bprand.dummy run data get entity @e[tag=bprand.marker.corner.2,limit=1,sort=nearest] Pos[0]
execute store result score %corner2.y bprand.dummy run data get entity @e[tag=bprand.marker.corner.2,limit=1,sort=nearest] Pos[1]
execute store result score %corner2.z bprand.dummy run data get entity @e[tag=bprand.marker.corner.2,limit=1,sort=nearest] Pos[2]


execute store result storage bprand:pos.origin x double 1 run scoreboard players get %corner1.x bprand.dummy
execute store result storage bprand:pos.origin y double 1 run scoreboard players get %corner1.y bprand.dummy
execute store result storage bprand:pos.origin z double 1 run scoreboard players get %corner1.z bprand.dummy



scoreboard players operation %diff.x bprand.dummy = %corner1.x bprand.dummy
scoreboard players operation %diff.y bprand.dummy = %corner1.y bprand.dummy
scoreboard players operation %diff.z bprand.dummy = %corner1.z bprand.dummy

scoreboard players operation %diff.x bprand.dummy -= %corner2.x bprand.dummy
scoreboard players operation %diff.y bprand.dummy -= %corner2.y bprand.dummy
scoreboard players operation %diff.z bprand.dummy -= %corner2.z bprand.dummy


execute if score %diff.x bprand.dummy matches ..-1 run data modify storage bprand:direction x set value "positive"
execute if score %diff.y bprand.dummy matches ..-1 run data modify storage bprand:direction y set value "positive"
execute if score %diff.z bprand.dummy matches ..-1 run data modify storage bprand:direction z set value "positive"

execute if score %diff.x bprand.dummy matches 0.. run data modify storage bprand:direction x set value "negative"
execute if score %diff.y bprand.dummy matches 0.. run data modify storage bprand:direction y set value "negative"
execute if score %diff.z bprand.dummy matches 0.. run data modify storage bprand:direction z set value "negative"


execute if score %diff.x bprand.dummy matches ..-1 run scoreboard players operation %diff.x bprand.dummy *= %negate bprand.dummy
execute if score %diff.y bprand.dummy matches ..-1 run scoreboard players operation %diff.y bprand.dummy *= %negate bprand.dummy
execute if score %diff.z bprand.dummy matches ..-1 run scoreboard players operation %diff.z bprand.dummy *= %negate bprand.dummy

scoreboard players operation %distance.x bprand.dummy = %diff.x bprand.dummy
scoreboard players operation %distance.y bprand.dummy = %diff.y bprand.dummy
scoreboard players operation %distance.z bprand.dummy = %diff.z bprand.dummy
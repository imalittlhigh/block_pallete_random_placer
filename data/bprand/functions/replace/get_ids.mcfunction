##
 # get_ids.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard players set %pallet_count bprand.dummy 0
data remove storage bprand:blocks pallet_count

data modify storage bprand:blocks id0 set from entity @s Inventory[0].id
execute if data storage bprand:blocks {id0:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id0 set value "air"

data modify storage bprand:blocks id1 set from entity @s Inventory[1].id
execute if data storage bprand:blocks {id1:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id1 set value "air"

data modify storage bprand:blocks id2 set from entity @s Inventory[2].id
execute if data storage bprand:blocks {id2:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id2 set value "air"

data modify storage bprand:blocks id3 set from entity @s Inventory[3].id
execute if data storage bprand:blocks {id3:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id3 set value "air"

data modify storage bprand:blocks id4 set from entity @s Inventory[4].id
execute if data storage bprand:blocks {id4:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id4 set value "air"

data modify storage bprand:blocks id5 set from entity @s Inventory[5].id
execute if data storage bprand:blocks {id5:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id5 set value "air"

data modify storage bprand:blocks id6 set from entity @s Inventory[6].id
execute if data storage bprand:blocks {id6:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id6 set value "air"

data modify storage bprand:blocks id7 set from entity @s Inventory[7].id
execute if data storage bprand:blocks {id7:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id7 set value "air"

data modify storage bprand:blocks id8 set from entity @s Inventory[8].id
execute if data storage bprand:blocks {id8:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id8 set value "air"

data modify storage bprand:blocks id9 set from entity @s Inventory[9].id
execute if data storage bprand:blocks {id9:"minecraft:panda_spawn_egg"} run data modify storage bprand:blocks id9 set value ""


execute unless data storage bprand:blocks {id0:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id2:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id3:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id4:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id5:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id6:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id7:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id8:""} run scoreboard players add %pallet_count bprand.dummy 1
execute unless data storage bprand:blocks {id9:""} run scoreboard players add %pallet_count bprand.dummy 1

execute if score %pallet_count bprand.dummy matches ..0 run say no blocks men
execute if score %pallet_count bprand.dummy matches 1..9 store result storage bprand:blocks pallet_count int 1 run scoreboard players get %pallet_count bprand.dummy
execute if data storage bprand:blocks pallet_count run say ok
execute if score %pallet_count bprand.dummy matches 10.. run say to much block yo



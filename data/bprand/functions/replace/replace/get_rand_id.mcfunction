##
 # rand_id.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
$execute store result score %rand bprand.dummy run random value 1..$(pallet_count)

execute if score %rand bprand.dummy matches 1 run data modify entity @s data.block_id set from storage bprand:blocks id0
execute if score %rand bprand.dummy matches 2 run data modify entity @s data.block_id set from storage bprand:blocks id1
execute if score %rand bprand.dummy matches 3 run data modify entity @s data.block_id set from storage bprand:blocks id2
execute if score %rand bprand.dummy matches 4 run data modify entity @s data.block_id set from storage bprand:blocks id3
execute if score %rand bprand.dummy matches 5 run data modify entity @s data.block_id set from storage bprand:blocks id4
execute if score %rand bprand.dummy matches 6 run data modify entity @s data.block_id set from storage bprand:blocks id5
execute if score %rand bprand.dummy matches 7 run data modify entity @s data.block_id set from storage bprand:blocks id6
execute if score %rand bprand.dummy matches 8 run data modify entity @s data.block_id set from storage bprand:blocks id7
execute if score %rand bprand.dummy matches 9 run data modify entity @s data.block_id set from storage bprand:blocks id8
execute if score %rand bprand.dummy matches 10 run data modify entity @s data.block_id set from storage bprand:blocks id9

data modify storage bprand:blocks new_block set from entity @s data.block_id

execute unless data storage bprand:blocks id_replace run function bprand:replace/replace/place_block_set with storage bprand:blocks
execute if data storage bprand:blocks id_replace run function bprand:replace/replace/place_block_fill with storage bprand:blocks
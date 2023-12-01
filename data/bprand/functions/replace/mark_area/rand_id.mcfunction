##
 # rand_id.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say rand id
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

##
 # set_storage.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
say set storage
data modify storage bprand:block id set from entity @s data.block_id
function bprand:replace/replace/place_block with storage bprand:block
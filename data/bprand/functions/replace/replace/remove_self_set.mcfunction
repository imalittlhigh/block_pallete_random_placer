##
 # remove_self.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
scoreboard players add %replace_count bprand.dummy 1

kill @s

execute unless entity @e[tag=bprand.areamarker.replace] run function bprand:replace/replace/replaced_all
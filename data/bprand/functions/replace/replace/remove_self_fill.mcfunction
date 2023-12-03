##
 # remove_self.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
$execute unless block ~ ~ ~ $(id_replace) run scoreboard players add %replace_count bprand.dummy 1

$execute unless block ~ ~ ~ $(id_replace) run kill @s

execute unless entity @e[tag=bprand.areamarker.replace] run function bprand:replace/replace/replaced_all
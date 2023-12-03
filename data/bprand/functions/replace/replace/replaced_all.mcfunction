##
 # replaced_all.mcfunction
 # 
 #
 # Created by imalittlhigh.
##

tellraw @a[tag=bprand.player.triggered_replace] ["",{"text":"----------","color":"gold"},{"text":"\nRemove Selection Points:\n - "},{"text":"Remove Selection Corner 1","italic":true,"clickEvent":{"action":"run_command","value":"/function bprand:remove/corner_1"},"hoverEvent":{"action":"show_text","contents":"Klick to remove the first corner Marker"}},{"text":"\n - "},{"text":"Remove Selection Corner 2","italic":true,"clickEvent":{"action":"run_command","value":"/function bprand:remove/corner_2"},"hoverEvent":{"action":"show_text","contents":"Klick to remove the second corner Marker"}},{"text":"\n - "},{"text":"Remove Selection","italic":true,"clickEvent":{"action":"run_command","value":"/function bprand:remove/all"},"hoverEvent":{"action":"show_text","contents":"Klick to remove all corner Markers"}},{"text":"\n\n"},{"text":"Run Replace Command","italic":true,"clickEvent":{"action":"run_command","value":"/function bprand:replace"},"hoverEvent":{"action":"show_text","contents":"Klick to replace selection with blocks from hotbar\n(Blocks in offhand will be mask for replacement)\nThis is significantly slower than without a mask!"}},{"text":"\n\n"},{"text":"Give Selection Marker","italic":true,"clickEvent":{"action":"run_command","value":"/function bprand:give_marker"},"hoverEvent":{"action":"show_text","contents":"Gives you a spawn egg to place the corners of your selection"}},{"text":"\n"},{"text":"----------","color":"gold"}]
tellraw @a[tag=bprand.player.triggered_replace] ["",{"text":"----------","color":"gold"},{"text":"\nChecked & Replaced ","color":"dark_green"},{"score":{"name":"%replace_count","objective":"bprand.dummy"},"color":"dark_green"},{"text":" blocks\n","color":"dark_green"},{"text":"----------","color":"gold"}]
tag @a remove bprand.player.triggered_replace
scoreboard players reset %replace_count
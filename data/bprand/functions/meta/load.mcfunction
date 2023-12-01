##
 # load.mcfunction
 # 
 #
 # Created by imalittlhigh
##
data modify storage bprand:blocks id0 set value ""
data modify storage bprand:blocks id1 set value ""
data modify storage bprand:blocks id2 set value ""
data modify storage bprand:blocks id3 set value ""
data modify storage bprand:blocks id4 set value ""
data modify storage bprand:blocks id5 set value ""
data modify storage bprand:blocks id6 set value ""
data modify storage bprand:blocks id7 set value ""
data modify storage bprand:blocks id8 set value ""
data modify storage bprand:blocks id9 set value ""

scoreboard objectives add bprand.dummy dummy
scoreboard players set %negate bprand.dummy -1

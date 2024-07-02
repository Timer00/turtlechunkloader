playsound minecraft:block.note_block.bell block

# Get data from block under the marker and save it in temporary storage
execute at @e[type=minecraft:marker,tag=turtle] run data modify storage merlim48:temp ComputerId set from block ~ ~ ~ ComputerId

# Summon the marker with ComputerId NBT property that came from the block under the marker
summon minecraft:marker ~ ~ ~ {Tags:["turtle","new_turtle"]}

# Apply the ComputerId to the newly summoned marker
data modify entity @e[type=minecraft:marker,tag=new_turtle,limit=1] data.ComputerId set from storage merlim48:temp ComputerId

# Remove the temporary tag
tag @e[type=minecraft:marker,tag=new_turtle,limit=1] remove new_turtle
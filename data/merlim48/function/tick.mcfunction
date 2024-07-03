# check_and_teleport.mcfunction
# Check for a diamond block in front of the marker and teleport the marker on top of it if found

# Adjust the block type and coordinates as needed

# Check each direction and teleport if block is found with matching ComputerId
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~1 ~ ~ computercraft:turtle_normal run function merlim48:check_direction/computer_id_east
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~-1 ~ ~ computercraft:turtle_normal run function merlim48:check_direction/computer_id_west
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~ ~1 computercraft:turtle_normal run function merlim48:check_direction/computer_id_south
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~ ~-1 computercraft:turtle_normal run function merlim48:check_direction/computer_id_north
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~-1 ~ computercraft:turtle_normal run function merlim48:check_direction/computer_id_down

# Remove all forceloads to prevent maintaining them
execute as @s at @s run forceload remove all

# Add forceloads at all turtle markers
execute as @e[type=minecraft:marker,tag=turtle] at @s run forceload add ~ ~

# Maker turtle markers visible
execute as @e[type=minecraft:marker,tag=turtle] at @s run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 0 2 force
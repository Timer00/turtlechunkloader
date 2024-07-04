# Check each direction and teleport if block is found with matching ComputerId
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~1 ~ ~ #computercraft:turtle run function merlim48:check_direction/computer_id_east
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~-1 ~ ~ #computercraft:turtle run function merlim48:check_direction/computer_id_west
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~ ~1 #computercraft:turtle run function merlim48:check_direction/computer_id_south
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~ ~-1 #computercraft:turtle run function merlim48:check_direction/computer_id_north
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~-1 ~ #computercraft:turtle run function merlim48:check_direction/computer_id_down
execute as @e[type=minecraft:marker,tag=turtle] at @s if block ~ ~1 ~ #computercraft:turtle run function merlim48:check_direction/computer_id_up


# -> Need to keep an eye on this as it could cause markers to be wrongly removed.
# If no turtle is found under the marker, remove it (cleans up when a turtle is mined)
execute as @e[type=minecraft:marker,tag=turtle] at @s unless block ~ ~ ~ #computercraft:turtle run kill @s

# Remove all forceloads to prevent maintaining them
execute as @s at @s run forceload remove all

# Add forceloads at all turtle markers
execute as @e[type=minecraft:marker,tag=turtle] at @s run forceload add ~ ~

# Make turtle markers visible
execute as @e[type=minecraft:marker,tag=turtle] at @s run particle minecraft:enchant ~ ~0.1 ~ 0 0 0 0.5 3 normal
# check_and_teleport.mcfunction
# Check for a diamond block in front of the marker and teleport the marker on top of it if found

# Adjust the block type and coordinates as needed

# Check each direction and teleport if block is found
execute as @e[type=minecraft:marker] at @s if block ~1 ~ ~ computercraft:turtle_normal run tp @s ~1 ~1 ~
execute as @e[type=minecraft:marker] at @s if block ~-1 ~ ~ computercraft:turtle_normal run tp @s ~-1 ~1 ~
execute as @e[type=minecraft:marker] at @s if block ~ ~ ~1 computercraft:turtle_normal run tp @s ~ ~1 ~1
execute as @e[type=minecraft:marker] at @s if block ~ ~ ~-1 computercraft:turtle_normal run tp @s ~ ~1 ~-1
execute as @e[type=minecraft:marker] at @s if block ~ ~-1 ~ computercraft:turtle_normal run tp @s ~ ~-1 ~


# Remove all forceloads to prevent maintaining them
execute as @s at @s run forceload remove all

# Add forceload at the marker's position
execute as @e[type=minecraft:marker] at @s run forceload add ~ ~

# Show where the marker is
execute as @e[type=minecraft:marker] at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0 3 force
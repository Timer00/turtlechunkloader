say find block and place marker.

# TODO: Use raycast
# or maybe I can just use local coordinates and only check the blocks in front of the player

execute if block ~1 ~ ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~ ~ 
execute if block ~-1 ~ ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~ ~
execute if block ~ ~1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~1 ~ 
execute if block ~ ~-1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~-1 ~
execute if block ~ ~ ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~ ~1 
execute if block ~ ~ ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~ ~-1

execute if block ~1 ~1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~1 ~
execute if block ~-1 ~1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~1 ~
execute if block ~1 ~-1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~-1 ~
execute if block ~-1 ~-1 ~ minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~-1 ~
execute if block ~ ~1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~1 ~1
execute if block ~ ~1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~1 ~-1
execute if block ~ ~-1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~-1 ~1
execute if block ~ ~-1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~ ~-1 ~-1

execute if block ~1 ~ ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~ ~1
execute if block ~-1 ~ ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~ ~1
execute if block ~1 ~ ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~ ~-1
execute if block ~-1 ~ ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~ ~-1

execute if block ~1 ~1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~1 ~1
execute if block ~-1 ~1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~1 ~1
execute if block ~1 ~1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~1 ~-1
execute if block ~-1 ~1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~1 ~-1
execute if block ~1 ~-1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~-1 ~1
execute if block ~-1 ~-1 ~1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~-1 ~1
execute if block ~1 ~-1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~1 ~-1 ~-1
execute if block ~-1 ~-1 ~-1 minecraft:diamond_block run tp @e[type=minecraft:armor_stand,limit=1,sort=nearest] ~-1 ~-1 ~-1
# Set the distance limit on the raycast. (10 x limit in blocks, so 1000 would be 100 blocks)
# scoreboard players set @p .limit 100

# Set block to look for during raycast
# Note that for non-vanilla blocks they must be added in the shape groups in the iris datapack
data modify storage iris:settings Whitelist set value "computercraft:turtle_normal"

# Start the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute if data storage iris:output {TargetType: "BLOCK"} at @e[type=minecraft:marker, tag=iris.targeted_block] run function merlim48:place_turtle_marker

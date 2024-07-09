# Set block to look for during raycast
# Note that for non-vanilla blocks they must be added in the shape groups in the iris datapack
data modify storage iris:settings Whitelist set value "#computercraft:turtle"

# TODO: There is a bug where if there is already a turtle with the -> hitbox of turtle is smaller than a block
# It seems that if you place blocks nearby it with a small hitbox, such as torches, the raycast also hits the turtle.
# Maybe I should write something that ensures there is only one marker on the turtle. 
# Ideally tho, no more markers would be spawned..

# Start the raycast
execute at @s anchored eyes positioned ^ ^ ^ run function iris:get_target
execute if data storage iris:output {TargetType: "BLOCK"} at @e[type=minecraft:marker, tag=iris.targeted_block] run function merlim48:place_turtle_marker

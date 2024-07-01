say On Place Turtle

# Execute command at the position of who placed the block
execute run summon minecraft:armor_stand

execute run function merlim48:find_block_and_place_marker

# Revoke the advancement so it can be granted again
advancement revoke @s only merlim48:placed_block
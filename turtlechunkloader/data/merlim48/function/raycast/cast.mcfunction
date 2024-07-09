# Remove one from the limit
scoreboard players remove @p .limit 1

# Optional - place a particle, to make the raycast leave a trail
particle minecraft:angry_villager ~ ~ ~ 1 0 0 1 1 force
# particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 0 3 force

# If the raycast has hit a block, do something
execute unless block ~ ~ ~ #merlim48:pass_through run function merlim48:raycast/place_block

# If the raycast hasn't hit a block, continue, but only if the limit is 1 or more (1..)
execute positioned ^ ^ ^0.1 if block ~ ~ ~ #merlim48:pass_through if score @s .limit matches 1.. run function merlim48:raycast/cast

# Store the ComputerId of the marker
data modify storage merlim48:temp MarkerComputerId set from entity @s data.ComputerId

# Store the ComputerId of the block
data modify storage merlim48:temp BlockComputerId set from block ~ ~-1 ~ ComputerId

# Compare the ComputerIds
execute store success score #id_match merlim48.temp run data modify storage merlim48:temp MarkerComputerId set from storage merlim48:temp BlockComputerId

# If the ComputerIds match (score is 0), teleport the marker
execute if score #id_match merlim48.temp matches 0 run tp @s ~ ~-1 ~

# Clean up
data remove storage merlim48:temp MarkerComputerId
data remove storage merlim48:temp BlockComputerId
scoreboard players reset #id_match merlim48.temp
execute if block ~ ~ ~ #iris:shape_groups/redstone_wall_torch[facing=north] run data modify storage iris:data Shape set value [{min: [0.34375, 0.1875, 0.6875], max: [0.65625, 0.8125, 1.0]}]
execute if block ~ ~ ~ #iris:shape_groups/redstone_wall_torch[facing=south] run data modify storage iris:data Shape set value [{min: [0.34375, 0.1875, 0.0], max: [0.65625, 0.8125, 0.3125]}]
execute if block ~ ~ ~ #iris:shape_groups/redstone_wall_torch[facing=west] run data modify storage iris:data Shape set value [{min: [0.6875, 0.1875, 0.34375], max: [1.0, 0.8125, 0.65625]}]
execute if block ~ ~ ~ #iris:shape_groups/redstone_wall_torch[facing=east] run data modify storage iris:data Shape set value [{min: [0.0, 0.1875, 0.34375], max: [0.3125, 0.8125, 0.65625]}]

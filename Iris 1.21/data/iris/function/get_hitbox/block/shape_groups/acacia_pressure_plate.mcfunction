execute if block ~ ~ ~ #iris:shape_groups/acacia_pressure_plate[powered=true] run data modify storage iris:data Shape set value [{min: [0.0625, 0.0, 0.0625], max: [0.9375, 0.03125, 0.9375]}]
execute if block ~ ~ ~ #iris:shape_groups/acacia_pressure_plate[powered=false] run data modify storage iris:data Shape set value [{min: [0.0625, 0.0, 0.0625], max: [0.9375, 0.0625, 0.9375]}]

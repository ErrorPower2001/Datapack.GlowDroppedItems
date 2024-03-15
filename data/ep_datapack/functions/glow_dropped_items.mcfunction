# Set Glowing nbt data to false of the items which are glowing and located 16 blocks away from nearest player.
#
# Detect all glowing items
#	# Detect nearest player distance is more than 16 blocks
#		# Setting Glowing nbt data to false
#...execute as @e[type=minecraft:item, nbt={Glowing:true}] at @s run \
#	execute if entity @p[distance=16..] run \
#		data modify entity @s Glowing set value false
execute as @e[type=minecraft:item, nbt={Glowing:true}] at @s run execute if entity @p[distance=16..] run data modify entity @s Glowing set value false

# Set Glowing nbt data to true of the item which within 16 blocks of the nearest player.
#
# Detect all items
#	# Detect nearest player distance is less than 16 blocks
#		# Setting Glowing nbt data to true
#...execute as @e[type=minecraft:item] at @s run \
#	execute if entity @p[distance=..16] run \
#		data modify entity @s Glowing set value true
execute as @e[type=minecraft:item] at @s run execute if entity @p[distance=..16] run data modify entity @s Glowing set value true


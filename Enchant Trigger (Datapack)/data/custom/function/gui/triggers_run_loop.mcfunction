#open enchant menu
execute as @a if score @s _gui matches 1.. run function custom:gui/player_gui


#check value to check if appropriate enchant function was run
execute as @a if score @s selected_enchant matches 1 run function custom:messages/selected_enchant_triggered_message

#1 level
execute as @a if score @s selected_enchant matches 2 run function custom:enchants/only_1_level/aqua_affinity
execute as @a if score @s selected_enchant matches 3 run function custom:enchants/only_1_level/channeling
execute as @a if score @s selected_enchant matches 4 run function custom:enchants/only_1_level/curse_of_binding
execute as @a if score @s selected_enchant matches 5 run function custom:enchants/only_1_level/curse_of_vanishing
execute as @a if score @s selected_enchant matches 6 run function custom:enchants/only_1_level/flame
execute as @a if score @s selected_enchant matches 7 run function custom:enchants/only_1_level/infinity
execute as @a if score @s selected_enchant matches 8 run function custom:enchants/only_1_level/mending
execute as @a if score @s selected_enchant matches 9 run function custom:enchants/only_1_level/multishot
execute as @a if score @s selected_enchant matches 10 run function custom:enchants/only_1_level/silk_touch

#2 levels
execute as @a if score @s selected_enchant matches 11 run function custom:enchants/only_2_levels/fire_aspect
execute as @a if score @s selected_enchant matches 12 run function custom:enchants/only_2_levels/frost_walker
execute as @a if score @s selected_enchant matches 13 run function custom:enchants/only_2_levels/knockback
execute as @a if score @s selected_enchant matches 14 run function custom:enchants/only_2_levels/punch

#3 levels
execute as @a if score @s selected_enchant matches 15 run function custom:enchants/only_3_levels/depth_strider
execute as @a if score @s selected_enchant matches 16 run function custom:enchants/only_3_levels/fortune
execute as @a if score @s selected_enchant matches 17 run function custom:enchants/only_3_levels/looting
execute as @a if score @s selected_enchant matches 18 run function custom:enchants/only_3_levels/loyalty
execute as @a if score @s selected_enchant matches 19 run function custom:enchants/only_3_levels/luck_of_the_sea
execute as @a if score @s selected_enchant matches 20 run function custom:enchants/only_3_levels/lure
execute as @a if score @s selected_enchant matches 21 run function custom:enchants/only_3_levels/quick_charge
execute as @a if score @s selected_enchant matches 22 run function custom:enchants/only_3_levels/respiration
execute as @a if score @s selected_enchant matches 23 run function custom:enchants/only_3_levels/riptide
execute as @a if score @s selected_enchant matches 24 run function custom:enchants/only_3_levels/soul_speed
execute as @a if score @s selected_enchant matches 25 run function custom:enchants/only_3_levels/sweeping_edge
execute as @a if score @s selected_enchant matches 26 run function custom:enchants/only_3_levels/swift_sneak
execute as @a if score @s selected_enchant matches 27 run function custom:enchants/only_3_levels/thorns
execute as @a if score @s selected_enchant matches 28 run function custom:enchants/only_3_levels/unbreaking
execute as @a if score @s selected_enchant matches 29 run function custom:enchants/only_3_levels/wind_burst

#4 levels
execute as @a if score @s selected_enchant matches 30 run function custom:enchants/only_4_levels/blast_protection
execute as @a if score @s selected_enchant matches 31 run function custom:enchants/only_4_levels/breach
execute as @a if score @s selected_enchant matches 32 run function custom:enchants/only_4_levels/feather_falling
execute as @a if score @s selected_enchant matches 33 run function custom:enchants/only_4_levels/fire_protection
execute as @a if score @s selected_enchant matches 34 run function custom:enchants/only_4_levels/piercing
execute as @a if score @s selected_enchant matches 35 run function custom:enchants/only_4_levels/projectile_protection
execute as @a if score @s selected_enchant matches 36 run function custom:enchants/only_4_levels/protection

#5 levels
execute as @a if score @s selected_enchant matches 37 run function custom:enchants/only_5_levels/bane-of-arthropods
execute as @a if score @s selected_enchant matches 38 run function custom:enchants/only_5_levels/density
execute as @a if score @s selected_enchant matches 39 run function custom:enchants/only_5_levels/efficiency
execute as @a if score @s selected_enchant matches 40 run function custom:enchants/only_5_levels/impaling
execute as @a if score @s selected_enchant matches 41 run function custom:enchants/only_5_levels/power
execute as @a if score @s selected_enchant matches 42 run function custom:enchants/only_5_levels/sharpness
execute as @a if score @s selected_enchant matches 43 run function custom:enchants/only_5_levels/smite

#4 protections
execute as @a if score @s selected_enchant matches 44 run function custom:enchants/4protections/4protections


scoreboard players set @a selected_enchant 0

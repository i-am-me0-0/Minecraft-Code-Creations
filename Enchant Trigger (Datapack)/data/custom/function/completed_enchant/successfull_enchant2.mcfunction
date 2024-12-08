#xp levels eraf halen
xp add @s[scores={4protections_blast=1,4protections_fire=1,4protections_projectile=1,4protections_protection=1}] -12 levels

#token weghalen
clear @s[scores={4protections_blast=1,4protections_fire=1,4protections_projectile=1,4protections_protection=1}] minecraft:repeating_command_block[minecraft:custom_data={epic:1b}] 4

#success message
tellraw @s[scores={4protections_blast=1,4protections_fire=1,4protections_projectile=1,4protections_protection=1}] {"text": "This item has been modified with these enchantments","color": "green"}
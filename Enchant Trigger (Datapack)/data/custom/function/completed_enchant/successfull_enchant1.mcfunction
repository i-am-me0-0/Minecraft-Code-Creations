#xp levels eraf halen
xp add @s[scores={enchant_check=1}] -3 levels

#token weghalen
clear @s[scores={enchant_check=1}] minecraft:repeating_command_block[minecraft:custom_data={epic:1b}] 1

execute if entity @s[scores={enchant_check=1}] run tellraw @s {"text": "Enchanting Succes","color": "green"}
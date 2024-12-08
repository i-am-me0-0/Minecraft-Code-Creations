function custom:checks/can_player_enchant_check1
execute unless entity @s[scores={enchant_check=1}] run return 1


#als genoeg levels, een token, en geen empty hand zet enchant_check naar 2
execute run scoreboard players set @s enchant_check 2

#probeert te enchanten wanneer enchant_check op 3 staat. success zet enchant_check naar 1, fail naar 0
execute store success score @s enchant_check run enchant @s[scores={enchant_check=2}] minecraft:efficiency 1


#check of item al dit enchant heeft zo ja raise het level met 1 level. success zet enchant_check naar 1, fail naar 0
execute store success score @s enchant_check if items entity @s[scores={enchant_check=0}] weapon.mainhand *[enchantments~[{enchantments: "efficiency", levels: 1}]] run item modify entity @s weapon.mainhand custom:efficiency_raise_level
execute store success score @s enchant_check if items entity @s[scores={enchant_check=0}] weapon.mainhand *[enchantments~[{enchantments: "efficiency", levels: 2}]] run item modify entity @s weapon.mainhand custom:efficiency_raise_level
execute store success score @s enchant_check if items entity @s[scores={enchant_check=0}] weapon.mainhand *[enchantments~[{enchantments: "efficiency", levels: 3}]] run item modify entity @s weapon.mainhand custom:efficiency_raise_level
execute store success score @s enchant_check if items entity @s[scores={enchant_check=0}] weapon.mainhand *[enchantments~[{enchantments: "efficiency", levels: 4}]] run item modify entity @s weapon.mainhand custom:efficiency_raise_level

function custom:completed_enchant/successfull_enchant1


#item is al max level
execute store success score @s enchant_check if items entity @s[scores={enchant_check=0}] weapon.mainhand *[enchantments~[{enchantments: "efficiency", levels: 5}]] run function custom:messages/al_max_level

#kijkt of hand niet mogelijk te enchanten
execute if entity @s[scores={enchant_check=0}] run function custom:messages/kan_niet_enchant




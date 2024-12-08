#trigger naar 0 voor volgende enchant klaarzetten
scoreboard players set @s selected_enchant 0
#scoreboard naar 0 voor enchant klaarzetten
scoreboard players set @s enchant_check 0

#check of genoeg levels
execute unless entity @s[level=12..] run tellraw @s {"text": "U do not have enough levels, 12 levels are needed","color": "red"}
execute unless entity @s[level=12..] run return 0

#check of in inventory 4 tokens
execute unless predicate custom:is_4token run tellraw @s[level=12..] {"text": "4 enchant tokens are needed, not enough tokens were detected","color": "red"}
#execute unless items entity @s[level=12..] container.* minecraft:repeating_command_block[minecraft:custom_data={epic:1b}] run tellraw @s {"text": "A enchant token is needed, no token was detected","color": "red"}
#eerdere checks ok scoreboard enchant_check naar 1
execute if predicate custom:is_4token run scoreboard players set @s[level=12..] enchant_check 1
#execute if items entity @s[level=3..] container.*  run scoreboard players set @s enchant_check 1

#als niet kan enchanten door geen levels of geen token stopt function
execute unless entity @s[scores={enchant_check=1}] run return 1

#checkt of hand leeg is
execute unless entity @s[nbt={SelectedItem:{}}] run tellraw @s {"text": "Can't enchant a empty hand ;)","color": "red"}
execute unless entity @s[nbt={SelectedItem:{}}] run scoreboard players set @s enchant_check 0
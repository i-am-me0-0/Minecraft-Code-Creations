#add scores for this pack to function
#value to check if playe is allowed to enchant
scoreboard objectives add enchant_check dummy
#value to check which enchant to apply
scoreboard objectives add selected_enchant trigger
#to open the gui via a trigger
scoreboard objectives add _gui trigger



#4 dummy voor 4protections
scoreboard objectives add 4protections_projectile dummy
scoreboard objectives add 4protections_fire dummy
scoreboard objectives add 4protections_protection dummy
scoreboard objectives add 4protections_blast dummy

#reset scores just in case something got messed up
scoreboard players reset @a enchant_check
scoreboard players reset @a selected_enchant
scoreboard players reset @a _gui



#load message
tellraw @a [{"text":"Enchant Trigger Has Loaded!","underlined":true,"color":"gold"},{"text":"\n\nTo get started run ","underlined":false,"color":"white"},{"clickEvent":{"action":"run_command","value":"/trigger _gui"},"hoverEvent":{"action":"show_text","value":[{"text":"Open the enchant trigger menu","color":"blue"}]},"text":"/trigger _gui","color": "green"}]
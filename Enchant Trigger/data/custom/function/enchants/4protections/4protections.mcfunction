function custom:checks/can_player_enchant_check2
execute unless entity @s[scores={enchant_check=1}] run return 1

#zet scores naar 0 voor checks
scoreboard players set @s 4protections_projectile 0
scoreboard players set @s 4protections_fire 0
scoreboard players set @s 4protections_blast 0
scoreboard players set @s 4protections_protection 0

#checkt of item armor is
execute unless items entity @s weapon.mainhand #enchantable/armor run tellraw @s {"text": "This item can't be enchanted with these enchantments","color": "red"}
execute unless items entity @s weapon.mainhand #enchantable/armor run return 0

#heeft item alle 4 enchantments al max level?, stop function geef error message
execute store result score .higher_than_4 4protections_projectile run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:projectile_protection"
execute if score .higher_than_4 4protections_projectile matches 4.. run scoreboard players set @s 4protections_projectile 1
execute store result score .higher_than_4 4protections_fire run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:fire_protection"
execute if score .higher_than_4 4protections_fire matches 4.. run scoreboard players set @s 4protections_fire 1
execute store result score .higher_than_4 4protections_blast run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:blast_protection"
execute if score .higher_than_4 4protections_blast matches 4.. run scoreboard players set @s 4protections_blast 1
execute store result score .higher_than_4 4protections_protection run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:protection"
execute if score .higher_than_4 4protections_protection matches 4.. run scoreboard players set @s 4protections_protection 1
execute if score .higher_than_4 4protections_projectile matches 4.. if score .higher_than_4 4protections_fire matches 4.. if score .higher_than_4 4protections_blast matches 4.. if score .higher_than_4 4protections_protection matches 4.. run tellraw @s {"text": "This item already has been enchanted with these enchantments","color": "red"}
execute if score .higher_than_4 4protections_projectile matches 4.. if score .higher_than_4 4protections_fire matches 4.. if score .higher_than_4 4protections_blast matches 4.. if score .higher_than_4 4protections_protection matches 4.. run return 0


##projectile_protection##
#als level hoger dan 4 zet score naar 1
execute store result score .higher_than_4 4protections_projectile run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:projectile_protection"
execute if score .higher_than_4 4protections_projectile matches 4.. run scoreboard players set @s 4protections_projectile 1

#add levels until level 4
execute if score @s 4protections_projectile matches 0 run item modify entity @s weapon.mainhand custom:projectile_protection_raise_level
execute if items entity @s[scores={4protections_projectile=0}] weapon.mainhand *[enchantments~[{enchantments: "projectile_protection", levels:1}]] run execute if score @s 4protections_projectile matches 0 run item modify entity @s weapon.mainhand custom:projectile_protection_raise_level
execute if items entity @s[scores={4protections_projectile=0}] weapon.mainhand *[enchantments~[{enchantments: "projectile_protection", levels:2}]] run execute if score @s 4protections_projectile matches 0 run item modify entity @s weapon.mainhand custom:projectile_protection_raise_level
execute if items entity @s[scores={4protections_projectile=0}] weapon.mainhand *[enchantments~[{enchantments: "projectile_protection", levels:3}]] run execute if score @s 4protections_projectile matches 0 run item modify entity @s weapon.mainhand custom:projectile_protection_raise_level
#nu wel level 4? zet score naar 1
execute if items entity @s[scores={4protections_projectile=0}] weapon.mainhand *[enchantments~[{enchantments: "projectile_protection", levels:4}]] run execute if score @s 4protections_projectile matches 0 run scoreboard players set @s 4protections_projectile 1


##fire_protection##
#als max level zet score naar 1
execute store result score .higher_than_4 4protections_fire run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:fire_protection"
execute if score .higher_than_4 4protections_fire matches 4.. run scoreboard players set @s 4protections_fire 1
 
#add levels until level 4
execute if score @s 4protections_fire matches 0 run item modify entity @s weapon.mainhand custom:fire_protection_raise_level
execute if items entity @s[scores={4protections_fire=0}] weapon.mainhand *[enchantments~[{enchantments: "fire_protection", levels:1}]] run execute if score @s 4protections_fire matches 0 run item modify entity @s weapon.mainhand custom:fire_protection_raise_level
execute if items entity @s[scores={4protections_fire=0}] weapon.mainhand *[enchantments~[{enchantments: "fire_protection", levels:2}]] run execute if score @s 4protections_fire matches 0 run item modify entity @s weapon.mainhand custom:fire_protection_raise_level
execute if items entity @s[scores={4protections_fire=0}] weapon.mainhand *[enchantments~[{enchantments: "fire_protection", levels:3}]] run execute if score @s 4protections_fire matches 0 run item modify entity @s weapon.mainhand custom:fire_protection_raise_level
#nu wel level 4? zet score naar 1
execute if items entity @s[scores={4protections_fire=0}] weapon.mainhand *[enchantments~[{enchantments: "fire_protection", levels:4}]] run execute if score @s 4protections_fire matches 0 run scoreboard players set @s 4protections_fire 1

##blast_protection##
#als max level zet score naar 1
execute store result score .higher_than_4 4protections_blast run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:blast_protection"
execute if score .higher_than_4 4protections_blast matches 4.. run scoreboard players set @s 4protections_blast 1
 
#add levels until level 4
execute if score @s 4protections_blast matches 0 run item modify entity @s weapon.mainhand custom:blast_protection_raise_level
execute if items entity @s[scores={4protections_blast=0}] weapon.mainhand *[enchantments~[{enchantments: "blast_protection", levels:1}]] run execute if score @s 4protections_blast matches 0 run item modify entity @s weapon.mainhand custom:blast_protection_raise_level
execute if items entity @s[scores={4protections_blast=0}] weapon.mainhand *[enchantments~[{enchantments: "blast_protection", levels:2}]] run execute if score @s 4protections_blast matches 0 run item modify entity @s weapon.mainhand custom:blast_protection_raise_level
execute if items entity @s[scores={4protections_blast=0}] weapon.mainhand *[enchantments~[{enchantments: "blast_protection", levels:3}]] run execute if score @s 4protections_blast matches 0 run item modify entity @s weapon.mainhand custom:blast_protection_raise_level
#nu wel level 4? zet score naar 1
execute if items entity @s[scores={4protections_blast=0}] weapon.mainhand *[enchantments~[{enchantments: "blast_protection", levels:4}]] run execute if score @s 4protections_blast matches 0 run scoreboard players set @s 4protections_blast 1

##protection##
#als max level zet score naar 1
execute store result score .higher_than_4 4protections_protection run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:protection"
execute if score .higher_than_4 4protections_protection matches 4.. run scoreboard players set @s 4protections_protection 1
 
#add levels until level 4
execute if score @s 4protections_protection matches 0 run item modify entity @s weapon.mainhand custom:protection_raise_level
execute if items entity @s[scores={4protections_protection=0}] weapon.mainhand *[enchantments~[{enchantments: "protection", levels:1}]] run execute if score @s 4protections_protection matches 0 run item modify entity @s weapon.mainhand custom:protection_raise_level
execute if items entity @s[scores={4protections_protection=0}] weapon.mainhand *[enchantments~[{enchantments: "protection", levels:2}]] run execute if score @s 4protections_protection matches 0 run item modify entity @s weapon.mainhand custom:protection_raise_level
execute if items entity @s[scores={4protections_protection=0}] weapon.mainhand *[enchantments~[{enchantments: "protection", levels:3}]] run execute if score @s 4protections_protection matches 0 run item modify entity @s weapon.mainhand custom:protection_raise_level
#nu wel level 4? zet score naar 1
execute if items entity @s[scores={4protections_protection=0}] weapon.mainhand *[enchantments~[{enchantments: "protection", levels:4}]] run execute if score @s 4protections_protection matches 0 run scoreboard players set @s 4protections_protection 1


function custom:completed_enchant/successfull_enchant2

#function custom:token_crafting
scoreboard players enable @a selected_enchant
scoreboard players enable @a _gui


#gives the recipe for the token
recipe give @a custom:enchant_token

#to check if triggers are run
function custom:gui/triggers_run_loop


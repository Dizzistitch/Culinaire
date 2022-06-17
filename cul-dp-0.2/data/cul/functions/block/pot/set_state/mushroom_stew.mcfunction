execute as @s[tag=cul.block.pot.heated] run function cul:block/pot/set_state/increase_cmd
execute as @s[tag=!cul.block.pot.heated] run item replace entity @s armor.head with minecraft:leather_horse_armor{CustomModelData:8520009}

data modify entity @s HandItems[0].tag.display.color set value 10983091

tag @s remove cul.block.pot.empty
tag @s add cul.block.pot.mushroom_stew

item modify entity @p[tag=cul.interact.player,gamemode=!creative] weapon.mainhand cul:remove_1

playsound cul:block.pot.add_item block @a
execute as @s[tag=!cul.block.pot.heated] run title @p[tag=cul.interact.player] actionbar {"translate":"cul.ui.actionbar.pot_no_heat"}
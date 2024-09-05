#> mparmor.ench:_/enchantment/reflect/attacker
#--------------------
# @ench : mparmor.ench:reflect
#--------------------

execute if score *reflect.null -mparmor.ench matches 1.. run return fail
execute if entity @s[tag=_mparmor.ench-reflect_wearer] run return fail

scoreboard players set *reflect.success -mparmor.ench 1

playsound minecraft:block.chiseled_bookshelf.pickup.enchanted player @s ~ ~ ~ 1 0.8

function mparmor.ench:_/enchantment/reflect/attacker.1 with storage mparmor.ench:var reflect

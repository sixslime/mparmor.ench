#> mparmor.ench:_/enchantment/reflect/victim_end
#--------------------
# @ench : mparmor.ench:reflect
#--------------------

execute if score *reflect.success -mparmor.ench matches 1 run playsound block.chiseled_bookshelf.insert.enchanted player @a ~ ~ ~ 1 1.3

scoreboard players operation @s _mparmor.ench-reflect_success = *reflect.succes -mparmor.ench

tag @s remove _mparmor.ench-reflect_wearer
scoreboard players reset *reflect.succes -mparmor.ench
scoreboard players reset *reflect.null -mparmor.ench
data remove storage mpweapons.ench:var reflect
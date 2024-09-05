#> mparmor.ench:_/enchantment/reflect/get_level
#--------------------
# ./victim
#--------------------

item replace entity @s container.0 from entity @n[tag=_mparmor.ench-reflect_wearer] armor.chest
execute store result score *reflect.level -mparmor.ench run data get entity @s item.components."minecraft:enchantments".levels."mparmor.ench:reflect"



kill @s
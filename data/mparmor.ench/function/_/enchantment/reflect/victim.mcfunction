#> mparmor.ench:_/enchantment/reflect/victim
#--------------------
# @ench : mparmor.ench:reflect
#--------------------

scoreboard players set *reflect.succes -mparmor.ench 0

execute if entity @s[type=!player] unless data storage mparmor.ench:settings enchantment.reflect{enable_on_mobs:true} run return run scoreboard players set *reflect.null -mparmor.ench 1

tag @s add _mparmor.ench-reflect_wearer
execute summon item_display run function mparmor.ench:_/enchantment/reflect/get_level

# damage taken = <past health> - <current health>
execute store result score *reflect.reflected -mparmor.ench run data get entity @s Health 10
scoreboard players operation *reflect.reflected -mparmor.ench -= @s _mparmor.ench-tickhealth
scoreboard players operation *reflect.reflected -mparmor.ench *= *-1 --mparmor.ench

execute store result score *reflect.mult -mparmor.ench run data get storage mparmor.ench:settings enchantment.reflect.reflection_amount.base 100

scoreboard players remove *reflect.level -mparmor.ench 1
execute store result score *reflect.mult_add -mparmor.ench run data get storage mparmor.ench:settings enchantment.reflect.reflection_amount.per_additional_level 100
scoreboard players operation *reflect.mult_add -mparmor.ench *= *reflect.level -mparmor.ench
scoreboard players operation *reflect.mult -mparmor.ench += *reflect.mult_add -mparmor.ench

scoreboard players operation *reflect.reflected -mparmor.ench *= *reflect.mult -mparmor.ench

execute if score *reflect.reflected -mparmor.ench matches ..0 run scoreboard players set *reflect.null -mparmor.ench 1

# total reflected damage
execute store result storage mparmor.ench:var reflect.reflected float 0.001 run scoreboard players get *reflect.reflected -mparmor.ench

scoreboard players reset *reflect.level -mparmor.ench
scoreboard players reset *reflect.mult -mparmor.ench
scoreboard players reset *reflect.mult_add -mparmor.ench
scoreboard players reset *reflect.reflected -mparmor.ench
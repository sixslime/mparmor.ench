#>mparmor.ench:_/tick
#--------------------
# @TICK
#--------------------

schedule function mparmor.ench:_/tick 1t

execute if score *cache.enchantment.reflect.enable_on_mobs --mparmor.ench matches 1.. as @e[type=!#mparmor.ench:_/non_living] at @s run function mparmor.ench:_/enchantment/reflect/tick
execute unless score *cache.enchantment.reflect.enable_on_mobs --mparmor.ench matches 1.. as @a at @s run function mparmor.ench:_/enchantment/reflect/tick
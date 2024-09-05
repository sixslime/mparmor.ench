#>mparmor.ench:settings

#declare storage mparmor.ench:settings
data modify storage mparmor.ench:settings PERSIST set value false

#>-------------------
#> setting : 
#-------------------
# ~ 
#-------------------
# - 
#-------------------
## data modify storage mparmor.ench:settings setting set value 0
#>-------------------

data modify storage mparmor.ench:settings enchantment.reflect.reflection_amount set value {base:0.3f, per_additional_level: 0.2f}
data modify storage mparmor.ench:settings enchantment.reflect.enable_on_mobs set value true
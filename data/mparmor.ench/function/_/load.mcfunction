#>mparmor.ench:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *mparmor.ench load-status 1

# settings
execute unless data storage mparmor.ench:settings {PERSIST:true} run function mparmor.ench:settings

#declare storage mparmor.ench:var
#declare storage mparmor.ench:in
#declare storage mparmor.ench:out
#declare storage mparmor.ench:data
#declare storage mparmor.ench:hook
#declare storage mparmor.ench:implement

# scoreboards
scoreboard objectives add -mparmor.ench dummy
scoreboard objectives add --mparmor.ench dummy
#scoreboard objectives add mparmor.ench-scoreboard dummy
scoreboard objectives add _mparmor.ench-tickhealth dummy

scoreboard players set *-1 --mparmor.ench -1

# cache
execute store result score *cache.enchantment.reflect.enable_on_mobs --mparmor.ench run data get storage mparmor.ench:settings enchantment.reflect.enable_on_mobs

# tick
schedule clear mparmor.ench:_/tick
function mparmor.ench:_/tick
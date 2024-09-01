execute if biome ~ ~ ~ #minecraft:is_forest run return run function tux:penguin/speech/say {key: "in_forest"}
execute if biome ~ ~ ~ #tux:desert run return run function tux:penguin/speech/say {key: "in_desert"}
execute if biome ~ ~ ~ #tux:cold run return run function tux:penguin/speech/say {key: "in_cold"}
execute if block ~ ~ ~ water run return run function tux:penguin/speech/say {key: "in_water"}

function tux:penguin/speech/say {key: "random"}

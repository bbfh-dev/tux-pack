# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.data_data set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.tux.bone.head] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_head set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.tux.bone.left_wing] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_left_wing set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.tux.bone.right_wing] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_right_wing set from storage aj:uuid main.out
execute on vehicle on passengers if entity @s[tag=aj.tux.bone.body] run function animated_java:global/internal/gu/convert_uuid_array_to_string with entity @s
data modify entity @s data.bones.bone_body set from storage aj:uuid main.out
# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
$data merge entity $(bone_head) { transformation: [-1f,0f,1.2246467991473532e-16f,-7.654042494670958e-18f,0f,1f,0f,1f,-1.2246467991473532e-16f,0f,-1f,0.0625f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_left_wing) { transformation: [-0.08715574274765847f,0.9961946980917454f,1.2246467991473532e-16f,0.34375f,0.9961946980917454f,0.08715574274765847f,0f,0.96875f,-1.0673500138323009e-17f,1.21998664834562e-16f,-1f,0.03125000000000004f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_right_wing) { transformation: [-0.08715574274765847f,-0.9961946980917454f,1.2246467991473532e-16f,-0.34375f,-0.9961946980917454f,0.08715574274765847f,0f,0.96875f,-1.0673500138323009e-17f,-1.21998664834562e-16f,-1f,0.03124999999999996f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
$data merge entity $(bone_body) { transformation: [-1f,0f,1.2246467991473532e-16f,-7.654042494670958e-18f,0f,1f,0f,0f,-1.2246467991473532e-16f,0f,-1f,0.0625f,0f,0f,0f,1f], start_interpolation: 0, interpolation_duration: 1 }
execute on vehicle unless entity @s[tag=aj.transforms_only] positioned ^0 ^0 ^0 rotated ~0 ~0 run function animated_java:tux/animations/sneeze/zzz/frames/zzz/0
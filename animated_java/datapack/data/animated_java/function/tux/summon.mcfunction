# This file was generated by Animated Java via MC-Build. It is not recommended to edit this file directly.
data modify storage aj:temp args set value {variant:'', animation:'', frame: 0}
$execute store success score #success aj.i run data modify storage aj:temp args set value $(args)
summon minecraft:item_display ~ ~ ~ { Tags:['aj.new','aj.rig_entity','aj.rig_root','aj.tux.root'], teleport_duration: 0, interpolation_duration: 1, Passengers:[{id:"minecraft:marker",Tags:["aj.rig_entity","aj.data","aj.tux.data"],data:{rigHash:"c93d7050c390686f058c14f43d5c875cb87dec237d43dd20aa30e13673e54f4d",locators:{locator:{posx:0f,posy:0f,posz:0f,rotx:0f,roty:0f}},cameras:{},bones:{data_data:"",bone_head:"",bone_left_wing:"",bone_right_wing:"",bone_body:""}}},{Tags:["aj.rig_entity"]},{Tags:["aj.rig_entity","aj.bone","aj.tux.bone","aj.tux.bone.head"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":3}},height:26f,width:8f},{Tags:["aj.rig_entity","aj.bone","aj.tux.bone","aj.tux.bone.left_wing"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":4}},height:26f,width:8f},{Tags:["aj.rig_entity","aj.bone","aj.tux.bone","aj.tux.bone.right_wing"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":5}},height:26f,width:8f},{Tags:["aj.rig_entity","aj.bone","aj.tux.bone","aj.tux.bone.body"],id:"minecraft:item_display",transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0f,0f,0f]},interpolation_duration:1,teleport_duration:0,item_display:"head",item:{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":2}},height:26f,width:8f}], }
execute as @e[type=item_display,tag=aj.new,limit=1,distance=..0.01] run function animated_java:tux/zzz/0
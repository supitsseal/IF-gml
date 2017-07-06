///scr_generate(planets, enemies, stars)

global.planetsGrav = 0

for(var p = 0; p < argument0; p++) {
    instance_create(random(room_width),random(room_height),obj_planet)
}

for(var e = 0; e < argument1; e++) {
    instance_create(random(room_width),random(room_height),obj_enemy_ship)
}

for(var s = 0; s < argument2; s++) {
    instance_create(random(room_width),random(room_height),obj_star)
}

instance_create(room_width/2, room_height/2, obj_player)

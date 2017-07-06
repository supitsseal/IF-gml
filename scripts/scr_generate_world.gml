var sh = (room_height / 2) - (floor(random(room_height / 3)));
sh = floor(sh/16)*16
var coin_count = 0;

global.planetGrav = random(1);

var ah = sh;

var stone_level, dirt_level, l = 0;

for(xx = 0; xx < room_width; xx+= 16) {
    
    //Grass
    instance_create(xx,ah,argument0)
    
    //Coin
    var randCoin = round(random(100))
        if(randCoin < 10) {
            instance_create(xx,ah-16,obj_coin)
            coin_count += 1
        }
    
    dirt_level = ((room_height - ah) / 16) * 16
    stone_level = ((room_height / 16) * 16)
    
    //Dirt
    for(yy = ah; yy < dirt_level; yy += 16) {
        instance_create(xx,yy + 16,argument1)
        l = yy;
    }
    
    //Stone
    for(yy = l; yy < stone_level; yy+= 16) {
        instance_create(xx,yy + 16,argument2)
    }
    
    ah += choose(16,0,-16)
}

for(var yb = 0; yb < room_height; yb+=16) {
    instance_create(-16,yb,obj_solid)
    instance_create(room_width,yb,obj_solid)
}

instance_create(room_width - 32, 32, obj_planetLeave)


image_index = irandom(3);
image_speed = 0;

grav = 0.1;
vspd = 0;

if(x < 0 || x > room_width || y < 0 || y > room_width) instance_destroy();
image_xscale -= scale;
image_yscale = image_xscale;

image_angle += rotate;

if(image_xscale <= 0) instance_destroy();
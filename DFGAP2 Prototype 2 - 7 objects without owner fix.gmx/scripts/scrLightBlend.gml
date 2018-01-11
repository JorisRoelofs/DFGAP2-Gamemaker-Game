///scrLightBlend(hue)
hue = argument[0];

switch(hue)
{
    case 0: image_blend = make_color_rgb(0,0,255) break;
    case 1: image_blend = make_color_rgb(75,0,180) break;
    case 2: image_blend = make_color_rgb(180,0,75) break;
    case 3: image_blend = make_color_rgb(255,0,0) break;
}

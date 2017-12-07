targetPlayer = argument[0];

drawHeight[1] = -25;
drawHeight[2] = -35;
drawHeight[3] = -40;
drawWidth = 25;
drawHeightDifference = -10;

for(i = argument_count-4; i > 0; i-=4)
{
    draw_set_color(c_black);
    //draw_text(targetPlayer.x, targetPlayer.y+drawHeight[1], argument[i]);
    draw_rectangle(targetPlayer.x-drawWidth, targetPlayer.y+drawHeight[2], targetPlayer.x+drawWidth, targetPlayer.y+drawHeight[3],false);
    if(argument[i+1] < 0.2 || argument[i+1] > 0.8) draw_set_color(argument[i+3]);
    else draw_set_color(argument[i+2]);
    draw_rectangle(targetPlayer.x-drawWidth, targetPlayer.y+drawHeight[2], targetPlayer.x+drawWidth*(2*argument[i+1] - 1), targetPlayer.y+drawHeight[3],false);
    drawHeight[1] += drawHeightDifference;
    drawHeight[2] += drawHeightDifference;
    drawHeight[3] += drawHeightDifference;
}

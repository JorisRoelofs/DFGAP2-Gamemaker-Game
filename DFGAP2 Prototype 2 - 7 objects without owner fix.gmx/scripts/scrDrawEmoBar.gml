drawHeight[1] = -25;
drawHeight[2] = -35;
drawHeight[3] = -40;
drawWidth = 25;
drawHeightDifference = -10;

for(i = array_length_1d(emoName) - 1; i >= 0; i-=1)
{
    draw_set_color(c_black);
    //draw_text(x, y+drawHeight[1], statName[i]);
    draw_rectangle(x-drawWidth, y+drawHeight[2], x+drawWidth, y+drawHeight[3],false);
    if(emoValue[i] < 0.2 || emoValue[i] > 0.8) draw_set_color(c_red);
    else draw_set_color(c_green);
    draw_rectangle(x-drawWidth, y+drawHeight[2], x-drawWidth+(2*drawWidth*emoValue[i]), y+drawHeight[3],false);
    drawHeight[1] += drawHeightDifference;
    drawHeight[2] += drawHeightDifference;
    drawHeight[3] += drawHeightDifference;
}

drawHeight[1] = -16;
drawHeight[2] = -20;
drawHeight[3] = -24;
drawWidth = 16;
drawHeightDifference = -8;

for(i = array_length_1d(emoName) - 1; i >= 0; i-=1)
{
    draw_set_color(c_black);
    //draw_text(x, y+drawHeight[1], statName[i]);
    draw_rectangle(x-drawWidth, y+drawHeight[2], x+drawWidth, y+drawHeight[3],false);
    if(tiredTime < timeTillTired) draw_set_color(c_red);
    else if(emoValue[i] < 0.2 || emoValue[i] > 0.8) draw_set_color(c_yellow);
    else draw_set_color(c_green);
    draw_rectangle(x-drawWidth, y+drawHeight[2], x-drawWidth+(2*drawWidth*emoValue[i]), y+drawHeight[3],false);
    draw_line_colour(x+drawWidth*(emoOptimal[i] - 0.5), y+drawHeight[2], x+drawWidth*(emoOptimal[i] - 0.5), y+drawHeight[3],c_aqua,c_aqua);    drawHeight[1] += drawHeightDifference;
    drawHeight[2] += drawHeightDifference;
    drawHeight[3] += drawHeightDifference;
}

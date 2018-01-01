///scrCreateMatrix(object,width,height,x,y,x-offset,y-offset,centered)
i = 0;
object = argument[i]; i++;
width = argument[i]; i++;
height = argument[i]; i++;
startX = argument[i]; i++;
startY = argument[i]; i++;
offsetX = argument[i]; i++;
offsetY = argument[i]; i++;
centered = argument[i]; i++;

if(centered)
{
    startX = startX - (0.5*(width-1)*offsetX);
    startY = startY - (0.5*(height-1)*offsetY);
}

for(i=0;i<height;i++)
{
    for(j=0;j<width;j++)
    {
        objects[(i*width)+j] = instance_create(startX + (j*offsetX), startY + (i*offsetY), object);
    }
}

return objects;

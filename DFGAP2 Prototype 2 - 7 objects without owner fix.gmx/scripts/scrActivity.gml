doSomethingElse = true;

for(i = 0; i < array_length_1d(statName); i++)
{
    if(statObject[i] != -1 && instance_exists(statObject[i]) && statValue[i] != -1)
    {
        if(doSomethingElse)
        {
            if(!statActivityTrue[i])
            {
                if(statValue[i] <= 0)
                {
                    doSomethingElse = false;
                    if(statTool[i] != -1 && instance_exists(statTool[i]) && statTool[i].owner = -1) mp_potential_step(statTool[i].x, statTool[i].y, speedMax, false);
                    else mp_potential_step(statObject[i].x, statObject[i].y, speedMax, false);
                }
                else statValue[i] -= 1/(statValueDecrease[i]*room_speed);
                
            }
            else
            {
                for(j = i+1; j < array_length_1d(statName); j++)
                {
                    statActivityTrue[j] = false;
                }
                
                doSomethingElse = false;
                
                speed = 0;
                x = statObject[i].x + 0.5*sprite_get_width(sprite_index);
                y = statObject[i].y + 0.5*sprite_get_height(sprite_index);
                
                statValue[i] += 1/(statValueIncrease[i]*room_speed);
                
                for(j=0;j<array_length_2d(statActivityEmotionChange,i);j++)
                {
                    emoValue[j] += statActivityEmotionChange[i,j]/(statValueIncrease[i]*room_speed);
                }
                
                if(statValue[i] >= 1)
                {
                    statActivityTrue[i] = false;
                    speed = speedMax;
                    if(statFindNewObject[i])
                    {
                        objIndex = statObject[i].object_index;
                        with(statObject[i]) instance_destroy();
                        statObject[i] = instance_nearest(x,y,objIndex);
                        if(!instance_exists(statObject[i]))
                        {
                            statObject[i] = -1;
                        }
                    }
                            if(statTool[i] != -1 && instance_exists(statTool[i]) && statTool[i].owner != -1) returnObject[i] = true;
                }   
            }
        }
        
        else statValue[i] -= 1/(statValueDecrease[i]*room_speed);
        
        statValue[i] = clamp(statValue[i],0,1);
    }
    else if(doSomethingElse && returnObject[i])
        {
            doSomethingElse = false;
            mp_potential_step(statTool[i].returnX, statTool[i].returnY, speedMax, false);
            if(point_distance(x,y,statTool[i].returnX,statTool[i].returnY) < 32)
            {
                with(statTool[i])
                {
                    owner = -1;
                    x = returnX;
                    y = returnY;
                }
                returnObject[i] = false;
            }
        }
}

return doSomethingElse;

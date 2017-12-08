doSomethingElse = true;

for(i = 0; i < array_length_1d(statName); i++)
{
    if(statObject[i] != -1 && instance_exists(statObject[i]))
    {
        if(doSomethingElse)
        {
            if(!statActivityTrue[i])
            {
                if(statValue[i] <= 0 && doSomethingElse)
                {
                    doSomethingElse = false;
                    mp_potential_step(statObject[i].x, statObject[i].y, speedMax, false);
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
                }
            }
        }
        else statValue[i] -= 1/(statValueDecrease[i]*room_speed);
        
        statValue[i] = clamp(statValue[i],0,1);
    }
}

return doSomethingElse;

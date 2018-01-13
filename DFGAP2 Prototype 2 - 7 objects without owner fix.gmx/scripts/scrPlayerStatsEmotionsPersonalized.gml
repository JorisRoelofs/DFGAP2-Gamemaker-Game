switch(objGod.playerIndex)
{
    case 0:
        break;
    
    case 1:
        statValueDecrease[0] = 36;
        statValueDecrease[1] = 36;
        statObject[1] = -1;
        statValue[2] = 1;
        statTool[2] = instance_nearest(x,y,objSweeper);
        break;
    
    case 2:
        statValueIncrease[1] = 4;
        break;

    case 3:
        statObject[1] = -1;
        statValueIncrease[0] = 4;
        break;
}

objGod.playerIndex++;

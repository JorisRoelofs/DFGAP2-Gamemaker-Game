switch(objGod.playerIndex)
{
    case 0:
        statValueDecrease[0] = 6;
        break;
    
    case 1:
        statObject[1] = -1;
        emoLightIncrease[0] = 4;
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

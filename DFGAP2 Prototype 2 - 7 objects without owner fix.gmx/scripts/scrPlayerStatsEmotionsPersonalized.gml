switch(objGod.playerIndex)
{
    case 0:
        statObject[0] = instance_nearest(x,y,objEatingLocation);
        statTool[0] = instance_nearest(x,y,objFood);
        statToolParent[0] = objFood;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        statToOptimal[0] = true;
        break;
    
    case 1:
        statValueDecrease[0] = 4;
        statValueDecrease[1] = 4;
        statObject[1] = -1;
        statValue[2] = 1;
        statTool[2] = instance_nearest(x,y,objSweeper);
        priority = array(2,0,1);
        break;
    
    case 2:
        statObject[0] = instance_nearest(x,y,objDishwasher);
        statTool[0] = instance_nearest(x,y,objFoodUsed);
        statToolParent[0] = objFoodUsed;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        break;

    case 3:
        statObject[0] = instance_nearest(x,y,objKitchen);
        statTool[0] = instance_nearest(x,y,objFoodPlate);
        statToolParent[0] = objFoodPlate;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        break;

    case 4:
        statObject[0] = instance_nearest(x,y,objServingLocation);
        statTool[0] = instance_nearest(x,y,objFoodServe);
        statToolParent[0] = objFoodServe;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        break;
        break;

    case 5:
        statObject[1] = -1;
        statValueIncrease[0] = 4;
        break;
}

objGod.playerIndex++;

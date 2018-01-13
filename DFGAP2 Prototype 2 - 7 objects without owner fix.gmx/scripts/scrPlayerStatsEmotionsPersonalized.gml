switch(objGod.playerIndex)
{
    case 1:
        statValue[0] = 1;
        statTool[0] = instance_nearest(x,y,objSweeper);
        statToolParent[0] = objSweeper;
        progressExist = 1;
        employee = true;
        break;

    case 0:
        statObject[0] = instance_nearest(x,y,objEatingLocation);
        statTool[0] = instance_nearest(x,y,objFood);
        statToolParent[0] = objFood;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        statToOptimal[0] = true;
        progressExist = 30;
        break;
    
    case 2:
        statObject[0] = instance_nearest(x,y,objDishwasher);
        statTool[0] = instance_nearest(x,y,objFoodUsed);
        statToolParent[0] = objFoodUsed;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 10;
        employee = true;
        break;

    case 3:
        statObject[0] = instance_nearest(x,y,objKitchen);
        statTool[0] = instance_nearest(x,y,objFoodPlate);
        statToolParent[0] = objFoodPlate;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 14;
        employee = true;
        break;

    case 4:
        statObject[0] = instance_nearest(x,y,objServingLocation);
        statTool[0] = instance_nearest(x,y,objFoodServe);
        statToolParent[0] = objFoodServe;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 11;
        employee = true;
        break;

    case 5:
        statObject[1] = -1;
        statValueIncrease[0] = 4;
        break;
}

objGod.playerIndex++;

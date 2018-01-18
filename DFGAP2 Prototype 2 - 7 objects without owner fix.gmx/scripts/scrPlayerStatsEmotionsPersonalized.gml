switch(objGod.playerIndex)
{
    case 0:
    case 1:
    case 2:
    case 3:
        statObject[0] = instance_find(objEatingLocation,objGod.playerIndex);
        statTool[0] = instance_nearest(x,y,objFood);
        statToolParent[0] = objFood;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        statToOptimal[0] = true;
        progressExist = 30;
        break;

    case 4:
        statValue[0] = 1;
        statTool[0] = instance_nearest(x,y,objSweeper);
        statToolParent[0] = objSweeper;
        progressExist = 1;
        employee = 1;
        statName[1] = "cleaning";
        statValue[1] = 1;
        statValueDecrease[1] = 4;
        statValueIncrease[1] = 2;
        statObject[1] = instance_nearest(x,y,objDishwasher);
        statTool[0] = instance_nearest(x,y,objFoodUsed);
        statToolParent[0] = objFoodUsed;
        statFindNewObject[1] = false;
        statFindNewTool[1] = true;
        statActivityTrue[1] = 0;
        statToOptimal[1] = false;
        statTool[1] = -1;
        statToolParent[1] = -1;
        returnObject[1] = false;
        priority[1] = i;
        break;

    case 5:
        statObject[0] = instance_nearest(x,y,objDishwasher);
        statTool[0] = instance_nearest(x,y,objFoodUsed);
        statToolParent[0] = objFoodUsed;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 10;
        employee = 2;
        break;

    case 6:
        statObject[0] = instance_nearest(x,y,objKitchen);
        statTool[0] = instance_nearest(x,y,objFoodPlate);
        statToolParent[0] = objFoodPlate;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 14;
        employee = 3;
        break;

    case 7:
        statObject[0] = instance_nearest(x,y,objServingLocation);
        statTool[0] = instance_nearest(x,y,objFoodServe);
        statToolParent[0] = objFoodServe;
        statValueDecrease[0] = 4;
        statValueIncrease[0] = 2;
        statFindNewObject[0] = false;
        statFindNewTool[0] = true;
        progressExist = 11;
        employee = 4;
        break;
}

objGod.playerIndex++;

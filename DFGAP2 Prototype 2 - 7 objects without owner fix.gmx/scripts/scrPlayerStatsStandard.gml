i = 0;
statName[i] = "sleep"; //Name
statValue[i] = 0.5; //Current value
statValueDecrease[i] = 8; //Seconds until value hits 0
statValueIncrease[i] = 1; //Seconds during activity until value hits 1
statObject[i] = instance_nearest(x,y,objBed); //Activity object
statFindNewObject[i] = false;
statFindNewTool[i] = false;
statActivityTrue[i] = 0; //Is activity currently being performed?
statToOptimal[i] = false;
statTool[i] = -1;
statToolParent[i] = -1;
returnObject[i] = false;
priority[i] = i;

i++
statName[i] = "internet craving";
statValue[i] = 0.5;
statValueDecrease[i] = 2;
statValueIncrease[i] = 0.1;
statObject[i] = instance_nearest(x,y,objComputer);
statFindNewObject[i] = false;
statFindNewTool[i] = false;
statActivityTrue[i] = 0;
statActivityEmotionChange[i,0] = -0.1;
statToOptimal[i] = false;
statTool[i] = -1;
statToolParent[i] = -1;
returnObject[i] = false;
priority[i] = i;

i++;
statName[i] = "cleaning";
statValue[i] = -1;
statValueDecrease[i] = 0.2;
statValueIncrease[i] = 0.1;
statObject[i] = instance_nearest(x,y,objShit);
statFindNewObject[i] = true;
statFindNewTool[i] = false;
statActivityTrue[i] = 0;
statActivityEmotionChange[i,0] = -0.1;
statToOptimal[i] = false;
statTool[i] = -1;
statToolParent[i] = -1;
returnObject[i] = false;
priority[i] = i;

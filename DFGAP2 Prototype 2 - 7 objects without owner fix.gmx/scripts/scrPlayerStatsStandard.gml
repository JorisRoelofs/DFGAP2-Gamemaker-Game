i = 0;
statName[i] = "sleep"; //Name
statValue[i] = 0.5; //Current value
statValueDecrease[i] = 8; //Seconds until value hits 0
statValueIncrease[i] = 1; //Seconds during activity until value hits 1
statObject[i] = instance_nearest(x,y,objBed); //Activity object
statFindNewObject[i] = false;
statActivityTrue[i] = 0; //Is activity currently being performed?
statActivityEmotionChange[i,0] = -0.1; //Total change in emotion value during activity
statTool[i] = -1;
returnObject[i] = false;

i++
statName[i] = "internet craving";
statValue[i] = 0.5;
statValueDecrease[i] = 2;
statValueIncrease[i] = 0.1;
statObject[i] = instance_nearest(x,y,objComputer);
statFindNewObject[i] = false;
statActivityTrue[i] = 0;
statActivityEmotionChange[i,0] = -0.1;
statTool[i] = -1;
returnObject[i] = false;

i++;
statName[i] = "cleaning";
statValue[i] = -1;
statValueDecrease[i] = 0.2;
statValueIncrease[i] = 0.1;
statObject[i] = instance_nearest(x,y,objShit);
statFindNewObject[i] = true;
statActivityTrue[i] = 0;
statActivityEmotionChange[i,0] = -0.1;
statTool[i] = -1;
returnObject[i] = false;

i = 0;
statName[i] = "sleep"; //Name
statValue[i] = 0.5; //Current value
statValueDecrease[i] = 8; //Seconds until value hits 0
statValueIncrease[i] = 1; //Seconds during activity until value hits 1
statObject[i] = instance_nearest(x,y,objBed); //Activity object
statActivityTrue[i] = 0; //Is activity currently being performed?

i++
statName[i] = "internet craving";
statValue[i] = 0.5;
statValueDecrease[i] = 2;
statValueIncrease[i] = 0.1;
statObject[i] = instance_nearest(x,y,objComputer);
statActivityTrue[i] = 0;

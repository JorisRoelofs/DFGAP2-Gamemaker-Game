for(j = 0; j < 1; j++){
for(k = 0; k < instance_number(objPlayer); k ++){
test[k, j] = 0;
}
}
numb = 0;
sum = 0;
draw_set_color(c_black);
draw_text(x+ 325, y-300, "Overall Happiness");
draw_rectangle(x+325, y-250,x+475, y-270,false);

if(instance_exists(objPlayer)){

playerIndex = 0;

with(objPlayer){
for(i = 0; i < array_length_1d(emoName); i++){
other.test[other.playerIndex,i]= emoValue[i];

}
other.playerIndex++;
}

}
for(j = 0; j < 1; j++){
for(k = 0; k < instance_number(objPlayer); k ++){
if(test[k, j] < 0.5) sum += 2*test[k, j];
else sum += 2*(1 - test[k, j]);
}
}
sum = sum/(instance_number(objPlayer));
if(sum < 0.2 || sum > 0.8){
draw_set_color(c_green);
}
else{draw_set_color(c_green);
}
draw_rectangle(x+325, y-250,x+325+150*sum, y-270,false);

draw_set_color(c_black);
for(j = 0; j < instance_number(objPlayer); j++){
draw_text(x+ 325, y-215 + j*100, "Player" + string(j + 1));

if( (test[j,0] < 0.2 || test[j,0] > 0.8)){
spr = sprite8}
else if( (test[j,0] < 0.35 || test[j,0] > 00.65)){
spr = sprite7}
else{
spr = sprite6}

draw_sprite_ext( spr, -1, x+413, y-209 + j*100, 1, 1, 0, c_white, 1);
}

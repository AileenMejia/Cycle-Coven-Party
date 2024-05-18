/// @description Insert description here
// You can write your code in this editor
//Inside player step event
//Is there a floor object underneath player?
if(place_meeting(x,y+1,obj_barrier)){
   //yes, so set his vertical movement to zero
    vspeed=0;
}

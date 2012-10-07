/*

Things to attach to the body:

battery
multiwii board
low battery alarm (pointing downwards)
radio receiver
4x ESCs


*/

use <MCAD/boxes.scad>
batx=52;
baty=78;
batz=28;
thickness=3;
height=batz;
$fn=100;
/*
difference()
{


union()
{
translate([20,0,9])cube([45,100,18],center=true);
rotate([0,0,45])translate([0,-(46+30)/2,9])cube([18,46+30,2*9],center=true);

for (ang = [45, 135])//,225,315])
{
rotate([0,0,ang])	
difference()
{
union()
{
		//translate([0,0,9])rotate([90,0,0])cylinder(r=9,h=46+30,$fn=100);
}
		translate([0,-12,9])rotate([90,0,0])cylinder(r=12.3/2,h=100);
}


}
//	translate([0,0,height/2])cube([batx+2*thickness,baty+2*thickness,height],center=true);

}


	translate([0,0,batz/2-thickness])cube([batx,baty+50,batz],center=true);

}*/
/*
difference()
{


union()
{
minkowski()
{
translate([0,0,10])cube([105,20,20],center=true);
cylinder(r=4,h=3);
}
}

translate([-0,10,14])minkowski(){cube([62,12,21],center=true);cylinder(r=4,h=2);}

translate([26,10,10])rotate([90,0,45])cylinder(r=12.3/2,h=100);
translate([-26,10,10])rotate([90,0,-45])cylinder(r=12.3/2,h=100);

translate([50,0,-1])cylinder(r=1.8,h=40);
translate([-50,0,-1])cylinder(r=1.8,h=40);


}*/
module clippers()
{
difference()
{
	cube([35,35,28]);
	translate([27,8,-1])cylinder(r=1.8,h=50);
	translate([8,27,-1])cylinder(r=1.8,h=50);
	translate([0,0,14])rotate([90,0,135])cylinder(r=12.3/2,h=50);
	
//	translate([-1,-1,6])cube([10,15,30]);
	translate([-3,-3,15])rotate([0,0,45])cube([30,30,40],center=true);
	translate([38,38,15])rotate([0,0,45])cube([30,30,40],center=true);


}
}
//translate([26,26,0])clippers();
difference()
{

cube([52+35*2,52+35*2,2],center=true);

for (ang = [0,90,180,270]){
 rotate([0,0,ang]){
translate([64,64,-1])rotate([0,0,45])cube([30,30,40],center=true);
translate([26,26,-10]){	translate([27,8,-1])cylinder(r=1.8,h=50);
	translate([8,27,-1])cylinder(r=1.8,h=50);
}

}}}
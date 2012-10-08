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

module base(){
difference()
{

cube([52+35*2,52+35*2,2],center=true);

for (ang = [0,90,180,270]){
 rotate([0,0,ang]){
translate([64,64,-1])rotate([0,0,45])cube([30,30,40],center=true);
translate([26,26,-10]){	translate([27,8,-1])cylinder(r=1.8,h=50);
	translate([8,27,-1])cylinder(r=1.8,h=50);
}

}}}}

module top(){
difference()
{

cube([52+35*2,52+35*2,15],center=true);

for (ang = [0,90,180,270]){
 rotate([0,0,ang]){
translate([64,64,-1])rotate([0,0,45])cube([30,30,40],center=true);
translate([26,26,-10]){	translate([27,8,15])cylinder(r=1.8,h=50);
	translate([8,27,15])cylinder(r=1.8,h=50);
translate([27,8,-2.5-3])cylinder(r=4,h=20);
	translate([8,27,-5.5])cylinder(r=4,h=20);
}

}}}}

union()
{


difference()
{


top();

difference()
{
translate([0,0,4.5]) rotate([0,0,45]) cube([95,95,20],center=true);
translate([67,0,0])cube(30,center=true);
translate([-67,0,0])cube(30,center=true);
}
translate([0,0,9.5])cube([52,200,30],center=true);
translate([0,-8,-5.5]){
difference(){
cube([100,16,8.5]);
translate([0,-0.5,5])rotate([45,0,0])cube([100,10,10]);
translate([0,-0.5,-10.5])rotate([45,0,0])cube([100,10,10]);
}}
translate([0,-4,0]){
translate([-45/2,0,-10])cylinder(r=1,h=50);
translate([45/2,0,-10])cylinder(r=1,h=50);
translate([-45/2,45,-10])cylinder(r=1,h=50);
translate([45/2,45,-10])cylinder(r=1,h=50);

translate([6,-9,-10])cylinder(r=1.8,h=50);
translate([6,-9-24,-10])cylinder(r=1.8,h=50);
translate([6-19,-9,-10])cylinder(r=1.8,h=50);
translate([6-19,-9-24,-10])cylinder(r=1.8,h=50);}


translate([28,-9-12-4,-30])cylinder(r=5,h=50);
/*translate([50,0,-30])cylinder(r=1,h=40);
translate([0,50,-30])cylinder(r=1,h=40);
translate([-50,0,-30])cylinder(r=1,h=40);
translate([0,-50,-30])cylinder(r=1,h=40);*/

}


translate([-30,-61,-7])cube([60,20,4]);
rotate([0,0,180])translate([-30,-61,-7])cube([60,18,4]);


}

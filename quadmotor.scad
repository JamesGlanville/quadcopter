$fn=100;
difference()
{	
	union()
	{
		cylinder(r=36/2,h=18,$fn=100);
		translate([0,-12,9])rotate([90,0,0])cylinder(r=9,h=25,$fn=100);
		translate([0,-20,4.5])cube([18,34,9],center=true);

	}
	translate([0,0,9-4])cylinder(r=29.2/2,h=10,$fn=100);
	translate([0,0,5+6.5])cylinder(r=30/2,h=10,$fn=100);
	translate([0,-12,9])rotate([90,0,0])cylinder(r=12.3/2,h=50);
	rotate([0,0,0])translate([0,3+3.5,-1])cube([4,6.5,30],center=true);

rotate([0,0,45]){
	rotate([0,0,0])translate([0,3+5.5,-1])cube([3,6.5,30],center=true);
	rotate([0,0,90])translate([0,3+5.5,-1])cube([3,6.5,30],center=true);
	rotate([0,0,-90])translate([0,3+5.5,-1])cube([3,6.5,30],center=true);
	rotate([0,0,180])translate([0,3+5.5,-1])cube([3,6.5,30],center=true);
}
	translate([0,0,-1])cylinder(r=7.5/2,h=10);


}
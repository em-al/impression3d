//piliers

for (i=[0:5])
{
if(i==4) { 
translate([0,0,0])
color("red")cylinder(r=10,h=65);}
}

translate([40,0,0])
cylinder(r=10,h=65);

translate([35,45,0])
cylinder(r=10,h=65);


translate([85,0,0])
cylinder(r=10,h=65);


translate([85,45,O])
cylinder(r=10,h=65);


translate([0,45,0])
cylinder(r=10,h=65);


for (i=[0:2]) {
translate([0+20*i,0,0])
cylinder(r=10,h=65);

}

//sol
translate([-10,-12,-5])
cube([120,75,10]);

translate([-10,-22,-15])
cube([130,95,10]);

translate([-10,-25,-25])
cube([140,105,10]);

//toit

difference(){
translate([-15,20,5])
rotate([45,0,0])
cube([130,70,70]);

translate([-16,-30,-8])
cube([133,100,70]);}
$fn=50; module cylindre() {
difference () {
cylinder(3, r1= 5, r2= 7);
translate([0,0,-3]);
cylinder(7, r1=0.8, r2= 0.8);

translate([0,0,2.4])
cylinder(5, r1= 2.1,r2= 2.1);

translate([0,0,2.3])
cylinder(5, r1=1.7, r2=1.7);
} };

module tige8(longueur){
cylinder(r=0.8,h=longueur);
};
//cylindre();
tige8(20);

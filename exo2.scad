$fn=50;
/*for ( i = [0: -5 : -20] ) {
   translate([0,i,0])
    rotate([0,0,40])
    cube([14,14,5]);
}*/
for ( i = [0: 20 : 220] ) {
for ( j = [0: 20 : 220] ) {
   translate([i,j,0])
   cylinder (h=0.5*(i+j), d=10, $fn=10);
}
} 

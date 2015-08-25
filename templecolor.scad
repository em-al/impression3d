 $fn=50;
union(){    
for (i = [0:4]){
        translate ([-30,-60+i*15,0])
        for (i = [0:4]) {
           if(i==3) {
               translate ([i*15,0,0]) union (){
                   color("purple")cylinder (h=20, r2=2, r=2.3);
                   translate ([0,0,20])cylinder (h=1.5, r2=4, r=2);
                   translate ([-4.5,-4.5,21.5])cube([9,9,1]);}
               
           }
             else {
               translate ([i*15,0,0]) union (){
                   cylinder (h=20, r2=2, r=2.3);
                   translate ([0,0,20])cylinder (h=1.5, r2=4, r=2);
                   translate ([-4.5,-4.5,21.5])cube([9,9,1]);}
           }
       }    
    }
   
   
//fin des colonnes
union (){
    translate ([-32,-2,-2]) cube([64,9,2]);
    translate ([-32,-2,-4]) cube([64,11,2]);
    translate ([-32,-65,-4]) cube([64,64,4]);
}//fin des escaliers
union (){ //base toit
    translate ([-34,-64,22]) cube([68,70,7]);
    translate ([-34.5,-65,25]) cube([69,72,1]);
}
translate ([-37.5,-64,29]) cube([75,72,2]);
difference () {
    translate ([-34.5,-64,25]) cube([69,70,35]);
  rotate ([0,20,0]) translate ([-25,-80,43]) cube([80,100,35]);
    rotate ([0,-20,0]) translate ([-25,-80,43]) cube([80,100,35]);
}
rotate ([0,20,0]) translate ([-16,-64,43]) cube([42,72,1.5]);
rotate ([0,-20,0]) translate ([-26,-64,43]) cube([42,72,1.5]);
 
} 
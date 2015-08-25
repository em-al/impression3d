$fn=50;

if (affichage==0){Chat();Rond();PQ();};
if (affichage==1){Rond(); };
if (affichage==2){Chat(); };
if (affichage==3){PQ();};

affichage=0;  
        //if 0-> tout apparait
        //if 1 -> Mr Chat apparait
        //if 2 -> le rond autour
        //if 3 -> Tient le pq
            



module Chat(){ 
    union(){
        difference(){
            circle(r = 20);
            translate ([-13,-5,0])text("A", 15,"fb_nyan");
    }
};}

module Rond(){
    union(){
    difference (){
        cylinder(h = 15, r=20);
       translate ([0,0,-1]) cylinder(h = 17, r=19);
        translate ([-15,0,0]) cube(30);
    }
   
    difference (){
        rotate ([0,90,0]) translate ([-7,-30,-19.5]) square([5,30]);
        rotate ([0,90,0]) translate ([-4.5,-28,-19.5])  circle(r = 1);
        }
     difference (){
        rotate ([0,90,0]) translate ([-7,-30,19.5]) square([5,30]);
        rotate ([0,90,0]) translate ([-4.5,-28,19.5])  circle(r = 1);
        }
        
    color("blue"){  translate ([14,9,15])rotate ([0,0,30]){
     difference (){
          cube([3,1,0.2]);
           translate ([0.5,0.5,-0.2])cylinder(h=0.7,r=0.2);}
     }   
 }
    color("blue"){  translate ([-17.5,9.5,15])rotate ([0,0,-30]){
     difference (){
          cube([3,1,0.2]);
           translate ([2.2,0.5,-0.2])cylinder(h=0.7,r=0.2);}
     }   
 }
};
}

module PQ(){
    rotate ([0,90,0]) translate ([-4.5,-28,-22]) cylinder(h=45,r=0.5);}

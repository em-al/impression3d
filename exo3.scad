$fn=100;

//le fantôme//

module corps(){	
	difference(){
		hull() {
			translate([10,0,0])  cylinder(h=2, r=10);
			cylinder(h=2, r=10);
 		}
		translate([-16,-22,-2]) cube([42,22,6]);
	}
}

/*ghost Part1*/
module ghostPart1(){
	difference(){
		translate([-1,0,0]) corps();
		translate([6,3,-2]) cube([4,4,6]);
	}
}

/*ghost Part2*/
module ghostPart2(){
	mirror([0,1,0]) 
	ghostPart1();
}

/*dents bas du ghost*/
module dents(){
	translate([-30,0,0])
	rotate([0,0,40])
	cube([14,14,5]);

	translate([-30,-5,0])
	rotate([0,0,40])
	cube([14,14,5]);

	translate([-30,-10,0])
	rotate([0,0,40])
	cube([14,14,5]);

	translate([-30,-15,0])
	rotate([0,0,40])
	cube([14,14,5]);

	translate([-30,-20,0])
	rotate([0,0,40])
	cube([14,14,5]);
}

/*juste le fantôme sans les pixels ni les dents*/
module justGhost(){
	ghostPart1();
	ghostPart2();
}



//les pixels//

/*ligne de pixels*/
module pixels(){
	translate([2,9,0]) cube([6,6,2]);
	translate([2,18,0]) cube([6,6,2]);
	translate([2,27,0]) cube([6,6,2]);
}

/*liens entre les pixels*/
module liens(){
	translate([3.5,15,0]) cube([3,3,2]);
	translate([3.5,24,0]) cube([3,3,2]);
	translate([3.5,33,0]) cube([3,3,2]);
	translate([3.5,42,0]) cube([3,3,2]);
	translate([3.5,51,0]) cube([3,3,2]);
	translate([3.5,60,0]) cube([3,3,2]);
}


/*pixel du milieu + cylindre*/
module pixelMiddle(){
		translate([2,36,0]) cube([6,6,5]);
		translate([5,39,]) color("red") cylinder(h=50, r=2);
}



//plaque finale à accrocher au mur//

/*moitié de droite*/
module entierDroite(){	
	difference(){
		justGhost();

		translate([16,1,-2])
		dents();
	}
	pixels();
}

/*moitié de gauche*/
module entierGauche(){
	mirror([0,1,0])
	translate([0,-78,0])
	entierDroite();
}


//bouchon pacman//

difference(){
difference(){
	translate([5,39,70]) color("blue") sphere(d=15);

	translate([1,12,62])
	rotate([0,0,36])
	cube([17,17,15]);
}


translate([5,40,60]) cylinder(h=15, r=2);
}

//appels des modules//

entierDroite();
entierGauche();
pixelMiddle();
liens();


for ( ) 





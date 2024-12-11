
difference() {
    cube([15,10,32]);
    for (i = [0:4:24]) {
        translate([0,5,i])
            cube([15,5,1.6]);
    }
    for (i = [0:4:24]) {
        for (j = [0:3:12]) {
            translate([j,5,i])
                cube([3,5,1.6]);
        }
    }
    
}
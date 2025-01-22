shape_max = [24, 60, 60];
shape_min = [0, 0, 0];
shape_for_difference = [shape_max[0] + 10, shape_max[1] + 10, shape_max[2] + 10];

difference() {
    cube(shape_max);
    translate([2, 24, -5]) {
        cube(shape_for_difference);
    }
    translate([2, -shape_max[1]+20, -5]) {
        cube([20, shape_max[1], shape_for_difference[2]]);
    }
}


shape_max = [300, 115, 44];
shape_min = [0, 0, 10];
bottom_max_z = 25;
top_min_z = 29;
thickness = 2.5;
height_for_keycaps = 10;
round_radius = 4;

difference() {
    polyhedron(
        points=[
            [shape_min[0],shape_min[1],shape_min[2]],
            [shape_max[0],shape_min[1],shape_min[2]],
            [shape_max[0],shape_max[1],bottom_max_z],
            [shape_min[0],shape_max[1],bottom_max_z],
            [shape_min[0],shape_min[1],top_min_z],
            [shape_max[0],shape_min[1],top_min_z],
            [shape_max[0],shape_max[1],shape_max[2]],
            [shape_min[0],shape_max[1],shape_max[2]],
        ],
        faces=[
            [0,1,2,3],
            [4,5,1,0],
            [5,6,2,1],
            [6,7,3,2],
            [7,4,0,3],
            [7,6,5,4],
        ]
    );
    polyhedron(
        points=[
            [shape_min[0]+thickness,shape_min[1]+thickness,0],
            [shape_max[0]-thickness,shape_min[1]+thickness,0],
            [shape_max[0]-thickness,shape_max[1]-thickness,0],
            [shape_min[0]+thickness,shape_max[1]-thickness,0],
            [shape_min[0]+thickness,shape_min[1]+thickness,top_min_z-height_for_keycaps],
            [shape_max[0]-thickness,shape_min[1]+thickness,top_min_z-height_for_keycaps],
            [shape_max[0]-thickness,shape_max[1]-thickness,shape_max[2]-height_for_keycaps],
            [shape_min[0]+thickness,shape_max[1]-thickness,shape_max[2]-height_for_keycaps],
        ],
        faces=[
            [0,1,2,3],
            [4,5,1,0],
            [5,6,2,1],
            [6,7,3,2],
            [7,4,0,3],
            [7,6,5,4],
        ]
    );
    polyhedron(
        points=[
            [shape_min[0]+thickness*2,shape_min[1]+thickness*2,0],
            [shape_max[0]-thickness*2,shape_min[1]+thickness*2,0],
            [shape_max[0]-thickness*2,shape_max[1]-thickness*2,0],
            [shape_min[0]+thickness*2,shape_max[1]-thickness*2,0],
            [shape_min[0]+thickness*2,shape_min[1]+thickness*2,top_min_z-1],
            [shape_max[0]-thickness*2,shape_min[1]+thickness*2,top_min_z-1],
            [shape_max[0]-thickness*2,shape_max[1]-thickness*2,shape_max[2]-2],
            [shape_min[0]+thickness*2,shape_max[1]-thickness*2,shape_max[2]-2],
        ],
        faces=[
            [0,1,2,3],
            [4,5,1,0],
            [5,6,2,1],
            [6,7,3,2],
            [7,4,0,3],
            [7,6,5,4],
        ]
    );
    intersection() {
        translate([5,5,0])
            cube([290,105,45]);
            union() {
                for (y = [-400:11:400]) {
                    for (x = [-401:11:400]) {
                        rotate([0,0,45])
                        translate([x, y, 0])
                            cube([8,8,45]);
                    }
                }
            };
    }
}
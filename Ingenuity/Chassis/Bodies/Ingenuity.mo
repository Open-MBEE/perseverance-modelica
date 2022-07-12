within Ingenuity.Chassis.Bodies;
model Ingenuity
extends .VehicleDynamics.Vehicles.Chassis.Bodies.Generic(
    redeclare replaceable .VehicleDynamics.Vehicles.Chassis.Bodies.Aerodynamics.None aerodynamics,
    redeclare replaceable .Ingenuity.Chassis.Bodies.Visualizers.Ingenuity visualizer,massProperties(m = 1.398,rcm0 = {0,0,0.1935},visualize = false));
    replaceable .VehicleDynamics.Vehicles.Chassis.Bodies.GroundImpacts.Basic basic(impact_grid = {{0.28628,0.28726,0},{-0.28628,0.28726,0},{0.28628,-0.28726,0},{-0.28628,-0.28726,0}},d = 1e-2 * basic.c,visualize = false) constrainedby VehicleDynamics.Vehicles.Chassis.Bodies.GroundImpacts.Interfaces.Base annotation(Placement(transformation(extent = {{40.15916702251373,-19.84083297748627},{79.84083297748627,19.84083297748627}},origin = {0.0,0.0},rotation = 0.0)));

equation
    connect(basic.frame_a,frame_a) annotation(Line(points = {{40.15916702251373,0},{30,0},{30,32},{-100,32},{-100,0}},color = {95,95,95}));
    annotation(Icon(graphics = {Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_body_icon.PNG",extent={{91.36585365853662,-90.45894143200091},{-91,90}})}));
end Ingenuity;

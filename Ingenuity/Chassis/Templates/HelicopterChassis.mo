within Ingenuity.Chassis.Templates;
partial model HelicopterChassis
    
    parameter Modelica.Units.SI.Position[3] r0_summary={0,0,0}
    "Location from vehicleFrame where summary variables are resolved";
    
    parameter Modelica.Units.SI.Position r_x_start=0
    "Initial x position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position r_y_start=0
    "Initial y position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position r_z_start=0
    "Initial z position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position h_start=0 "Initial height"
    annotation (Dialog(tab="Initialization",group="Start values"));
    parameter Modelica.Units.SI.Angle p_x_start=0 "Initial roll angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Angle p_y_start=0 "Initial pitch angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Angle p_z_start=0 "Initial yaw angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.AngularVelocity w_z_start=0 "Initial yaw rate"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Velocity v_start=0 "Initial speed"
    annotation (Dialog(tab="Initialization",group="Start values"));
    parameter Boolean enable_inertial_states=true
    "Set to false when fixing vehicleFrame"
    annotation (Evaluate=true);
    
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b propeller_1_flange annotation(Placement(transformation(extent = {{-56.21029708279798,-105.21029708279798},{-45.78970291720202,-94.78970291720202}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b vehicleFrame "Vehicle frame" annotation(Placement(transformation(origin = {-0.9999999999999964,100.0},extent = {{-8.0,-8.0},{8.0,8.0}},rotation = 90.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b propeller_2_flange annotation(Placement(transformation(extent = {{-56.21029708279798,94.78970291720202},{-45.78970291720202,105.21029708279798}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .VehicleDynamics.Vehicles.Chassis.Motion.FreeMotion motion(    
        v_start=v_start,
        h_start=h_start,
        r_x_start=r_x_start,
        r_y_start=r_y_start,
        r_z_start=r_z_start,
        p_x_start=p_x_start,
        p_y_start=p_y_start,
        p_z_start=p_z_start,
        w_z_start=w_z_start,
        enable_inertial_states=enable_inertial_states,
        r0_summary=r0_summary)annotation(Placement(transformation(extent = {{59.98125493850344,39.981254938503454},{100.01874506149656,80.01874506149655}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Ingenuity.Chassis.Propellers.Templates.Base propeller_1 annotation(Placement(transformation(extent = {{-19.640247228621874,19.640247228621874},{19.640247228621874,-19.640247228621874}},origin = {0.0,-60.0},rotation = 90.0)));
    replaceable .Ingenuity.Chassis.Propellers.Templates.Base propeller_2 annotation(Placement(transformation(extent = {{-20.189084463288253,-20.189084463288253},{20.189084463288253,20.189084463288253}},origin = {0.0,60.0},rotation = -90.0)));
    replaceable .VehicleDynamics.Vehicles.Chassis.Bodies.Templates.ConventionalCar body annotation(Placement(transformation(extent = {{59.84379013815824,-20.15620986184176},{100.15620986184176,20.15620986184176}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(motion.vehicleFrame,vehicleFrame) annotation(Line(points = {{59.98125493850345,60},{50,60},{50,100},{-0.9999999999999973,100}},color = {95,95,95}));
    connect(propeller_1.propellerFlange,propeller_1_flange) annotation(Line(points = {{-4.361010936509286e-15,-79.64024722862187},{-4.361010936509286e-15,-89.82012361431094},{-51,-89.82012361431094},{-51,-100}},color = {95,95,95}));
    connect(propeller_2.propellerFlange,propeller_2_flange) annotation(Line(points = {{-4.482877283448928e-15,80.18908446328825},{-4.482877283448928e-15,90.09454223164413},{-51,90.09454223164413},{-51,100}},color = {95,95,95}));
    connect(body.frame_a,propeller_2.vehicleFrame) annotation(Line(points = {{59.84379013815824,0},{4.482877283448928e-15,0},{4.482877283448928e-15,39.81091553671175}},color = {95,95,95}));
    connect(body.frame_a,propeller_1.vehicleFrame) annotation(Line(points = {{59.84379013815824,0},{4.361010936509285e-15,0},{4.361010936509285e-15,-40.359752771378126}},color = {95,95,95}));
    connect(body.frame_a,motion.vehicleFrame) annotation(Line(points = {{59.84379013815824,0},{50,0},{50,60},{59.98125493850344,60}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="HelicopterChassis",origin={-3,-1},extent={{-71.63414634146343,40.599131196890596},{71,-41}})}));
end HelicopterChassis;

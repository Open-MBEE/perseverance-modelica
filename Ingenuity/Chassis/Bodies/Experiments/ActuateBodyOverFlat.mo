within Ingenuity.Chassis.Bodies.Experiments;

model ActuateBodyOverFlat
  "Actuate the body in world to evaluate at aero, sensors, ground impacts"
  extends .VehicleDynamics.Vehicles.Chassis.Bodies.Experiments.Templates.ActuateBody(
    redeclare replaceable .Ingenuity.Chassis.Bodies.Ingenuity body,
    velo(k={60,0,0}),
    redeclare replaceable .Modelica.Blocks.Sources.Sine z_disp(
      f=1,
      startTime=1,
      amplitude=0.05,
      offset=0),
    redeclare replaceable .Modelica.Blocks.Sources.Constant roll_angle(
      k=0),
    redeclare replaceable .Modelica.Blocks.Sources.Sine pitch_angle(
      f=1,
      startTime=2,
      amplitude=0.03490657),
    redeclare replaceable .Modelica.Blocks.Sources.Constant yaw_angle(
      k=0),
    motion(h_start=0.2));
    .Ingenuity.Chassis.Propellers.Simple.Propeller_01 propeller annotation(Placement(transformation(extent = {{40.0,-70.0},{60.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Ingenuity.Chassis.Propellers.Simple.Propeller_02 propeller_ annotation(Placement(transformation(extent = {{68.0,-70.0},{88.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(propeller.frame_a,body.frame_a) annotation(Line(points = {{40,-60},{26,-60},{26,-34},{-26,-34},{-26,-60},{-20,-60}},color = {95,95,95}));
    connect(propeller_.frame_a,body.frame_a) annotation(Line(points = {{68,-60},{68,-42},{26,-42},{26,-34},{-26,-34},{-26,-60},{-20,-60}},color = {95,95,95}));
  annotation (experiment(StopTime=5));
end ActuateBodyOverFlat;

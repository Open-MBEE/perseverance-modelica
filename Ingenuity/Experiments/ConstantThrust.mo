within Ingenuity.Experiments;

model ConstantThrust
    extends .Ingenuity.Experiments.Templates.Minimal(
        redeclare .Ingenuity.Helicopter helicopter(h_start = 0.5,r_x_start = 0),
        redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,
        redeclare replaceable .VehicleDynamics.Grounds.Flat ground(x_min = -1,x_max = 1,y_min = -1,y_max = 1,visualize = true),
        world(animateWorld = false));
    inner .Modelon.Mechanics.MultiBody.AggregateMass.AggregateMass aggregateMass(enable_aggregate = true) annotation(Placement(transformation(extent = {{-100,80},{-80,100}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Math.Gain gain(k = -1) annotation(Placement(transformation(extent = {{-55.628365351857624,14.37163464814239},{-44.371634648142376,25.62836535185761}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Ramp ramp(height = 7,duration = 0) annotation(Placement(transformation(extent = {{-100.0,-20.0},{-80.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(ramp.y,gain.u) annotation(Line(points = {{-79,-10},{-67.87701921111457,-10},{-67.87701921111457,20},{-56.75403842222915,20}},color = {0,0,127}));
    connect(gain.y,helicopter.w_ref_2) annotation(Line(points = {{-43.80879811295661,20},{-43.80879811295661,12.08799004208596},{-24.17598008417192,12.08799004208596}},color = {0,0,127}));
    connect(ramp.y,helicopter.w_ref_1) annotation(Line(points = {{-79,-10},{-68,-10},{-68,-12.08799004208596},{-24.17598008417192,-12.08799004208596}},color = {0,0,127}));
    annotation(experiment(StartTime = 0,StopTime = 10,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end ConstantThrust;

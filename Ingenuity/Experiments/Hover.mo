within Ingenuity.Experiments;

model Hover
    extends .Ingenuity.Experiments.Templates.Minimal(
        redeclare replaceable .Ingenuity.HelicopterPitchRoll helicopter,
        redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,
        redeclare replaceable .VehicleDynamics.Grounds.Flat ground(x_min = -1,x_max = 1,y_min = -1,y_max = 1,visualize = true),
        world(animateWorld = false));
    inner .Modelon.Mechanics.MultiBody.AggregateMass.AggregateMass aggregateMass(enable_aggregate = true) annotation(Placement(transformation(extent = {{-100,80},{-80,100}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexPosition annotation(Placement(transformation(extent = {{-50.31539844260224,35.68460155739777},{-41.68460155739776,44.31539844260223}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexVelocity annotation(Placement(transformation(extent = {{-73.80088086207076,-43.800880862070755},{-66.19911913792924,-36.199119137929245}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexAngles annotation(Placement(transformation(extent = {{-33.800880862070755,-43.800880862070755},{-26.199119137929245,-36.199119137929245}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp x_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,54.002531339324335},{-88.00253133932434,65.99746866067566}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp y_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,34.002531339324335},{-88.00253133932434,45.997468660675665}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp z_ref(height = 3,duration = 5,offset = 0.1935) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,14.002531339324335},{-88.00253133932434,25.997468660675665}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp vx_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,-25.997468660675665},{-88.00253133932434,-14.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp vy_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,-45.997468660675665},{-88.00253133932434,-34.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp vz_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,-65.99746866067566},{-88.00253133932434,-54.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp roll_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-51.997468660675665,-25.997468660675665},{-40.002531339324335,-14.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp pitch_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-51.997468660675665,-45.997468660675665},{-40.002531339324335,-34.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp yaw_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-51.997468660675665,-65.99746866067566},{-40.002531339324335,-54.002531339324335}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(multiplexPosition.y,helicopter.position_ref) annotation(Line(points = {{-41.25306171313754,40},{-31.654030069465303,40},{-31.654030069465303,12.029999141341673},{-22.054998425793066,12.029999141341673}},color = {0,0,127}));
    connect(multiplexVelocity.y,helicopter.velocity_ref) annotation(Line(points = {{-65.81903105172216,-40},{-60,-40},{-60,0},{-22.054998425793066,0}},color = {0,0,127}));
    connect(multiplexAngles.y,helicopter.angles_ref) annotation(Line(points = {{-25.81903105172217,-40},{-25.81903105172217,-12.029999141341673},{-22.054998425793066,-12.029999141341673}},color = {0,0,127}));
    connect(x_ref.y,multiplexPosition.u1[1]) annotation(Line(points = {{-87.40278447325677,60},{-69.29063130218972,60},{-69.29063130218972,43.02077890982156},{-51.17847813112269,43.02077890982156}},color = {0,0,127}));
    connect(y_ref.y,multiplexPosition.u2[1]) annotation(Line(points = {{-87.40278447325677,40},{-51.17847813112269,40}},color = {0,0,127}));
    connect(z_ref.y,multiplexPosition.u3[1]) annotation(Line(points = {{-87.40278447325677,20},{-69.29063130218972,20},{-69.29063130218972,36.97922109017844},{-51.17847813112269,36.97922109017844}},color = {0,0,127}));
    connect(vx_ref.y,multiplexVelocity.u1[1]) annotation(Line(points = {{-87.40278447325677,-20},{-80.98192075387084,-20},{-80.98192075387084,-37.339383396550474},{-74.5610570344849,-37.339383396550474}},color = {0,0,127}));
    connect(vy_ref.y,multiplexVelocity.u2[1]) annotation(Line(points = {{-87.40278447325677,-40},{-74.5610570344849,-40}},color = {0,0,127}));
    connect(vz_ref.y,multiplexVelocity.u3[1]) annotation(Line(points = {{-87.40278447325677,-60},{-80.98192075387084,-60},{-80.98192075387084,-42.660616603449526},{-74.5610570344849,-42.660616603449526}},color = {0,0,127}));
    connect(roll_ref.y,multiplexAngles.u1[1]) annotation(Line(points = {{-39.402784473256766,-20},{-36.98192075387084,-20},{-36.98192075387084,-37.339383396550474},{-34.561057034484904,-37.339383396550474}},color = {0,0,127}));
    connect(pitch_ref.y,multiplexAngles.u2[1]) annotation(Line(points = {{-39.402784473256766,-40},{-34.561057034484904,-40}},color = {0,0,127}));
    connect(yaw_ref.y,multiplexAngles.u3[1]) annotation(Line(points = {{-39.402784473256766,-60},{-36.98192075387084,-60},{-36.98192075387084,-42.660616603449526},{-34.561057034484904,-42.660616603449526}},color = {0,0,127}));
    annotation(experiment(StartTime = 0,StopTime = 10,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end Hover;

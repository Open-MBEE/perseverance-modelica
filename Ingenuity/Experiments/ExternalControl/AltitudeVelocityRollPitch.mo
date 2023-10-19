within Ingenuity.Experiments.ExternalControl;

model AltitudeVelocityRollPitch
    extends .Ingenuity.Experiments.Templates.Minimal(
        redeclare replaceable .Ingenuity.HelicopterPitchRoll helicopter(controller(enable_angles_input = true)),
        redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,
        redeclare replaceable .VehicleDynamics.Grounds.Flat ground(x_min = -1,x_max = 1,y_min = -1,y_max = 1,visualize = true),
        world(animateWorld = false));
    inner .Modelon.Mechanics.MultiBody.AggregateMass.AggregateMass aggregateMass(enable_aggregate = true) annotation(Placement(transformation(extent = {{-100,80},{-80,100}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexPosition annotation(Placement(transformation(extent = {{-50.31539844260224,35.68460155739777},{-41.68460155739776,44.31539844260223}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexVelocity annotation(Placement(transformation(extent = {{-57.800880862070755,-43.800880862070755},{-50.199119137929245,-36.199119137929245}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexAngles annotation(Placement(transformation(extent = {{-33.800880862070755,-43.800880862070755},{-26.199119137929245,-36.199119137929245}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp zero(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{-99.99746866067566,34.002531339324335},{-88.00253133932434,45.997468660675665}},origin = {0.0,0.0},rotation = 0.0)));
    inner parameter .Modelon.DataAccess.JsonFile access(filename = "/home/jovyan/impact/workspaces/Perseverance/model_libraries/editable/Ingenuity/Resources/data/Helicopter_inputs.json") annotation(Placement(transformation(extent = {{-60.0,80.0},{-40.0,100.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.ContinuousClock clock annotation(Placement(transformation(extent = {{-100.00652496568843,13.993475034311572},{-87.99347503431157,26.006524965688428}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.DataAccess.Tables.ModelonTable1Dv altitudeTable(yfactor = 1,xfactor = 1,variableName = "altitude",tableType = Modelon.Types.TableType.AccessArray) annotation(Placement(transformation(extent = {{-80.4985026664197,13.501497333580303},{-67.5014973335803,26.498502666419697}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.DataAccess.Tables.ModelonTable1Dv rollTable(variableName = "roll",xfactor = 1,yfactor = Modelica.Constants.pi/180.0) annotation(Placement(transformation(extent = {{-80.4985026664197,-6.4985026664196965},{-67.5014973335803,6.4985026664196965}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.DataAccess.Tables.ModelonTable1Dv pitchTable(yfactor = .Modelica.Constants.pi / 180.0,xfactor = 1,variableName = "pitch") annotation(Placement(transformation(extent = {{-80.4985026664197,-26.498502666419697},{-67.5014973335803,-13.501497333580303}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.DataAccess.Tables.ModelonTable1Dv vxTable(yfactor = 1,xfactor = 1,variableName = "vx") annotation(Placement(transformation(extent = {{-80.4985026664197,-46.4985026664197},{-67.5014973335803,-33.5014973335803}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.DataAccess.Tables.ModelonTable1Dv vyTable(variableName = "vy",xfactor = 1,yfactor = 1) annotation(Placement(transformation(extent = {{-80.4985026664197,-66.4985026664197},{-67.5014973335803,-53.5014973335803}},rotation = 0.0,origin = {0.0,0.0})));
equation
    connect(multiplexPosition.y,helicopter.position_ref) annotation(Line(points = {{-41.25306171313754,40},{-31.654030069465303,40},{-31.654030069465303,12.029999141341673},{-22.054998425793066,12.029999141341673}},color = {0,0,127}));
    connect(multiplexVelocity.y,helicopter.velocity_ref) annotation(Line(points = {{-49.81903105172217,-40},{-49.81903105172217,0},{-22.054998425793066,0}},color = {0,0,127}));
    connect(multiplexAngles.y,helicopter.angles_ref) annotation(Line(points = {{-25.81903105172217,-40},{-25.81903105172217,-12.029999141341673},{-22.054998425793066,-12.029999141341673}},color = {0,0,127}));
    connect(clock.y,altitudeTable.u[1]) annotation(Line(points = {{-87.39282253774273,20},{-81.79820319970364,20}},color = {0,0,127}));
    connect(altitudeTable.y[1],multiplexPosition.u3[1]) annotation(Line(points = {{-66.85164706693834,20},{-51.17847813112269,20},{-51.17847813112269,36.97922109017844}},color = {0,0,127}));
    connect(rollTable.u[1],clock.y) annotation(Line(points = {{-81.79820319970364,0},{-87.39282253774273,0},{-87.39282253774273,20}},color = {0,0,127}));
    connect(rollTable.y[1],multiplexAngles.u1[1]) annotation(Line(points = {{-66.85164706693834,0},{-38,0},{-38,-37.339383396550474},{-34.561057034484904,-37.339383396550474}},color = {0,0,127}));
    connect(pitchTable.u[1],clock.y) annotation(Line(points = {{-81.79820319970364,-20},{-87.39282253774273,-20},{-87.39282253774273,20}},color = {0,0,127}));
    connect(pitchTable.y[1],multiplexAngles.u2[1]) annotation(Line(points = {{-66.85164706693834,-20},{-40,-20},{-40,-40},{-34.561057034484904,-40}},color = {0,0,127}));
    connect(vxTable.u[1],clock.y) annotation(Line(points = {{-81.79820319970364,-40},{-87.39282253774273,-40},{-87.39282253774273,20}},color = {0,0,127}));
    connect(vxTable.y[1],multiplexVelocity.u1[1]) annotation(Line(points = {{-66.85164706693834,-40},{-66.85164706693834,-37.339383396550474},{-58.561057034484904,-37.339383396550474}},color = {0,0,127}));
    connect(vyTable.y[1],multiplexVelocity.u2[1]) annotation(Line(points = {{-66.85164706693834,-60},{-62.70635205071162,-60},{-62.70635205071162,-40},{-58.561057034484904,-40}},color = {0,0,127}));
    connect(vyTable.u[1],clock.y) annotation(Line(points = {{-81.79820319970364,-60},{-87.39282253774273,-60},{-87.39282253774273,20}},color = {0,0,127}));
    connect(zero.y,multiplexPosition.u2[1]) annotation(Line(points = {{-87.40278447325677,40},{-51.17847813112269,40}},color = {0,0,127}));
    connect(zero.y,multiplexPosition.u1[1]) annotation(Line(points = {{-87.40278447325677,40},{-69.29063130218972,40},{-69.29063130218972,43.02077890982156},{-51.17847813112269,43.02077890982156}},color = {0,0,127}));
    connect(zero.y,multiplexAngles.u3[1]) annotation(Line(points = {{-87.40278447325677,40},{-42,40},{-42,-42.660616603449526},{-34.561057034484904,-42.660616603449526}},color = {0,0,127}));
    connect(zero.y,multiplexVelocity.u3[1]) annotation(Line(points = {{-87.40278447325677,40},{-62,40},{-62,-42.660616603449526},{-58.561057034484904,-42.660616603449526}},color = {0,0,127}));
    annotation(experiment(StartTime = 0,StopTime = 30,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end AltitudeVelocityRollPitch;

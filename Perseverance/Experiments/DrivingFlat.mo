within Workspace.Perseverance.Experiments;

model DrivingFlat
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Environment(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,world(g = 3.711));
    .Electrification.Machines.Examples.Machine3D motor2(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlGain = 15,
            speedControlTimeConstant = 0.1,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.0,18.0},rotation = -90.0)));
    .Electrification.Batteries.Examples.BatteryPackIdeal batteryPackIdeal annotation(Placement(transformation(extent = {{70.0,-30.0},{90.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Examples.Machine3D motor1(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlTimeConstant = 0.1,
            speedControlGain = 15,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.0,-58.0},rotation = 90.0)));

    .Electrification.Machines.Examples.Machine3D motor3(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlTimeConstant = 0.1,
            speedControlGain = 15,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.000000000000004},{10.0,10.000000000000004}},origin = {1.1111111111111143,-58.44444444444446},rotation = 90.0)));
    .Electrification.Machines.Examples.Machine3D motor4(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlTimeConstant = 0.1,
            speedControlGain = 15,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {1.1111111111111143,17.55555555555555},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor5(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlTimeConstant = 0.1,
            speedControlGain = 15,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {30.0,-58.0},rotation = 90.0)));
    .Electrification.Machines.Examples.Machine3D motor6(
        enable_mount = false,
        redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
            speedControlTimeConstant = 0.1,
            speedControlGain = 15,
            mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
            w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {30.0,18.0},rotation = -90.0)));
    .Workspace.Perseverance.Chassis chassis annotation(Placement(transformation(extent = {{-40.11678493198284,-41.05839246599143},{42.33900715420507,0.16950357710252817}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFL(k = 0) annotation(Placement(transformation(extent = {{-100.0,22.66666666666667},{-80.0,42.66666666666667}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-7.333333333333333},{-80.0,12.666666666666668}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRL(k = 0) annotation(Placement(transformation(extent = {{-100.0,-39.33333333333333},{-80.0,-19.333333333333332}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-70.0},{-80.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(motor1.flange3D,chassis.hub_1) annotation(Line(points = {{-27.999999999999996,-48},{-27.999999999999996,-41.05839246599143},{-27.748416119054657,-41.05839246599143}},color = {95,95,95}));
    connect(motor1.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-28.000000000000004,-68},{-28.000000000000004,-74.44444444444446},{54,-74.44444444444446},{54,-19.999999999999996},{70,-19.999999999999996}},color = {255,128,0}));
    connect(motor2.flange3D,chassis.hub_2) annotation(Line(points = {{-27.999999999999996,8},{-27.999999999999996,24.555555555555546},{-27.748416119054657,24.555555555555546},{-27.748416119054657,0.16950357710252817}},color = {95,95,95}));
    connect(batteryPackIdeal.plug_a,motor2.plug_a) annotation(Line(points = {{70,-19.999999999999996},{54,-19.999999999999996},{54,33.55555555555554},{-28.000000000000004,33.55555555555554},{-28.000000000000004,28}},color = {255,128,0}));
    connect(motor4.flange3D,chassis.hub_4) annotation(Line(points = {{1.1111111111111178,7.5555555555555465},{1.1111111111111178,0.16950357710252817},{1.1111111111111143,0.16950357710252817}},color = {95,95,95}));
    connect(motor6.flange3D,chassis.hub_6) annotation(Line(points = {{30.000000000000004,8},{30.000000000000004,0.16950357710252817},{29.97063834127688,0.16950357710252817}},color = {95,95,95}));
    connect(motor3.flange3D,chassis.hub_3) annotation(Line(points = {{1.1111111111111178,-48.44444444444446},{1.1111111111111178,-41.05839246599143},{1.1111111111111143,-41.05839246599143}},color = {95,95,95}));
    connect(motor5.flange3D,chassis.hub_5) annotation(Line(points = {{30.000000000000004,-48},{30.000000000000004,-41.05839246599143},{29.97063834127688,-41.05839246599143}},color = {95,95,95}));
    connect(motor3.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{1.1111111111111107,-68.44444444444446},{1.1111111111111107,-74.44444444444446},{54,-74.44444444444446},{54,-19.999999999999996},{70,-19.999999999999996}},color = {255,128,0}));
    connect(motor4.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{1.1111111111111107,27.555555555555546},{1.1111111111111107,33.55555555555554},{54,33.55555555555554},{54,-19.999999999999996},{70,-19.999999999999996}},color = {255,128,0}));
    connect(motor6.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{29.999999999999996,28},{29.999999999999996,33.55555555555554},{54,33.55555555555554},{54,-19.999999999999996},{70,-19.999999999999996}},color = {255,128,0}));
    connect(motor5.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{29.999999999999996,-68},{29.999999999999996,-74.44444444444446},{54,-74.44444444444446},{54,-19.999999999999996},{70,-19.999999999999996}},color = {255,128,0}));    
    connect(steerSourceFL.y,chassis.steerFL) annotation(Line(points = {{-79,32.66666666666667},{-61.125052515628994,32.66666666666667},{-61.125052515628994,-8.076075631516261},{-43.25010503125798,-8.076075631516261}},color = {0,0,127}));
    connect(steerSourceFR.y,chassis.steerFR) annotation(Line(points = {{-79,2.666666666666667},{-64,2.666666666666667},{-64,-16.321654840135054},{-43.25010503125798,-16.321654840135054}},color = {0,0,127}));
    connect(steerSourceRL.y,chassis.steerRL) annotation(Line(points = {{-79,-29.333333333333332},{-64,-29.333333333333332},{-64,-24.567234048753846},{-43.25010503125798,-24.567234048753846}},color = {0,0,127}));
    connect(steerSourceRR.y,chassis.steerRR) annotation(Line(points = {{-79,-60},{-61.125052515628994,-60},{-61.125052515628994,-32.81281325737264},{-43.25010503125798,-32.81281325737264}},color = {0,0,127}));

    annotation(experiment(StartTime = 0,StopTime = 20,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end DrivingFlat;

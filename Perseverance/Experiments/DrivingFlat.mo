within Perseverance.Experiments;

model DrivingFlat
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Environment(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,world(g = 3.711));
    .Perseverance.Chassis chassis(v_start = 0) annotation(Placement(transformation(extent = {{-40.11678493198284,-41.05839246599143},{42.33900715420507,0.16950357710252817}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFL(k = 0) annotation(Placement(transformation(extent = {{-100.0,22.66666666666667},{-80.0,42.66666666666667}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-7.333333333333333},{-80.0,12.666666666666668}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRL(k = 0) annotation(Placement(transformation(extent = {{-100.0,-39.33333333333333},{-80.0,-19.333333333333332}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRR(k = 0) annotation(Placement(transformation(extent = {{-100.0,-70.0},{-80.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.w_ref w_ref[6](id = {1,2,3,4,5,6}) annotation(Placement(transformation(extent = {{-9.333333333333336,46.0},{-1.3333333333333357,54.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Replicator replicator(nout = 6) annotation(Placement(transformation(extent = {{-24.468497692441865,46.864835640891464},{-18.1981689742248,53.135164359108536}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Trapezoid speedSource(amplitude = 0.5,rising = 1,width = 5,falling = 1,nperiod = 1,startTime = 2,period = 12) constrainedby .Modelica.Blocks.Interfaces.SO annotation(Placement(transformation(extent = {{-61.33333333333333,40.0},{-41.33333333333333,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Perseverance.Electrical.Machine motor1(id = 1,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 1,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.4,-61.599999999999994},rotation = 90.0)));
    replaceable .Perseverance.Electrical.Machine motor2(id = 2,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 2,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.0,22.0},rotation = -90.0)));
    replaceable .Perseverance.Electrical.Machine motor3(id = 3,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 3,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-0.40000000000000036,-61.599999999999994},rotation = 90.0)));
    replaceable .Perseverance.Electrical.Machine motor4(id = 4,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 4,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-0.40000000000000036,22.400000000000006},rotation = -90.0)));
    replaceable .Perseverance.Electrical.Machine motor5(id = 5,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 5,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {29.6,-61.599999999999994},rotation = 90.0)));
    replaceable .Perseverance.Electrical.Machine motor6(id = 6,enable_thermal_port = false) constrainedby .Electrification.Machines.Interfaces.Machine3D(id = 6,enable_thermal_port = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {29.6,22.400000000000006},rotation = -90.0)));
    .Perseverance.Electrical.BatteryPack battery annotation(Placement(transformation(extent = {{68.0,-30.0},{88.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));

equation
    connect(steerSourceFL.y,chassis.steerFL) annotation(Line(points = {{-79,32.66666666666667},{-61.125052515628994,32.66666666666667},{-61.125052515628994,-8.076075631516261},{-43.25010503125798,-8.076075631516261}},color = {0,0,127}));
    connect(steerSourceFR.y,chassis.steerFR) annotation(Line(points = {{-79,2.666666666666667},{-64,2.666666666666667},{-64,-16.321654840135054},{-43.25010503125798,-16.321654840135054}},color = {0,0,127}));
    connect(steerSourceRL.y,chassis.steerRL) annotation(Line(points = {{-79,-29.333333333333332},{-64,-29.333333333333332},{-64,-24.567234048753846},{-43.25010503125798,-24.567234048753846}},color = {0,0,127}));
    connect(steerSourceRR.y,chassis.steerRR) annotation(Line(points = {{-79,-60},{-61.125052515628994,-60},{-61.125052515628994,-32.81281325737264},{-43.25010503125798,-32.81281325737264}},color = {0,0,127}));
    connect(replicator.y,w_ref.u_r) annotation(Line(points = {{-17.884652538313944,50},{-11.333333333333332,50}},color = {0,0,127}));
    connect(speedSource.y,replicator.u) annotation(Line(points = {{-40.33333333333333,50},{-25.095530564263573,50}},color = {0,0,127}));
    connect(motor2.controlBus,motor4.controlBus) annotation(Line(points = {{-18,30},{-18,38},{14,38},{14,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor6.controlBus,motor4.controlBus) annotation(Line(points = {{39.6,30.400000000000006},{45.6,30.400000000000006},{45.6,38.400000000000006},{13.6,38.400000000000006},{13.6,30.400000000000002},{9.599999999999998,30.400000000000002}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor1.controlBus,motor3.controlBus) annotation(Line(points = {{-38.4,-69.6},{-44.4,-69.6},{-44.4,-77.6},{-14.4,-77.6},{-14.4,-69.6},{-10.400000000000002,-69.6}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor5.controlBus,motor3.controlBus) annotation(Line(points = {{19.6,-69.6},{13.6,-69.6},{13.6,-77.6},{-14.4,-77.6},{-14.4,-69.6},{-10.400000000000002,-69.6}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor6.controlBus,motor5.controlBus) annotation(Line(points = {{39.6,30.400000000000006},{45.6,30.400000000000006},{45.6,-77.6},{13.6,-77.6},{13.6,-69.6},{19.6,-69.6}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[1].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[2].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[3].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[4].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[5].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref[6].systemBus,motor4.controlBus) annotation(Line(points = {{-1.3333333333333357,50},{15.999999999999998,50},{15.999999999999998,30.40000000000001},{9.6,30.40000000000001}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(motor1.flange3D,chassis.hub_1) annotation(Line(points = {{-28.399999999999995,-51.599999999999994},{-28.399999999999995,-46.529196232995716},{-27.748416119054657,-46.529196232995716},{-27.748416119054657,-41.05839246599143}},color = {95,95,95}));
    connect(motor2.flange3D,chassis.hub_2) annotation(Line(points = {{-27.999999999999996,11.999999999999998},{-27.999999999999996,6.084751788551265},{-27.748416119054657,6.084751788551265},{-27.748416119054657,0.16950357710253172}},color = {95,95,95}));
    connect(motor3.flange3D,chassis.hub_3) annotation(Line(points = {{-0.39999999999999813,-51.599999999999994},{-0.39999999999999813,-46.529196232995716},{1.1111111111111143,-46.529196232995716},{1.1111111111111143,-41.05839246599143}},color = {95,95,95}));
    connect(motor4.flange3D,chassis.hub_4) annotation(Line(points = {{-0.39999999999999813,12.400000000000004},{-0.39999999999999813,6.084751788551265},{1.1111111111111143,6.084751788551265},{1.1111111111111143,0.16950357710253172}},color = {95,95,95}));
    connect(motor5.flange3D,chassis.hub_5) annotation(Line(points = {{29.600000000000005,-51.599999999999994},{29.600000000000005,-46.529196232995716},{29.970638341276885,-46.529196232995716},{29.970638341276885,-41.05839246599143}},color = {95,95,95}));
    connect(motor6.flange3D,chassis.hub_6) annotation(Line(points = {{29.600000000000005,12.400000000000004},{29.600000000000005,6.084751788551265},{29.970638341276885,6.084751788551265},{29.970638341276885,0.16950357710253172}},color = {95,95,95}));
    connect(battery.plug_a,motor6.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,36},{29.599999999999998,36},{29.599999999999998,32.400000000000006}},color = {255,128,0}));
    connect(battery.plug_a,motor4.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,36},{-0.4000000000000026,36},{-0.4000000000000026,32.400000000000006}},color = {255,128,0}));
    connect(battery.plug_a,motor2.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,36},{-28.000000000000004,36},{-28.000000000000004,32}},color = {255,128,0}));
    connect(battery.plug_a,motor5.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,-76},{29.599999999999998,-76},{29.599999999999998,-71.6}},color = {255,128,0}));
    connect(battery.plug_a,motor3.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,-76},{-0.4000000000000026,-76},{-0.4000000000000026,-71.6}},color = {255,128,0}));
    connect(battery.plug_a,motor1.plug_a) annotation(Line(points = {{68,-20},{60,-20},{60,-76},{-28.400000000000002,-76},{-28.400000000000002,-71.6}},color = {255,128,0}));

    annotation(experiment(StartTime = 0,StopTime = 20,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end DrivingFlat;

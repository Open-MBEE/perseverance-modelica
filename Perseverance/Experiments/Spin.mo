within Perseverance.Experiments;
model Spin
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Environment(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,world(g = 3.711));
    .Electrification.Machines.Examples.Machine3D motor(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlGain = 15,speedControlTimeConstant = 0.1,w_ref = -1,mode = .Electrification.Utilities.Types.MachineControlMode.Speed)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.203703703703702,17.648148148148138},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor2(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlTimeConstant = 0.1,speedControlGain = 15,mode = .Electrification.Utilities.Types.MachineControlMode.Speed,w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-28.203703703703702,-58.35185185185186},rotation = 90.0)));
    .Electrification.Batteries.Examples.Deprecated.BatteryPackIdeal batteryPackIdeal annotation(Placement(transformation(extent = {{68.68518518518519,-29.907407407407405},{88.68518518518519,-9.907407407407405}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Examples.Machine3D motor3(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlTimeConstant = 0.1,speedControlGain = 15,mode = .Electrification.Utilities.Types.MachineControlMode.Speed,w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-0.2037037037037024,-58.35185185185186},rotation = 90.0)));
    .Electrification.Machines.Examples.Machine3D motor4(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlTimeConstant = 0.1,speedControlGain = 15,w_ref = -1,mode = .Electrification.Utilities.Types.MachineControlMode.Speed)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-0.2037037037037024,17.648148148148138},rotation = -90.0)));
    .Electrification.Machines.Examples.Machine3D motor5(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlTimeConstant = 0.1,speedControlGain = 15,mode = .Electrification.Utilities.Types.MachineControlMode.Speed,w_ref = 1)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {27.796296296296298,-58.35185185185186},rotation = 90.0)));
    .Electrification.Machines.Examples.Machine3D motor6(enable_mount = false,multibody3D(visualize_shape = false),redeclare replaceable .Electrification.Machines.Control.MultiMode controller(speedControlTimeConstant = 0.1,speedControlGain = 15,w_ref = -1,mode = .Electrification.Utilities.Types.MachineControlMode.Speed)) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {27.796296296296298,17.648148148148138},rotation = -90.0)));
    .Perseverance.Chassis chassis annotation(Placement(transformation(extent = {{-41.43159974679766,-40.96579987339884},{41.024192339390254,0.26209616969511984}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFL(k = -Modelica.Constants.pi / 4) annotation(Placement(transformation(extent = {{-101.31481481481481,22.75925925925928},{-81.31481481481481,42.75925925925928}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFR(k = (Modelica.Constants.pi) / 4) annotation(Placement(transformation(extent = {{-101.31481481481481,-7.240740740740733},{-81.31481481481481,12.759259259259267}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRL(k = Modelica.Constants.pi / 4) annotation(Placement(transformation(extent = {{-101.31481481481481,-39.24074074074073},{-81.31481481481481,-19.240740740740733}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRR(k = (-Modelica.Constants.pi) / 4) annotation(Placement(transformation(extent = {{-101.31481481481481,-69.9074074074074},{-81.31481481481481,-49.907407407407405}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(motor2.flange3D,chassis.hub_1) annotation(Line(points = {{-28.2037037037037,-48.35185185185186},{-28.2037037037037,-40.965799873398836},{-29.063230933869473,-40.965799873398836}},color = {95,95,95}));
    connect(motor2.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-28.203703703703706,-68.35185185185186},{-28.203703703703706,-74.35185185185186},{52.68518518518518,-74.35185185185186},{52.68518518518518,-19.907407407407398},{68.68518518518519,-19.907407407407398}},color = {255,128,0}));
    connect(motor.flange3D,chassis.hub_2) annotation(Line(points = {{-28.2037037037037,7.6481481481481435},{-28.2037037037037,24.648148148148138},{-29.063230933869473,24.648148148148138},{-29.063230933869473,0.26209616969512517}},color = {95,95,95}));
    connect(batteryPackIdeal.plug_a,motor.plug_a) annotation(Line(points = {{68.68518518518519,-19.907407407407398},{52.68518518518518,-19.907407407407398},{52.68518518518518,33.64814814814814},{-28.203703703703706,33.64814814814814},{-28.203703703703706,27.648148148148138}},color = {255,128,0}));
    connect(motor4.flange3D,chassis.hub_4) annotation(Line(points = {{-0.20370370370369884,7.6481481481481435},{-0.20370370370369884,0.26209616969512517},{-0.2037037037037024,0.26209616969512517}},color = {95,95,95}));
    connect(motor6.flange3D,chassis.hub_6) annotation(Line(points = {{27.796296296296298,7.6481481481481435},{27.796296296296298,0.26209616969512517},{28.655823526462065,0.26209616969512517}},color = {95,95,95}));
    connect(motor3.flange3D,chassis.hub_3) annotation(Line(points = {{-0.20370370370369884,-48.35185185185186},{-0.20370370370369884,-40.965799873398836},{-0.2037037037037024,-40.965799873398836}},color = {95,95,95}));
    connect(motor5.flange3D,chassis.hub_5) annotation(Line(points = {{27.796296296296298,-48.35185185185186},{27.796296296296298,-40.965799873398836},{28.655823526462065,-40.965799873398836}},color = {95,95,95}));
    connect(motor3.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-0.20370370370370594,-68.35185185185186},{-0.20370370370370594,-74.35185185185186},{52.68518518518518,-74.35185185185186},{52.68518518518518,-19.907407407407398},{68.68518518518519,-19.907407407407398}},color = {255,128,0}));
    connect(motor4.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{-0.20370370370370594,27.648148148148138},{-0.20370370370370594,33.64814814814814},{52.68518518518518,33.64814814814814},{52.68518518518518,-19.907407407407398},{68.68518518518519,-19.907407407407398}},color = {255,128,0}));
    connect(motor6.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{27.796296296296298,27.648148148148138},{27.796296296296298,33.64814814814814},{52.68518518518518,33.64814814814814},{52.68518518518518,-19.907407407407398},{68.68518518518519,-19.907407407407398}},color = {255,128,0}));
    connect(motor5.plug_a,batteryPackIdeal.plug_a) annotation(Line(points = {{27.796296296296298,-68.35185185185186},{27.796296296296298,-74.35185185185186},{52.68518518518518,-74.35185185185186},{52.68518518518518,-19.907407407407398},{68.68518518518519,-19.907407407407398}},color = {255,128,0}));
    connect(steerSourceFL.y,chassis.steerFL) annotation(Line(points = {{-80.31481481481481,32.75925925925927},{-62.43986733044381,32.75925925925927},{-62.43986733044381,-7.983483038923664},{-44.5649198460728,-7.983483038923664}},color = {0,0,127}));
    connect(steerSourceFR.y,chassis.steerFR) annotation(Line(points = {{-80.31481481481481,2.759259259259265},{-65.31481481481481,2.759259259259265},{-65.31481481481481,-16.22906224754246},{-44.5649198460728,-16.22906224754246}},color = {0,0,127}));
    connect(steerSourceRL.y,chassis.steerRL) annotation(Line(points = {{-80.31481481481481,-29.240740740740733},{-65.31481481481481,-29.240740740740733},{-65.31481481481481,-24.47464145616125},{-44.5649198460728,-24.47464145616125}},color = {0,0,127}));
    connect(steerSourceRR.y,chassis.steerRR) annotation(Line(points = {{-80.31481481481481,-59.907407407407405},{-62.43986733044381,-59.907407407407405},{-62.43986733044381,-32.720220664780044},{-44.5649198460728,-32.720220664780044}},color = {0,0,127}));
end Spin;

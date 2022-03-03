within Perseverance.Experiments;
model FlatPad
    extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.Minimal(redeclare replaceable .VehicleDynamics.Atmospheres.Constant atmosphere,redeclare replaceable .VehicleDynamics.Grounds.Flat ground,redeclare replaceable .Perseverance.Chassis chassis(v_start = 0),world(g = 3.711));
    .Modelica.Blocks.Sources.Constant steerSourceFL(k = 0) annotation(Placement(transformation(extent = {{-64.0,-7.8333333333333215},{-44.0,12.166666666666679}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceFR(k = 0) annotation(Placement(transformation(extent = {{-64.0,-37.833333333333336},{-44.0,-17.833333333333336}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRL(k = 0) annotation(Placement(transformation(extent = {{-64.0,-69.83333333333334},{-44.0,-49.833333333333336}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSourceRR(k = 0) annotation(Placement(transformation(extent = {{-64.0,-100.5},{-44.0,-80.5}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(steerSourceFL.y,chassis.steerFL) annotation(Line(points = {{-43,2.1666666666666785},{-28.020000000000003,2.1666666666666785},{-28.020000000000003,-28},{-13.040000000000006,-28}},color = {0,0,127}));
    connect(steerSourceFR.y,chassis.steerFR) annotation(Line(points = {{-43,-27.833333333333336},{-32,-27.833333333333336},{-32,-36},{-13.040000000000006,-36}},color = {0,0,127}));
    connect(steerSourceRL.y,chassis.steerRL) annotation(Line(points = {{-43,-59.83333333333334},{-32,-59.83333333333334},{-32,-44},{-13.040000000000006,-44}},color = {0,0,127}));
    connect(steerSourceRR.y,chassis.steerRR) annotation(Line(points = {{-43,-90.5},{-28.020000000000003,-90.5},{-28.020000000000003,-52},{-13.040000000000006,-52}},color = {0,0,127}));
end FlatPad;
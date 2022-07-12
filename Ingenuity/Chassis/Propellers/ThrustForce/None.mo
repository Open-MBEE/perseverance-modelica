within Ingenuity.Chassis.Propellers.ThrustForce;
model None
    extends .Ingenuity.Chassis.Propellers.ThrustForce.Templates.Base;
    extends Modelon.Icons.None;
    .Modelica.Blocks.Sources.Constant[3] const(k = 0) annotation(Placement(transformation(extent = {{-20.0,-10.0},{0.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Ending ending annotation(Placement(transformation(extent = {{-70.0,-10.0},{-50.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(const.y,force.force) annotation(Line(points = {{1,0},{36.977777777777774,0}},color = {0,0,127}));
    connect(ending.flange_a,flange_a) annotation(Line(points = {{-60,0},{-100.48888888888888,0}},color = {95,95,95}));
end None;

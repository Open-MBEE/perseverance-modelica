within Ingenuity.Chassis.Propellers.Experiments;
model TestThrustForce
    inner replaceable .VehicleDynamics.World world(g = 3.711) annotation(choicesAllMatching,Placement(transformation(extent = {{-100.0,-100.0},{-80.0,-80.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(transformation(extent = {{-48,20},{-28,40}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Sources.Ramp z_ref(startTime = 2,duration = 10,height = 3) annotation(Placement(transformation(extent = {{-100.0,-20.0},{-80.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Actuators.Generic generic(entityType = Modelon.Mechanics.Rotational.Types.EntityType.velocity,enable_mount = false) annotation(Placement(transformation(extent = {{-62.0,-50.0},{-42.0,-30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Ingenuity.Chassis.Propellers.Rotational3DPitchRoll.Propeller_01 propeller_ annotation(Placement(transformation(extent = {{-20.261419072223475,-60.26141907222347},{20.261419072223475,-19.738580927776532}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(z_ref.y,generic.u) annotation(Line(points = {{-79,-10},{-69,-10},{-69,-40},{-63,-40}},color = {0,0,127}));
    connect(propeller_.propellerFlange,generic.flange_a) annotation(Line(points = {{-20.261419072223475,-40},{-52,-40}},color = {95,95,95}));
    connect(propeller_.vehicleFrame,world.frame_b) annotation(Line(points = {{20.26141907222348,-40},{40,-40},{40,-90},{-80,-90}},color = {95,95,95}));
    connect(const.y,propeller_.pitch) annotation(Line(points = {{-27,30},{-4.052283814444695,30},{-4.052283814444695,-19.738580927776532}},color = {0,0,127}));
    connect(const.y,propeller_.roll) annotation(Line(points = {{-27,30},{4.052283814444695,30},{4.052283814444695,-19.738580927776532}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end TestThrustForce;

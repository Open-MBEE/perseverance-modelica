within Ingenuity.Chassis.Propellers.ThrustForce;

model Linear
     extends .Ingenuity.Chassis.Propellers.ThrustForce.Templates.Base;
    .Modelon.Mechanics.Rotational3D.Sensors.AngularVelocity angularVelocity annotation(Placement(transformation(extent = {{-55.86666666666667,-10.0},{-35.86666666666667,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Gain gain(k = 1) annotation(Placement(transformation(extent = {{-24.8337318009033,-4.833731800903294},{-15.166268199096699,4.833731800903294}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(transformation(extent = {{-40.0,20.0},{-20.0,40.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(angularVelocity.y,gain.u) annotation(Line(points = {{-34.86666666666668,0},{-25.800478161083962,0}},color = {0,0,127}));
    connect(angularVelocity.flange_a,flange_a) annotation(Line(points = {{-55.86666666666667,0},{-100.48888888888888,0}},color = {95,95,95}));
    connect(const.y,force.force[1]) annotation(Line(points = {{-19,30},{-6.5,30},{-6.5,0},{6,0}},color = {0,0,127}));
    connect(const.y,force.force[2]) annotation(Line(points = {{-19,30},{-6.5,30},{-6.5,0},{6,0}},color = {0,0,127}));
    connect(gain.y,force.force[3]) annotation(Line(points = {{-14.682895019006368,0},{6,0}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_thrust_icon.PNG",origin={0,0},extent={{87.07317073170732,-89.16663491216705},{-88,90}})}));
end Linear;

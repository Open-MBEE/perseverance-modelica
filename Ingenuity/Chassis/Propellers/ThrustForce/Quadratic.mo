within Ingenuity.Chassis.Propellers.ThrustForce;
model Quadratic
     extends Ingenuity.Chassis.Propellers.ThrustForce.Templates.Base;
    .Modelon.Mechanics.Rotational3D.Sensors.AngularVelocity angularVelocity annotation(Placement(transformation(extent = {{-88.0,-10.0},{-68.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Gain gain(k = 0.005) annotation(Placement(transformation(extent = {{-54.8337318009033,-4.833731800903294},{-45.1662681990967,4.833731800903294}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(transformation(extent = {{-40.0,40.0},{-20.0,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Product product annotation(Placement(transformation(extent = {{-36.0,-10.0},{-16.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(angularVelocity.y,gain.u) annotation(Line(points = {{-67,0},{-55.80047816108396,0}},color = {0,0,127}));
    connect(angularVelocity.flange_a,flange_a) annotation(Line(points = {{-88,0},{-100.48888888888888,0}},color = {95,95,95}));
    connect(const.y,force.force[1]) annotation(Line(points = {{-19,50},{-4,50},{-4,0},{36.977777777777774,0}},color = {0,0,127}));
    connect(const.y,force.force[2]) annotation(Line(points = {{-19,50},{-4,50},{-4,0},{36.977777777777774,0}},color = {0,0,127}));
    connect(gain.y,product.u1) annotation(Line(points = {{-44.68289501900637,0},{-44.68289501900637,6},{-38,6}},color = {0,0,127}));
    connect(product.u2,gain.y) annotation(Line(points = {{-38,-6},{-44.68289501900637,-6},{-44.68289501900637,0}},color = {0,0,127}));
    connect(product.y,force.force[3]) annotation(Line(points = {{-15,0},{36.977777777777774,0}},color = {0,0,127}));
    connect(force.frame_b,vehicleFrame) annotation(Line(points = {{58.977777777777774,0},{99.5111111111111,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_thrust_icon.PNG",origin={0,0},extent={{87.07317073170732,-89.16663491216705},{-88,90}})}));
end Quadratic;

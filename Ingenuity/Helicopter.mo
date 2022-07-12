within Ingenuity;
model Helicopter
    extends Ingenuity.Templates.Helicopter(
        redeclare replaceable .Ingenuity.Chassis.Chassis chassis,
        redeclare replaceable .Ingenuity.Powertrains.DualMotor powertrain,
        redeclare replaceable .Ingenuity.Controllers.MotorSpeedControl controller,redeclare replaceable .Ingenuity.Sensors.None sensors);
    .Modelica.Blocks.Interfaces.RealInput w_ref_1 annotation(Placement(transformation(extent = {{-140.0,-80.0},{-100.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput w_ref_2 annotation(Placement(transformation(extent = {{-140.0,40.0},{-100.0,80.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(controller.w_ref_1,w_ref_1) annotation(Line(points = {{-83.80635266426683,-11.903176332133409},{-90,-11.903176332133409},{-90,-60},{-120,-60}},color = {0,0,127}));
    connect(controller.w_ref_2,w_ref_2) annotation(Line(points = {{-83.80635266426683,11.903176332133409},{-90,11.903176332133409},{-90,60},{-120,60}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_helicopter_icon.PNG",extent={{98,-99},{-98,99}})}));
end Helicopter;

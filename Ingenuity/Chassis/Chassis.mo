within Chassis.Chassis;
model Chassis
    extends Ingenuity.Chassis.Templates.HelicopterChassis(
        redeclare replaceable .Ingenuity.Chassis.Bodies.Ingenuity body,
        redeclare replaceable .Ingenuity.Chassis.Propellers.Rotational3D.Propeller_01 propeller_1,
        redeclare replaceable .Ingenuity.Chassis.Propellers.Rotational3D.Propeller_02 propeller_2(thrustForce(gain(k = -1))));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_chassis_icon.PNG",extent={{85.1219512195122,-93.11705978737187},{-86,93}})}));
end Chassis;

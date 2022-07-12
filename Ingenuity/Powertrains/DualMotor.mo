within Ingenuity.Powertrains;
model DualMotor
    extends .Ingenuity.Powertrains.Templates.Detailed.DualMotor(
        redeclare replaceable .Ingenuity.Electrical.Machine machine1,
        redeclare replaceable .Ingenuity.Electrical.Machine machine2,
        redeclare replaceable .Ingenuity.Electrical.BatteryPack batteryPack);
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_powertrain_icon.PNG",extent={{80.90243902439023,-89.62988225431545},{-80,89}})}));
end DualMotor;

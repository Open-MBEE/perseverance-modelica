within Ingenuity.Sensors.Templates;
partial model Base
    extends Modelon.Icons.Sensor;
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b vehicleFrame "Vehicle frame" annotation(Placement(transformation(origin = {0.0,100.0},extent = {{-8.0,-8.0},{8.0,8.0}},rotation = 90.0)));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Base;

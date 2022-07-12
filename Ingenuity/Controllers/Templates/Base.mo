within Ingenuity.Controllers.Templates;
partial model Base
    .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{-20.0,-20.0},{20.0,20.0}},origin = {100.0,0.0},rotation = -90.0)));
    extends Modelon.Icons.DigitalController;
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Base;

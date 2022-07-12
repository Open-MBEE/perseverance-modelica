within Ingenuity.Controllers;
model MotorSpeedControl
    extends Ingenuity.Controllers.Templates.Base;
    .Electrification.Machines.Control.Signals.w_ref w_ref2(id = 2) annotation(Placement(transformation(extent = {{-15.045831873480646,44.95416812651935},{15.045831873480646,75.04583187348065}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.w_ref w_ref1(id = 1) annotation(Placement(transformation(extent = {{-15.045831873480644,-75.04583187348065},{15.045831873480644,-44.95416812651935}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput w_ref_1 annotation(Placement(transformation(extent = {{-140.0,-80.0},{-100.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput w_ref_2 annotation(Placement(transformation(extent = {{-140.0,40.0},{-100.0,80.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(w_ref2.u_r,w_ref_2) annotation(Line(points = {{-22.56874781022097,60},{-120,60}},color = {0,0,127}));
    connect(w_ref_1,w_ref1.u_r) annotation(Line(points = {{-120,-60},{-22.568747810220966,-60}},color = {0,0,127}));
    connect(w_ref1.systemBus,controlBus) annotation(Line(points = {{15.045831873480644,-60},{100,-60},{100,0}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(w_ref2.systemBus,controlBus) annotation(Line(points = {{15.045831873480646,60},{100,60},{100,0}},color = {240,170,40},pattern = LinePattern.Dot));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end MotorSpeedControl;

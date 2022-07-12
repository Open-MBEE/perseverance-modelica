within Ingenuity.Powertrains.Interfaces;
partial model Base
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b propeller_2_flange annotation(Placement(transformation(extent = {{-5.210297082797979,94.78970291720202},{5.210297082797979,105.21029708279798}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b propeller_1_flange annotation(Placement(transformation(extent = {{-5.210297082797979,-105.21029708279798},{5.210297082797979,-94.78970291720202}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Control.Interfaces.SystemBus controlBus annotation(Placement(transformation(extent = {{-20.0,-20.0},{20.0,20.0}},origin = {-100.66666666666669,-3.552713678800501E-15},rotation = 90.0)));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Base;

within Ingenuity.Powertrains.Templates;

package Basic
    extends .Modelon.Icons.ComponentsPackage;
partial model DualMotor
    extends Ingenuity.Powertrains.Interfaces.Base;
    .Electrification.Machines.Control.Signals.w_sns w_sns2(id = 2) annotation(Placement(transformation(extent = {{-45.0170995670526,45.0170995670526},{-74.9829004329474,74.9829004329474}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Machines.Control.Signals.w_sns w_sns1(id = 1) annotation(Placement(transformation(extent = {{-45.0170995670526,-74.9829004329474},{-74.9829004329474,-45.0170995670526}},origin = {0.0,0.0},rotation = 0.0)));
    equation
        connect(w_sns2.systemBus,controlBus) annotation(Line(points = {{-74.9829004329474,60},{-100.66666666666669,60},{-100.66666666666669,-3.552713678800501e-15}},color = {240,170,40},pattern = LinePattern.Dot));
        connect(w_sns1.systemBus,controlBus) annotation(Line(points = {{-74.9829004329474,-60},{-100.66666666666669,-60},{-100.66666666666669,-3.552713678800501e-15}},color = {240,170,40},pattern = LinePattern.Dot));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="DualMotor",origin={0,2},extent={{-79.51219512195124,-34.465800403917235},{79,34}})}));
end DualMotor;
    end Basic;

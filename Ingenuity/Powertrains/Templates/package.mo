within Ingenuity.Powertrains;
package Templates
    extends .Modelon.Icons.TemplatesPackage;
package Detailed
    extends Modelon.Icons.ComponentsPackage;
partial model DualMotor
    extends Ingenuity.Powertrains.Interfaces.Base;
    replaceable .Electrification.Machines.Templates.Machine3D machine1(
        q0A = {1,0,0},n0A = {0,0,1}) constrainedby .Electrification.Machines.Templates.Machine3D(
        q0A = {1,0,0},n0A = {0,0,1}) annotation(Placement(transformation(extent = {{-35.08509679939391,-75.08509679939391},{-4.914903200606091,-44.91490320060609}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Electrification.Machines.Templates.Machine3D machine2(
        id = 2,q0A = {1,0,0},n0A = {0,0,1}) constrainedby .Electrification.Machines.Templates.Machine3D(
        id = 2,q0A = {1,0,0},n0A = {0,0,1}) annotation(Placement(transformation(extent = {{-35.08509679939391,44.91490320060609},{-4.914903200606091,75.08509679939391}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Electrification.Batteries.Templates.BatteryPackLumped batteryPack annotation(Placement(transformation(extent = {{-74.86524710821456,-14.865247108214561},{-45.13475289178544,14.865247108214561}},origin = {0.0,0.0},rotation = 0.0)));
    .Electrification.Electrical.DCInit vInit(init_steady = true) annotation(Placement(transformation(extent = {{0.0,-10.0},{-20.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));

equation
    connect(batteryPack.plug_a,machine2.plug_a) annotation(Line(points = {{-74.86524710821456,0},{-80,0},{-80,60},{-35.08509679939391,60}},color = {255,128,0}));
    connect(machine1.plug_a,batteryPack.plug_a) annotation(Line(points = {{-35.08509679939391,-60},{-80,-60},{-80,0},{-74.86524710821456,0}},color = {255,128,0}));
    connect(vInit.plug_a,batteryPack.plug_a) annotation(Line(points = {{-20,0},{-40,0},{-40,32},{-80,32},{-80,0},{-74.86524710821456,0}},color = {255,128,0}));
            connect(batteryPack.controlBus,controlBus) annotation(Line(points = {{-71.89219768657165,14.865247108214561},{-71.89219768657165,20.86524710821456},{-100.66666666666669,20.86524710821456},{-100.66666666666669,-3.552713678800501e-15}},color = {240,170,40},pattern = LinePattern.Dot));
            connect(machine2.controlBus,controlBus) annotation(Line(points = {{-32.06807743951513,75.08509679939391},{-32.06807743951513,81.08509679939391},{-100.66666666666669,81.08509679939391},{-100.66666666666669,-3.552713678800501e-15}},color = {240,170,40},pattern = LinePattern.Dot));
            connect(machine1.controlBus,controlBus) annotation(Line(points = {{-32.06807743951513,-44.91490320060609},{-100.66666666666669,-44.91490320060609},{-100.66666666666669,-3.552713678800501e-15}},color = {240,170,40},pattern = LinePattern.Dot));
            connect(machine2.flange3D,propeller_2_flange) annotation(Line(points = {{-4.914903200606089,60},{0,60},{0,100}},color = {95,95,95}));
            connect(machine1.flange3D,propeller_1_flange) annotation(Line(points = {{-4.914903200606089,-60},{0,-60},{0,-100}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="DualMotor",origin={0,2},extent={{-79.51219512195124,-34.465800403917235},{79,34}})}));
end DualMotor;
    end Detailed;
end Templates;

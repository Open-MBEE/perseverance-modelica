within Ingenuity.Chassis.Propellers.Templates;
partial model Base
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b vehicleFrame "Vehicle frame" annotation(Placement(transformation(origin = {0.0,0.0},extent = {{92.0,-8.0},{108.0,8.0}},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a propellerFlange annotation(Placement(transformation(extent = {{-110.0,-10.0},{-90.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Ingenuity.Chassis.Propellers.ThrustForce.Templates.Base thrustForce annotation(Placement(transformation(extent = {{-19.76564590712237,20.23435409287763},{19.76564590712237,59.76564590712237}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fromVehicleFrameToThrust(visualize = false,r = {0,0,0}) annotation(Placement(transformation(extent = {{60.0,30.0},{40.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(thrustForce.flange_a,propellerFlange) annotation(Line(points = {{-19.86227795377941,40},{-100,40},{-100,0}},color = {95,95,95}));
    connect(fromVehicleFrameToThrust.frame_b,thrustForce.vehicleFrame) annotation(Line(points = {{40,40},{19.669013860465327,40}},color = {95,95,95}));
    connect(fromVehicleFrameToThrust.frame_a,vehicleFrame) annotation(Line(points = {{60,40},{100,40},{100,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="Propeller",origin={0,5},extent={{-86.34146341463415,-10.761536409709256},{86,11}})}));
end Base;

within Ingenuity.Chassis.Propellers.ThrustForce.Templates;
partial model Base
    .Modelica.Mechanics.MultiBody.Forces.WorldForce force(resolveInFrame = .Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(Placement(transformation(extent = {{8.0,-10.0},{28.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b vehicleFrame "Vehicle frame" annotation(Placement(transformation(origin = {0.0,0.0},extent = {{91.5111111111111,-7.999999999999999},{107.5111111111111,7.999999999999999}},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_a flange_a "Flange a" annotation(Placement(transformation(extent = {{-110.48888888888888,-10.0},{-90.48888888888888,10.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelon.Mechanics.MultiBody.Visualizers.ForceComponents forceVisualizer(resolve_frame = Modelon.Mechanics.MultiBody.Types.Defaults.FRAME_A) annotation(Placement(transformation(extent = {{40.0,-10.0},{60.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Visualizers.TorqueComponents torqueVisalizer annotation(Placement(transformation(extent = {{70.0,-10.0},{90.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(force.frame_b,forceVisualizer.frame_a) annotation(Line(points = {{28,0},{40,0}},color = {95,95,95}));
    connect(torqueVisalizer.frame_b,vehicleFrame) annotation(Line(points = {{90,0},{99.5111111111111,0}},color = {95,95,95}));
    connect(forceVisualizer.frame_b,torqueVisalizer.frame_a) annotation(Line(points = {{60,0},{70,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="ThrustForce",origin={2,-2},extent={{-72.53658536585368,-25.564950653507594},{73,25}})}));
end Base;

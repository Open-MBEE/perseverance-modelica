within Perseverance.Suspensions;
model TestDifferentialLinkage
    extends Modelon.Icons.Experiment;
    parameter Boolean left_linkage = true;
    parameter .Modelica.SIunits.Position r0H_1[3] = {1.1151,1.1452,-0.00166} "Position of hub 1 relative frame_a";
    parameter .Modelica.SIunits.Position r0H_2[3] = {-0.069879,1.2672,-0.001271} "Position of hub 2 relative frame_a";
    parameter .Modelica.SIunits.Position r0H_3[3] = {-1.1449,1.1452,0.00162} "Position of hub 3 relative frame_a";
    parameter .Modelica.SIunits.Position r0J[3] = {-0.50499,1.0291,-0.047127} "Position of front bogie joint relative frame_a";
    parameter .Modelica.SIunits.Position r0S_1[3] = {1.13,1.0625,0.14587} "Position of front steer joint relative frame_a";
    parameter .Modelica.SIunits.Position r0S_2[3] = {-1.13,1.0625,0.14587} "Position of rear steer joint relative frame_a";
    inner .VehicleDynamics.World world(animateWorld = true) annotation(Placement(transformation(extent = {{-80.0,-10.0},{-60.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Perseverance.Suspensions.DifferentialLinkage differentialLinkage(leftLinkage(link2(n1_a = {0,0,1})),rightLinkage(link2(n1_a = {0,0,1}))) annotation(Placement(transformation(extent = {{-20.0,-10.0},{0.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.BodyNoStates bodyNoStates2(rcm = differentialLinkage.r0J2 + {0.2,0,0}) annotation(Placement(transformation(extent = {{20.0,20.0},{40.0,40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Forces.RevoluteProjection revoluteProjection(n = {0,1,0},q = {0,0,1}) annotation(Placement(transformation(extent = {{-40.0,-20.0},{-20.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational.Actuators.RelativePosition relativePosition annotation(Placement(transformation(extent = {{-40.0,-40.0},{-20.0,-60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Blocks.Sources.SinglePeriodSine singlePeriodSine(amplitude = 0.25,freqHz = 0.5) annotation(Placement(transformation(extent = {{-80,-80},{-60,-60}},origin = {0,0},rotation = 0)));
equation
    connect(differentialLinkage.frame_a,world.frame_b) annotation(Line(points = {{-20,0},{-60,0}},color = {95,95,95}));
    connect(bodyNoStates2.frame_a,differentialLinkage.frame_b2) annotation(Line(points = {{20,30},{-6,30},{-6,10}},color = {95,95,95}));
    connect(revoluteProjection.frame_a,world.frame_b) annotation(Line(points = {{-40,-30},{-50,-30},{-50,0},{-60,0}},color = {95,95,95}));
    connect(revoluteProjection.frame_b,differentialLinkage.frame_b1) annotation(Line(points = {{-20,-30},{-6,-30},{-6,-10}},color = {95,95,95}));
    connect(relativePosition.flange_a,revoluteProjection.bearing) annotation(Line(points = {{-40,-50},{-46,-50},{-46,-34},{-36,-34}},color = {0,0,0}));
    connect(relativePosition.flange_b,revoluteProjection.axis) annotation(Line(points = {{-20,-50},{-14,-50},{-14,-34},{-24,-34}},color = {0,0,0}));
    connect(singlePeriodSine.y,relativePosition.u) annotation(Line(points = {{-59,-70},{-30,-70},{-30,-62}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end TestDifferentialLinkage;

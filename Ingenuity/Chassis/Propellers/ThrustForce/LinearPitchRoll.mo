within Ingenuity.Chassis.Propellers.ThrustForce;

model LinearPitchRoll
     extends .Ingenuity.Chassis.Propellers.ThrustForce.Templates.Base(force(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b,animation = false),forceVisualizer(resolve_frame = Modelon.Mechanics.MultiBody.Types.Defaults.WORLD_FRAME));
    .Modelon.Mechanics.Rotational3D.Sensors.AngularVelocity angularVelocity annotation(Placement(transformation(extent = {{-80.0,-10.0},{-60.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Math.Gain gain(k = 1 / 90) annotation(Placement(transformation(extent = {{-54.8337318009033,-4.833731800903294},{-45.1662681990967,4.833731800903294}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant zeroForce(k = 0) annotation(Placement(transformation(extent = {{-100.0,40.0},{-80.0,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput pitchMoment "Connector of actuator input signal" annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},rotation = -90.0,origin = {-20.0,110.0})));
    .Modelica.Blocks.Interfaces.RealInput rollMoment "Connector of actuator input signal" annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},rotation = -90.0,origin = {20.0,110.0})));
    .Modelica.Blocks.Routing.Multiplex3 multiplex annotation(Placement(transformation(extent = {{-26,-10},{-6,10}},origin = {0,0},rotation = 0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplex2 annotation(Placement(transformation(extent = {{-60.0,-60.0},{-40.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Visualizers.FixedFrame forceFrameVisualizer(color_z = {0,180,0},color_y = {0,180,0},visualize = false,diameter = 0.01,length = 1,color_x = {0,180,0}) annotation(Placement(transformation(extent = {{30.0,40.0},{50.0,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Forces.WorldTorque torque(resolveInFrame = Modelica.Mechanics.MultiBody.Types.ResolveInFrameB.frame_b) annotation(Placement(transformation(extent = {{8,-30},{28,-10}},origin = {0,0},rotation = 0)));
equation
    connect(angularVelocity.y,gain.u) annotation(Line(points = {{-59,0},{-55.80047816108396,0}},color = {0,0,127}));
    connect(angularVelocity.flange_a,flange_a) annotation(Line(points = {{-80,0},{-100.48888888888888,0}},color = {95,95,95}));
    connect(gain.y,multiplex.u3[1]) annotation(Line(points = {{-44.68289501900637,0},{-40,0},{-40,-7},{-28,-7}},color = {0,0,127}));
    connect(zeroForce.y,multiplex.u1[1]) annotation(Line(points = {{-79,50},{-40,50},{-40,7},{-28,7}},color = {0,0,127}));
    connect(zeroForce.y,multiplex.u2[1]) annotation(Line(points = {{-79,50},{-36,50},{-36,0},{-28,0}},color = {0,0,127}));
    connect(multiplex.y,force.force) annotation(Line(points = {{-5,0},{6,0}},color = {0,0,127}));
    connect(forceFrameVisualizer.frame_a,force.frame_b) annotation(Line(points = {{30,50},{28,50},{28,0}},color = {95,95,95}));
    connect(multiplex2.y,torque.torque) annotation(Line(points = {{-39,-50},{27,-50},{27,-34},{-6,-34},{-6,-20},{6,-20}},color = {0,0,127}));
    connect(torque.frame_b,force.frame_b) annotation(Line(points = {{28,-20},{28,0}},color = {95,95,95}));
    connect(zeroForce.y,multiplex2.u3[1]) annotation(Line(points = {{-79,50},{-70.5,50},{-70.5,-57},{-62,-57}},color = {0,0,127}));
    connect(multiplex2.u2[1],pitchMoment) annotation(Line(points = {{-62,-50},{-66,-50},{-66,80},{-20,80},{-20,110}},color = {0,0,127}));
    connect(multiplex2.u1[1],rollMoment) annotation(Line(points = {{-62,-43},{-68,-43},{-68,76},{20,76},{20,110}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_thrust_icon.PNG",origin={0,0},extent={{87.07317073170732,-89.16663491216705},{-88,90}})}));
end LinearPitchRoll;

within Chassis.Chassis.Propellers.Rotational3D;

model Propeller_01
    extends Ingenuity.Chassis.Propellers.Templates.Base(redeclare replaceable .Ingenuity.Chassis.Propellers.ThrustForce.Linear thrustForce);
    .Modelon.Mechanics.MultiBody.Parts.BodyNoStates propellerBody(
        visualize_shape = true,
        shapeType = "modelica://Ingenuity/Resources/rotors_01.glb",
        lengthDirection = {0,1,0},
        widthDirection = {1,0,0},r_shape = {-fixedTranslation.r[3],0,0},sphere_diameter = 0.01,m = 0.2) annotation(Placement(transformation(extent = {{20.0,-40.0},{40.0,-20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0,0,0.42324},visualize = false) annotation(Placement(transformation(extent = {{60.0,-10.0},{40.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.MultiBodyMount multiBodyMount(enable_mount = false,visualize = false) annotation(Placement(transformation(extent = {{-60.18492135249354,-50.18492135249354},{-19.81507864750646,-9.81507864750646}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Bearing bearing(n = {0,0,1},visualize = false) annotation(Placement(transformation(extent = {{-19.791932552063734,-19.791932552063734},{19.791932552063734,19.791932552063734}},origin = {-40.0,0.0},rotation = 90.0)));
    .Modelon.Mechanics.Rotational3D.Visualizers.Flange propellerBodyFlange(length = 0.5,visualize = false) annotation(Placement(transformation(extent = {{-40.0,-72.0},{-20.0,-52.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Visualizers.FixedFrame propellerBodyFrame(length = 1,diameter = 0.01,visualize = false) annotation(Placement(transformation(extent = {{0,-60},{20,-40}},origin = {0,0},rotation = 0)));
    .Modelon.Mechanics.MultiBody.Visualizers.FixedFrame vehicleFrameVisualizer(visualize = false,diameter = 0.01,length = 1) annotation(Placement(transformation(extent = {{90.0,50.0},{70.0,70.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(propellerBody.frame_a,multiBodyMount.frame_b) annotation(Line(points = {{20,-30},{-19.81507864750646,-30}},color = {95,95,95}));
    connect(fixedTranslation.frame_b,bearing.mountFrame) annotation(Line(points = {{40,0},{-20.20806744793626,0},{-20.20806744793626,-4.39469184422586e-15}},color = {95,95,95}));
    connect(multiBodyMount.flange_a,bearing.flange_a) annotation(Line(points = {{-40,-30},{-56,-30},{-56,0},{-40,0}},color = {95,95,95}));
    connect(propellerBodyFrame.frame_a,propellerBody.frame_a) annotation(Line(points = {{0,-50},{-6,-50},{-6,-30},{20,-30}},color = {95,95,95}));
    connect(multiBodyMount.flange_a,propellerBodyFlange.flange_a) annotation(Line(points = {{-40,-30},{-56,-30},{-56,-62},{-40,-62}},color = {95,95,95}));
    connect(propellerFlange,bearing.flange_a) annotation(Line(points = {{-100,0},{-40,0}},color = {95,95,95}));
    connect(vehicleFrame,fixedTranslation.frame_a) annotation(Line(points = {{100,0},{60,0}},color = {95,95,95}));
    connect(vehicleFrameVisualizer.frame_a,vehicleFrame) annotation(Line(points = {{90,60},{100,60},{100,0}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_propeller_icon.PNG",extent={{93,-95},{-93,95}})}));
end Propeller_01;

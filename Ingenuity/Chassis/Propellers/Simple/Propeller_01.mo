within Chassis.Chassis.Propellers.Simple;
model Propeller_01
    extends Ingenuity.Chassis.Propellers.Templates.Base(redeclare replaceable .Ingenuity.Chassis.Propellers.ThrustForce.None thrustForce);
    .Modelon.Mechanics.MultiBody.Joints.Advanced.ActuatedRevolute actuatedRevolute(stateSelect = StateSelect.always,diameter = 0.005) annotation(Placement(transformation(extent = {{10.0,-10.0},{-10.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational.Actuators.Velocity velocity annotation(Placement(transformation(extent = {{-50.0,10.0},{-30.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant const(k = 10) annotation(Placement(transformation(extent = {{-86.0,-10.0},{-66.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.BodyNoStates propellerBody(
        visualize_shape = true,
        shapeType = "modelica://Ingenuity/Resources/rotors_01.glb",
        lengthDirection = {0,1,0},
        widthDirection = {0,0,1},r_shape = -fixedTranslation.r) annotation(Placement(transformation(extent = {{-10.0,-46.0},{10.0,-26.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(r = {0,0,0.42324}) annotation(Placement(transformation(extent = {{60.0,-10.0},{40.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(velocity.mount,actuatedRevolute.mount) annotation(Line(points = {{-40,10},{-40,17.333333333333336},{5,17.333333333333336},{5,10}},color = {0,0,0}));
    connect(const.y,velocity.u) annotation(Line(points = {{-65,0},{-52,0}},color = {0,0,127}));
    connect(actuatedRevolute.frame_b,propellerBody.frame_a) annotation(Line(points = {{-10,0},{-22,0},{-22,-36},{-10,-36}},color = {95,95,95}));
    connect(fixedTranslation.frame_b,actuatedRevolute.frame_a) annotation(Line(points = {{40,0},{10,0}},color = {95,95,95}));
    connect(vehicleFrame,fixedTranslation.frame_a) annotation(Line(points = {{100,0},{60,0}},color = {95,95,95}));
    connect(velocity.flange_a,actuatedRevolute.axis) annotation(Line(points = {{-40,0},{-40,10},{-5,10}},color = {0,0,0}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(lineColor={0,0,0},fillColor={230,230,230},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end Propeller_01;

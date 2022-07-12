within Ingenuity;

model HelicopterPitchRoll
    extends .Ingenuity.Templates.Helicopter(
        redeclare replaceable .Ingenuity.Chassis.ChassisPitchRoll chassis,
        redeclare replaceable .Ingenuity.Powertrains.DualMotor powertrain,
        redeclare replaceable .Ingenuity.Controllers.AltitudeVelocityAnglesControl controller,
        redeclare replaceable .Ingenuity.Sensors.SensorPackage sensors);
    .Modelica.Blocks.Interfaces.RealInput position_ref[3](unit = "m",quantity = "Length") "Position in world frame" annotation(Placement(transformation(extent = {{-120.0,50.0},{-100.0,70.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Interfaces.RealInput angles_ref[3](quantity = "Angle",unit = "rad") "Angles in world frame" annotation(Placement(transformation(extent = {{-120.0,-70.0},{-100.0,-50.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Interfaces.RealInput velocity_ref[3](quantity = "Velocity",unit = "m/s") "Position in world frame" annotation(Placement(transformation(extent = {{-120.0,-10.0},{-100.0,10.0}},rotation = 0.0,origin = {0.0,0.0})));
equation
    connect(controller.angles_ref,angles_ref) annotation(Line(points = {{-81.82248994224459,-7.935450888088939},{-95.9112449711223,-7.935450888088939},{-95.9112449711223,-60},{-110,-60}},color = {0,0,127}));
    connect(sensors.position,controller.position) annotation(Line(points = {{-21.702261334671366,-44.21653721114809},{-67.93545088808894,-44.21653721114809},{-67.93545088808894,-21.82248994224458}},color = {0,0,127}));
    connect(sensors.velocity,controller.velocity) annotation(Line(points = {{-21.702261334671366,-52.10826860557405},{-52.06454911191106,-52.10826860557405},{-52.06454911191106,-21.82248994224458}},color = {0,0,127}));
    connect(sensors.angles,controller.angles) annotation(Line(points = {{-21.702261334671366,-67.89173139442596},{-60,-67.89173139442596},{-60,-21.82248994224458}},color = {0,0,127}));
    connect(controller.position_ref,position_ref) annotation(Line(points = {{-82.21926248664903,7.935450888088939},{-96.10963124332451,7.935450888088939},{-96.10963124332451,60},{-110,60}},color = {0,0,127}));
    connect(controller.velocity_ref,velocity_ref) annotation(Line(points = {{-81.82248994224459,0},{-110,0}},color = {0,0,127}));
    connect(sensors.acceleration,controller.acceleration) annotation(Line(points = {{-21.702261334671366,-60},{-44.12909822382212,-60},{-44.12909822382212,-21.82248994224458}},color = {0,0,127}));
    connect(controller.pitchMoment,chassis.pitchMoment) annotation(Line(points = {{-63.96772544404447,21.82248994224458},{-63.96772544404447,36},{54.05364798839899,36},{54.05364798839899,21.8032907092037}},color = {0,0,127}));
    connect(controller.rollMoment,chassis.rollMoment) annotation(Line(points = {{-56.03227455595553,21.82248994224458},{-56.03227455595553,34},{66.73919894648114,34},{66.73919894648114,21.8032907092037}},color = {0,0,127}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Ingenuity/Resources/images/Ingenuity_helicopter_icon.PNG",extent={{98,-99},{-98,99}})}));
end HelicopterPitchRoll;

within Ingenuity.Sensors;
model SensorPackage
    extends .Ingenuity.Sensors.Templates.Base;
    .VehicleDynamics.Vehicles.Chassis.Sensors.ChassisStates chassisStates(
        position_resolve_frame = Modelon.Mechanics.MultiBody.Types.Defaults.WORLD_FRAME,angles_resolve_frame = Modelon.Mechanics.MultiBody.Types.Defaults.WORLD_FRAME,resolve_frame = Modelon.Mechanics.MultiBody.Types.Defaults.WORLD_FRAME,r = {0,0,0.1935}) annotation(Placement(transformation(extent = {{15.059434589929054,-15.059434589929054},{-15.059434589929054,15.059434589929054}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealOutput position[3](unit = "m",quantity = "Length") "Position in world frame" annotation(Placement(transformation(extent = {{-100.0,70.0},{-120.0,90.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Interfaces.RealOutput angles[3](quantity = "Angle",unit = "rad") "Angles in world frame" annotation(Placement(transformation(extent = {{-100.0,-50.0},{-120.0,-30.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Interfaces.RealOutput velocity[3](quantity = "Velocity",unit = "m/s") "Velocity in world frame" annotation(Placement(transformation(extent = {{-100.0,30.0},{-120.0,50.0}},rotation = 0.0,origin = {0.0,0.0})));
    .Modelica.Blocks.Interfaces.RealOutput acceleration[3](unit = "m/s2",quantity = "Acceleration") "Acceleration in world frame" annotation(Placement(transformation(extent = {{-100.0,-10.0},{-120.0,10.0}},rotation = 0.0,origin = {0.0,0.0})));
equation
    connect(chassisStates.mount_frame,vehicleFrame) annotation(Line(points = {{15.059434589929054,0},{20,0},{20,60},{0,60},{0,100}},color = {95,95,95}));
    connect(chassisStates.position,position) annotation(Line(points = {{-16.56537804892196,10.54160421295034},{-50,10.54160421295034},{-50,80},{-110,80}},color = {0,0,127}));
    connect(chassisStates.angles,angles) annotation(Line(points = {{-16.56537804892196,-3.011886917985811},{-50,-3.011886917985811},{-50,-40},{-110,-40}},color = {0,0,127}));
    connect(chassisStates.velocity,velocity) annotation(Line(points = {{-16.56537804892196,6.023773835971622},{-60,6.023773835971622},{-60,40},{-110,40}},color = {0,0,127}));
    connect(chassisStates.acceleration,acceleration) annotation(Line(points = {{-16.56537804892196,1.5059434589929055},{-60,1.5059434589929055},{-60,0},{-110,0}},color = {0,0,127}));
end SensorPackage;

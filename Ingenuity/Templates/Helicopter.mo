within Ingenuity.Templates;
partial model Helicopter
    parameter Modelica.Units.SI.Position r_x_start=0
    "Initial x position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position r_y_start=0
    "Initial y position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position r_z_start=0
    "Initial z position"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Position h_start=0 "Initial height"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Angle p_x_start=0 "Initial roll angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Angle p_y_start=0 "Initial pitch angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Angle p_z_start=0 "Initial yaw angle"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.AngularVelocity w_z_start=0 "Initial yaw rate"
    annotation (Dialog(tab="Initialization", group="Start values"));
    parameter Modelica.Units.SI.Velocity v_start=0 "Initial speed"
    annotation (Dialog(tab="Initialization", group="Start values"));

    replaceable .Ingenuity.Chassis.Templates.HelicopterChassis chassis(    
        v_start=v_start,
        h_start=h_start,
        r_x_start=r_x_start,
        r_y_start=r_y_start,
        r_z_start=r_z_start,
        p_x_start=p_x_start,
        p_y_start=p_y_start,
        p_z_start=p_z_start,
        w_z_start=w_z_start) annotation(Placement(transformation(extent = {{40.17882662799664,-19.821173372003365},{79.82117337200336,19.821173372003365}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Ingenuity.Powertrains.Interfaces.Base powertrain annotation(Placement(transformation(extent = {{-19.830837114521323,-19.830837114521323},{19.830837114521323,19.830837114521323}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b vehicleFrame "Vehicle frame" annotation(Placement(transformation(origin = {0.0,100.0},extent = {{-8.0,-8.0},{8.0,8.0}},rotation = 90.0)));
    replaceable .Ingenuity.Controllers.Templates.Base controller annotation(Placement(transformation(extent = {{-79.83862722022235,-19.838627220222346},{-40.16137277977765,19.838627220222346}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Ingenuity.Sensors.Templates.Base sensors constrainedby .Ingenuity.Sensors.Templates.Base annotation(Placement(transformation(extent = {{-19.72932848606488,-79.72932848606489},{19.72932848606488,-40.27067151393511}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(powertrain.propeller_1_flange,chassis.propeller_1_flange) annotation(Line(points = {{0,-19.83083711452132},{0,-25.83083711452132},{50.08941331399832,-25.83083711452132},{50.08941331399832,-19.821173372003365}},color = {95,95,95}));
    connect(powertrain.propeller_2_flange,chassis.propeller_2_flange) annotation(Line(points = {{0,19.83083711452132},{0,25.83083711452132},{50.08941331399832,25.83083711452132},{50.08941331399832,19.821173372003365}},color = {95,95,95}));
    connect(chassis.vehicleFrame,vehicleFrame) annotation(Line(points = {{60,19.821173372003365},{60,59.91058668600168},{0,59.91058668600168},{0,100}},color = {95,95,95}));
    connect(controller.controlBus,powertrain.controlBus) annotation(Line(points = {{-40.16137277977765,0},{-19.830837114521323,0}},color = {240,170,40},pattern = LinePattern.Dot));
    connect(sensors.vehicleFrame,chassis.vehicleFrame) annotation(Line(points = {{0,-40.27067151393511},{0,-30},{88,-30},{88,26},{59.80178826627997,26},{59.80178826627997,19.821173372003365}},color = {95,95,95}));
    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Text(textString="Helicopter",origin={2,0},extent={{-72.82926829268293,-24.783751857638237},{72,24}})}));
end Helicopter;

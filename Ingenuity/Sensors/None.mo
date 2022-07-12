within Ingenuity.Sensors;
model None
    extends .Ingenuity.Sensors.Templates.Base;
    extends Modelon.Icons.None;
    .Modelon.Mechanics.MultiBody.Parts.Ending ending annotation(Placement(transformation(extent = {{-10.0,80.0},{10.0,60.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(ending.frame_a,vehicleFrame) annotation(Line(points = {{0,80},{0,100}},color = {95,95,95}));
end None;

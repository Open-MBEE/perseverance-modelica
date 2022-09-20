within ExampleModels;
model RoverAndHelicopter
    extends Perseverance.Experiments.DrivingCleats(ground(x_min = -10,x_max = 10,y_min = -7.5,y_max = 7.5),chassis(wheel_1(visualization(visualize_contact_forces = false)),wheel_3(visualization(visualize_contact_forces = false)),wheel_5(visualization(visualize_contact_forces = false)),wheel_6(visualization(visualize_contact_forces = false)),wheel_4(visualization(visualize_contact_forces = false)),wheel_2(visualization(visualize_contact_forces = false))),speedSource(height = 0.75));
    replaceable .Ingenuity.HelicopterPitchRoll helicopter(r_x_start = -2,chassis(body(basic(visualize = true,
          groundImpact1(toImpactPoint(visualize=false)),
          groundImpact2(toImpactPoint(visualize=false)),
          groundImpact3(toImpactPoint(visualize=false)),
          groundImpact4(toImpactPoint(visualize=false)))))) annotation(Placement(transformation(rotation = 0.0,origin = {0.0,0.0},extent = {{199.18077066186643,-39.74230626121047},{239.28076779967202,0.3576908765950897}})));
    .Modelica.Blocks.Routing.Multiplex3 multiplexPosition annotation(Placement(transformation(extent = {{168.915370788167,15.992293865090083},{177.54616767337146,24.623090750294544}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexVelocity annotation(Placement(transformation(extent = {{144.19911913792924,-63.800880862070755},{151.80088086207076,-56.199119137929245}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Routing.Multiplex3 multiplexAngles annotation(Placement(transformation(extent = {{185.42988836869847,-63.49318855437845},{193.03165009283998,-55.89142683023694}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp x_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{119.23330057009355,34.310223647016656},{131.22823789144488,46.305160968367986}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp y_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{119.23330057009355,14.310223647016649},{131.22823789144488,26.30516096836798}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Trapezoid z_ref(offset = 0.1935,nperiod = 1,period = 30,falling = 5,width = 15,rising = 5,amplitude = 3,startTime = 5) annotation(Placement(transformation(rotation = 0.0,origin = {0.0,0.0},extent = {{119.23330057009355,-5.689776352983358},{131.22823789144488,6.3051609683679715}})));
    replaceable .Modelica.Blocks.Sources.Trapezoid vx_ref(startTime = 6,nperiod = 1,period = 16,falling = 3,width = 10,rising = 3,amplitude = 0.75) annotation(Placement(transformation(rotation = 0.0,origin = {0.0,0.0},extent = {{119.23330057009355,-45.68977635298336},{131.22823789144488,-33.69483903163203}})));
    replaceable .Modelica.Blocks.Sources.Ramp vz_ref(height = 0,duration = 1) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{119.23330057009355,-85.68977635298337},{131.22823789144488,-73.69483903163204}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp roll_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{167.23330057009358,-45.68977635298336},{179.22823789144488,-33.69483903163203}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp pitch_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{167.23330057009358,-65.68977635298336},{179.22823789144488,-53.69483903163203}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelica.Blocks.Sources.Ramp yaw_ref(duration = 1,height = 0) constrainedby .Modelica.Blocks.Interfaces.SignalSource annotation(Placement(transformation(extent = {{167.23330057009358,-85.68977635298337},{179.22823789144488,-73.69483903163204}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable .Modelon.Blocks.Sources.SinglePeriodSine vy_ref(amplitude = 0.5,f = 0.1,startTime = 6.5) constrainedby .Modelica.Blocks.Interfaces.SO annotation(Placement(transformation(extent = {{120.2085162698796,-65.79148373012039},{131.7914837301204,-54.20851626987961}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(multiplexPosition.y,helicopter.position_ref) annotation(Line(points = {{177.97770751763164,20.307692307692307},{187.57673916130392,20.307692307692307},{187.57673916130392,-7.662308550966017},{197.17577080497614,-7.662308550966017}},color = {0,0,127}));
    connect(multiplexVelocity.y,helicopter.velocity_ref) annotation(Line(points = {{152.18096894827784,-60},{159.23076923076923,-60},{159.23076923076923,-19.692307692307693},{197.17577080497614,-19.692307692307693}},color = {0,0,127}));
    connect(multiplexAngles.y,helicopter.angles_ref) annotation(Line(points = {{193.41173817904706,-59.69230769230769},{193.41173817904706,-31.72230683364937},{197.17577080497614,-31.72230683364937}},color = {0,0,127}));
    connect(x_ref.y,multiplexPosition.u1[1]) annotation(Line(points = {{131.82798475751244,40.30769230769231},{149.94013792857947,40.30769230769231},{149.94013792857947,23.328471217513865},{168.05229109964654,23.328471217513865}},color = {0,0,127}));
    connect(y_ref.y,multiplexPosition.u2[1]) annotation(Line(points = {{131.82798475751244,20.307692307692307},{168.05229109964654,20.307692307692307}},color = {0,0,127}));
    connect(z_ref.y,multiplexPosition.u3[1]) annotation(Line(points = {{131.82798475751244,0.3076923076923066},{149.94013792857947,0.3076923076923066},{149.94013792857947,17.286913397870748},{168.05229109964654,17.286913397870748}},color = {0,0,127}));
    connect(vx_ref.y,multiplexVelocity.u1[1]) annotation(Line(points = {{131.82798475751244,-39.69230769230769},{138.2488484768984,-39.69230769230769},{138.2488484768984,-57.339383396550474},{143.43894296551508,-57.339383396550474}},color = {0,0,127}));
    connect(vz_ref.y,multiplexVelocity.u3[1]) annotation(Line(points = {{131.82798475751244,-79.6923076923077},{138.2488484768984,-79.6923076923077},{138.2488484768984,-62.660616603449526},{143.43894296551508,-62.660616603449526}},color = {0,0,127}));
    connect(roll_ref.y,multiplexAngles.u1[1]) annotation(Line(points = {{179.82798475751247,-39.69230769230769},{179.82798475751247,-57.03169108885817},{184.6697121962843,-57.03169108885817}},color = {0,0,127}));
    connect(pitch_ref.y,multiplexAngles.u2[1]) annotation(Line(points = {{179.82798475751247,-59.69230769230769},{184.6697121962843,-59.69230769230769}},color = {0,0,127}));
    connect(yaw_ref.y,multiplexAngles.u3[1]) annotation(Line(points = {{179.82798475751247,-79.6923076923077},{179.82798475751247,-62.35292429575722},{184.6697121962843,-62.35292429575722}},color = {0,0,127}));
    connect(vy_ref.y,multiplexVelocity.u2[1]) annotation(Line(points = {{132.37063210313244,-60},{143.43894296551508,-60}},color = {0,0,127}));
    annotation (Diagram(coordinateSystem(extent={{-100,-100},{280,100}}),
                      graphics),experiment(StartTime = 0,StopTime = 32,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end RoverAndHelicopter;

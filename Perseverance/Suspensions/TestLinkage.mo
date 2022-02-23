within Workspace.Perseverance.Suspensions;
model TestLinkage
    extends Modelon.Icons.Experiment;
    inner .VehicleDynamics.World world annotation(Placement(transformation(extent = {{-40,30},{-20,50}},origin = {0,0},rotation = 0)));
    inner .VehicleDynamics.Grounds.Flat ground(z = -0.28,x_min = -1,x_max = 1,y_min = -1,y_max = 1) annotation(Placement(transformation(extent = {{-32,-80},{8,-60}},origin = {0,0},rotation = 0)));
    Workspace.Perseverance.Wheel wheel_ (visualization(visualize_contact_forces = false,visualize_tread_texture = false))annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-40.0,-30.0},rotation = 90.0)));
    Workspace.Perseverance.Wheel wheel_2 (visualization(visualize_contact_forces = false,visualize_tread_texture = false))annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-10.0,-30.0},rotation = 90.0)));
    Workspace.Perseverance.Wheel wheel_3 (visualization(visualize_tread_texture = false,visualize_contact_forces = false))annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {20.0,-30.0},rotation = 90.0)));
    .Perseverance.Suspensions.Linkage linkage annotation(Placement(transformation(extent = {{-34.095581711110285,-4.047790855555142},{6.095581711110283,16.047790855555142}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSource1(k = 0) annotation(Placement(transformation(extent = {{68.0,10.0},{48.0,30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Sources.Constant steerSource2(k = 0) annotation(Placement(transformation(extent = {{68.0,-20.0},{48.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(linkage.hubFlange3,wheel_.hubFlange) annotation(Line(points = {{-27.46403974644389,-3.9138203108144083},{-27.46403974644389,-11.956910155407204},{-40,-11.956910155407204},{-40,-20}},color = {95,95,95}));
    connect(linkage.hubFlange2,wheel_2.hubFlange) annotation(Line(points = {{-14,-4.047790855555142},{-14,-12.023895427777571},{-9.999999999999998,-12.023895427777571},{-9.999999999999998,-20}},color = {95,95,95}));
    connect(linkage.hubFlange1,wheel_3.hubFlange) annotation(Line(points = {{-0.5359602535561088,-4.047790855555142},{-0.5359602535561088,-12.023895427777571},{20.000000000000004,-12.023895427777571},{20.000000000000004,-20}},color = {95,95,95}));
    connect(world.frame_b,linkage.frame_a) annotation(Line(points = {{-20,40},{-14,40},{-14,16.047790855555142}},color = {95,95,95}));
    connect(steerSource1.y,linkage.steer_front) annotation(Line(points = {{47,20},{27.552569941110658,20},{27.552569941110658,12.028674513333087},{8.105139882221316,12.028674513333087}},color = {0,0,127}));
    connect(steerSource2.y,linkage.steer_rear) annotation(Line(points = {{47,-10},{27.552569941110658,-10},{27.552569941110658,-0.028674513333085905},{8.105139882221316,-0.028674513333085905}},color = {0,0,127}));

    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name")}));
end TestLinkage;

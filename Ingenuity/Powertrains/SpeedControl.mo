within Ingenuity.Powertrains;
model SpeedControl
    extends .Ingenuity.Powertrains.Templates.Basic.DualMotor;
    .Modelon.Mechanics.Rotational3D.Actuators.Velocity velocity2(enable_mount = false,n = {0,0,1},q = {1,0,0}) annotation(Placement(transformation(extent = {{-26,50},{-6,70}},origin = {0,0},rotation = 0)));
    .Modelon.Mechanics.Rotational3D.Actuators.Velocity velocity1(enable_mount = false,n = {0,0,1},q = {1,0,0}) annotation(Placement(transformation(extent = {{-28.0,-70.0},{-8.0,-50.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(w_sns2.y_r,velocity2.u) annotation(Line(points = {{-41.27137445881574,60},{-27,60}},color = {0,0,127}));
    connect(velocity2.flange_a,propeller_2_flange) annotation(Line(points = {{-16,60},{0,60},{0,100}},color = {95,95,95}));
    connect(w_sns1.y_r,velocity1.u) annotation(Line(points = {{-41.27137445881574,-60},{-29,-60}},color = {0,0,127}));
    connect(velocity1.flange_a,propeller_1_flange) annotation(Line(points = {{-18,-60},{0,-60},{0,-100}},color = {95,95,95}));
end SpeedControl;

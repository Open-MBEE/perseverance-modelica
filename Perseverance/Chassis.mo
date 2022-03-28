within Perseverance;
model Chassis
    extends .VehicleDynamics.Vehicles.Chassis.Interfaces.SixWheeler(
    summary_r0_summary={0,0,0},
    summary_r_0={motion.summary_r_x,motion.summary_r_y,motion.summary_r_z},
    summary_v_x=motion.summary_v_x,
    summary_v_y=motion.summary_v_y,
    summary_v_z=motion.summary_v_z,
    summary_a_x=motion.summary_a_x,
    summary_a_y=motion.summary_a_y,
    summary_a_z=motion.summary_a_z,
    summary_beta=motion.summary_beta,
    summary_dbeta=motion.summary_dbeta,
    summary_p_x=motion.summary_p_x,
    summary_p_z=motion.summary_p_z,
    summary_p_y=motion.summary_p_y,
    summary_w_x=motion.summary_w_x,
    summary_w_y=motion.summary_w_y,
    summary_w_z=motion.summary_w_z,
    summary_z_x=motion.summary_z_x,
    summary_z_y=motion.summary_z_y,
    summary_z_z=motion.summary_z_z,
    summary_a_y_g=motion.summary_a_y_g,
    summary_a_x_g=motion.summary_a_x_g,
    summary_p_sw=0,icon_name = "modelica://Perseverance/Resources/perseverance_icon.png",h_start = 0 + wheel_1.R0 - 0.2625);
    .Perseverance.Suspensions.DifferentialLinkage differentialLinkage(r0J1 = leftLinkage.r0BJ,r0J2 = rightLinkage.r0BJ .* {1,-1,1}) annotation(Placement(transformation(extent = {{-50.0,-10.0},{-30.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Motion.FreeMotion motion(r_x_start = r_x_start,r_y_start = r_y_start,r_z_start = r_z_start,h_start = h_start,v_start = v_start,p_x_start = p_x_start,p_y_start = p_y_start,p_z_start = p_z_start,w_z_start = w_z_start) annotation(Placement(transformation(extent = {{-60.0,-10.0},{-80.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    replaceable model Wheel= .Perseverance.Wheel  constrainedby .VehicleDynamics.Vehicles.Chassis.Wheels.Pacejka02;
    Wheel wheel_1 (wheel_number = 1)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-70.0,-68.0},rotation = 90.0)));
    Wheel wheel_2 (wheel_number = 2,left_wheel = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-70.0,68.0},rotation = -90.0)));
    Wheel wheel_3 (wheel_number = 3)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {0.0,-68.0},rotation = 90.0)));
    Wheel wheel_4 (wheel_number = 4,left_wheel = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {0.0,68.0},rotation = -90.0)));
    Wheel wheel_5 (wheel_number = 5)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {70.0,-68.0},rotation = 90.0)));
    Wheel wheel_6 (wheel_number = 6,left_wheel = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {70.0,68.0},rotation = -90.0)));
    

    .Modelon.Mechanics.MultiBody.Parts.BodyNoStates bodyMass(rcm = {0,0,0.8},m = 1000,visualize_cm=false,visualize = false) annotation(Placement(transformation(extent = {{20.0,-20.0},{40.0,0.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.RotationalMount rotationalMount (visualize = false)annotation(Placement(transformation(extent = {{-99.89381918986484,-38.106180810135164},{-92.10618081013516,-45.893819189864836}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape bodyVis(widthDirection = {-1,0,0},lengthDirection = {0,1,0},shapeType = "modelica://Perseverance/Resources/Perseverance_body.glb",length = 1,width = 1,height = 1,extra = 1) annotation(Placement(transformation(extent = {{20.095994086371384,12.095994086371391},{35.904005913628616,27.90400591362861}},origin = {0.0,0.0},rotation = 0.0)));
    .Perseverance.Suspensions.Linkage leftLinkage annotation(Placement(transformation(extent = {{0.0,-40.0},{-40.0,-20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Perseverance.Suspensions.Linkage rightLinkage(left_linkage = false) annotation(Placement(transformation(extent = {{0.0,40.0},{-40.0,20.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput steerRR annotation(Placement(transformation(extent = {{-115.46021319917917,-37.86021319917917},{-99.73978680082082,-22.13978680082083}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput steerRL annotation(Placement(transformation(extent = {{-115.46021319917917,-17.86021319917917},{-99.73978680082082,-2.139786800820829}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput steerFR annotation(Placement(transformation(extent = {{-115.46021319917917,2.139786800820829},{-99.73978680082082,17.86021319917917}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput steerFL annotation(Placement(transformation(extent = {{-115.46021319917917,22.13978680082083},{-99.73978680082082,37.86021319917917}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(wheel_1.hubFlange,hub_1) annotation(Line(points = {{-70,-58},{-70,-50}},color = {95,95,95}));
    connect(wheel_3.hubFlange,hub_3) annotation(Line(points = {{2.220446049250313e-15,-58},{0,-50}},color = {95,95,95}));
    connect(wheel_5.hubFlange,hub_5) annotation(Line(points = {{70,-58},{70,-50}},color = {95,95,95}));
    connect(wheel_2.hubFlange,hub_2) annotation(Line(points = {{-70,58},{-70,50}},color = {95,95,95}));
    connect(wheel_4.hubFlange,hub_4) annotation(Line(points = {{2.220446049250313e-15,58},{0,50}},color = {95,95,95}));
    connect(wheel_6.hubFlange,hub_6) annotation(Line(points = {{70,58},{70,50}},color = {95,95,95}));
    connect(rotationalMount.flange_a,steeringWheelFlange) annotation(Line(points = {{-96,-42},{-96,-30},{-100,-30}},color = {95,95,95}));
    connect(motion.vehicleFrame,differentialLinkage.frame_a) annotation(Line(points = {{-60,0},{-50,0}},color = {95,95,95}));
    connect(vehicleFrame,motion.vehicleFrame) annotation(Line(points = {{20,50},{-56,50},{-56,0},{-60,0}},color = {95,95,95}));
    connect(rotationalMount.mountFrame,motion.vehicleFrame) annotation(Line(points = {{-96,-38.106180810135164},{-96,-14},{-54,-14},{-54,0},{-60,0}},color = {95,95,95}));
    connect(rotationalMount.housingFlange,rotationalMount.axleFlange) annotation(Line(points = {{-92.10618081013516,-38.106180810135164},{-88,-38.106180810135164},{-88,-42},{-92.10618081013516,-42}},color = {0,0,0}));
    connect(bodyVis.frame_a,motion.vehicleFrame) annotation(Line(points = {{20.095994086371384,20},{10,20},{10,0},{-60,0}},color = {95,95,95}));
    connect(bodyMass.frame_a,motion.vehicleFrame) annotation(Line(points = {{20,-10},{10,-10},{10,0},{-60,0}},color = {95,95,95}));
    connect(leftLinkage.hubFlange1,hub_1) annotation(Line(points = {{-33.4,-40},{-33.4,-46},{-70,-46},{-70,-50}},color = {95,95,95}));
    connect(leftLinkage.hubFlange2,hub_3) annotation(Line(points = {{-20,-40},{-20,-45},{0,-45},{0,-50}},color = {95,95,95}));
    connect(leftLinkage.hubFlange3,hub_5) annotation(Line(points = {{-6.6,-39.86666666666667},{-6.6,-44},{70,-44},{70,-50}},color = {95,95,95}));
    connect(leftLinkage.frame_a,differentialLinkage.frame_b1) annotation(Line(points = {{-20,-20},{-20,-14},{-36,-14},{-36,-10}},color = {95,95,95}));
    connect(leftLinkage.steer_front,steerFL) annotation(Line(points = {{-42,-24},{-86,-24},{-86,30},{-107.6,30}},color = {0,0,127}));
    connect(leftLinkage.steer_rear,steerRL) annotation(Line(points = {{-42,-36},{-88,-36},{-88,-10},{-107.6,-10}},color = {0,0,127}));
    connect(rightLinkage.frame_a,differentialLinkage.frame_b2) annotation(Line(points = {{-20,20},{-20,16},{-36,16},{-36,10}},color = {95,95,95}));
    connect(hub_2,rightLinkage.hubFlange1) annotation(Line(points = {{-70,50},{-70,46},{-33.4,46},{-33.4,40}},color = {95,95,95}));
    connect(hub_4,rightLinkage.hubFlange2) annotation(Line(points = {{0,50},{0,45},{-20,45},{-20,40}},color = {95,95,95}));
    connect(hub_6,rightLinkage.hubFlange3) annotation(Line(points = {{70,50},{70,44},{-6.6,44},{-6.6,39.86666666666667}},color = {95,95,95}));
    connect(rightLinkage.steer_front,steerFR) annotation(Line(points = {{-42,24},{-88,24},{-88,10},{-107.6,10}},color = {0,0,127}));
    connect(rightLinkage.steer_rear,steerRR) annotation(Line(points = {{-42,36},{-90,36},{-90,-30},{-107.6,-30}},color = {0,0,127}));

    annotation(Icon(graphics = {Line(origin={-46.0677490234375,-40.000152587890625},points={{23.9322509765625,5.999847412109375},{-23.9322509765625,-5.999847412109375}},pattern=LinePattern.Dash),Line(origin={-46.718749997870574,41.499997445077064},points={{23.281250002129433,-5.500002554922936},{-23.281250002129426,5.500002554922936}},pattern=LinePattern.Dash),Line(origin={53.42712475114918,-40.99813815015659},points={{17.35937572771168,-6.998290738047217},{-17.35937572771168,6.998290738047217}},pattern=LinePattern.Dash),Line(origin={52.85664986461134,41.34926187648799},points={{15.9998379585695,4.679686715010725},{-15.999837958569508,-4.679686715010732}},pattern=LinePattern.Dash),Line(origin={3.788550374717573,-41.963385436553594},points={{-3.9999200830644104,-7.988766605035103},{3.9999200830644104,7.98876660503511}},pattern=LinePattern.Dash),Line(origin={3.422507433458487,42.0295067120125},points={{3.969322863043551,-5.999441940337384},{-3.969322863043551,5.999441940337384}},pattern=LinePattern.Dash),Line(origin={-95,-30},points={{-5,0},{5,0}}),Line(origin={-90,-30},points={{0,6},{0,-6}}),Line(origin={-88,-30},points={{0,4},{0,-4}}),Line(origin={-86,-30.02099609375},points={{0,2.02099609375},{0,-2.02099609375}})}));
end Chassis;

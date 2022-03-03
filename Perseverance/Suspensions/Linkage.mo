within Perseverance.Suspensions;
model Linkage
    parameter Boolean left_linkage = true;
    parameter .Modelica.SIunits.Position r0BJ[3]  = {0.214,left * 0.65699,0.85684} "Position of upper bogie joint";
    parameter .Modelica.SIunits.Position r0H_1[3]  = {1.0801,left * 1.1452,0.26208}"Position of hub 1 relative frame_a";
    parameter .Modelica.SIunits.Position r0H_2[3]  = {-0.10488,left * 1.2672,0.26248}"Position of hub 2 relative frame_a";
    parameter .Modelica.SIunits.Position r0H_3[3]  = {-1.1799,left * 1.1452,0.26537}"Position of hub 3 relative frame_a";
    parameter .Modelica.SIunits.Position r0J[3]  = {-0.53999,left * 1.0291,0.66385}"Position of front bogie joint relative frame_a";
    parameter .Modelica.SIunits.Position r0S_1[3]  = {1.095,left * 1.0625,0.85685}"Position of front steer joint relative frame_a";
    parameter .Modelica.SIunits.Position r0S_2[3]  = {-1.165,left * 1.0625,0.85684}"Position of rear steer joint relative frame_a";
    parameter Real left = if left_linkage then 1 else -1;
    
    .Modelica.Blocks.Interfaces.RealInput steer_front annotation(Placement(transformation(extent = {{240.0,40.0},{200.0,80.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Blocks.Interfaces.RealInput steer_rear annotation(Placement(transformation(extent = {{240.0,-80.0},{200.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));   
    
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Hub hub_1 (left_linkage = left_linkage)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {134.0,-70.0},rotation = -90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Hub hub_2 (left_linkage = left_linkage)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {0.0,-70.0},rotation = -90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.WheelCarriers.Hub hub_3 (left_linkage = left_linkage)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-134.0,-70.66666666666667},rotation = -90.0)));
    
    .Modelon.Mechanics.MultiBody.Joints.Advanced.Revolute bogieJoint(n = {0,1,0},stateSelect=StateSelect.always) annotation(Placement(transformation(extent = {{-30.0,10.0},{-10.0,30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link rearBogieArm1 (r0B = r0S_2 - r0J,visualize = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-58.0,10.0},rotation = -180.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link rearBogieArm2 (r0B = r0H_2 - r0J,visualize = false)annotation(Placement(transformation(extent = {{-30.0,-22.0},{-10.0,-2.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link frontBogieArm2 (r0B = r0S_1 - r0BJ,visualize = false)annotation(Placement(transformation(extent = {{40.0,30.0},{60.0,50.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link frontBogieArm1 (r0B = r0J - r0BJ,visualize = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {10.0,40.0},rotation = -180.0)));
    .Modelon.Mechanics.MultiBody.Joints.Advanced.ActuatedRevolute rearSteerJoint (stateSelect=StateSelect.always)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-80.0,-10.0},rotation = -90.0)));
    .Modelon.Mechanics.MultiBody.Joints.Advanced.ActuatedRevolute frontSteerJoint (stateSelect = StateSelect.always)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {80.0,10.0},rotation = -90.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b hubFlange1 annotation(Placement(transformation(extent = {{124.0,-110.0},{144.0,-90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b hubFlange2 annotation(Placement(transformation(extent = {{-10.0,-110.0},{10.0,-90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational3D.Interfaces.Flange_b hubFlange3 annotation(Placement(transformation(extent = {{-144.0,-108.66666666666667},{-124.0,-88.66666666666667}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link rearWheelMount(r0B = r0H_3 - r0S_2,visualize = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-134.0,-40.66666666666667},rotation = -90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link frontWheelMount(r0B = r0H_1 - r0S_1,visualize = false) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {134.0,-40.0},rotation = -90.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {0.0,100.0},rotation = -90.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation(visualize = false,r = r0BJ) annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {0.0,60.0},rotation = -90.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape frontBogieArmVis(height = 1,width = 1,length = left,shapeType = "modelica://Perseverance/Resources/Perseverance_front_bogie_arm.glb",lengthDirection = {0,1,0},widthDirection = {-1,0,0},extra = 1) annotation(Placement(transformation(extent = {{40.0,70.0},{60.0,90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape rearBogieArmVis(widthDirection = {-1,0,0},lengthDirection = {0,1,0},shapeType = "modelica://Perseverance/Resources/Perseverance_rear_bogie_arm.glb",length = left,width = 1,height = 1,r_shape = -r0J,extra = 1) annotation(Placement(transformation(extent = {{-38.0,24.0},{-58.0,44.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape rearWheelMountVis(r_shape = -r0S_2,height = 1,width = 1,length = left,shapeType = "modelica://Perseverance/Resources/Perseverance_rear_wheel_mount.glb",lengthDirection = {0,1,0},widthDirection = {-1,0,0},extra = 1) annotation(Placement(transformation(extent = {{-56.0,-50.0},{-36.0,-30.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape frontWheelMountVis(widthDirection = {-1,0,0},lengthDirection = {0,1,0},shapeType = "modelica://Perseverance/Resources/Perseverance_front_wheel_mount.glb",length = left,width = 1,height = 1,r_shape = -r0S_1,extra = 1) annotation(Placement(transformation(extent = {{120.0,-30.0},{100.0,-10.0}},origin = {0.0,0.0},rotation = 0.0)));


    .Modelon.Mechanics.Rotational.Actuators.Position frontSteerActuator annotation(Placement(transformation(extent = {{118.0,16.0},{98.0,-4.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.Rotational.Actuators.Position rearSteerActuator annotation(Placement(transformation(extent = {{-50.0,-6.0},{-70.0,-26.0}},origin = {0.0,0.0},rotation = 0.0)));
equation
    connect(hub_2.hubFlange,hubFlange2) annotation(Line(points = {{2.220446049250313e-15,-80},{0,-100}},color = {95,95,95}));
    connect(hub_3.hubFlange,hubFlange3) annotation(Line(points = {{-134,-80.66666666666667},{-134,-98.66666666666667}},color = {95,95,95}));
    connect(hub_1.hubFlange,hubFlange1) annotation(Line(points = {{134,-80},{134,-100}},color = {95,95,95}));    connect(fixedTranslation.frame_a,frame_a) annotation(Line(points = {{-2.220446049250313e-15,70},{0,70},{0,100}},color = {95,95,95}));
connect(frontBogieArmVis.frame_a,frame_a) annotation(Line(points = {{40,80},{0,80},{0,100}},color = {95,95,95}));
    connect(frontSteerActuator.flange_a,frontSteerJoint.axis) annotation(Line(points = {{108,6},{108,2},{96,2},{96,5.000000000000002},{90,5.000000000000002}},color = {0,0,0}));
    connect(frontSteerActuator.mount,frontSteerJoint.mount) annotation(Line(points = {{108,16},{108,22},{96,22},{96,15.000000000000004},{90,15.000000000000004}},color = {0,0,0}));
    connect(rearSteerJoint.mount,rearSteerActuator.mount) annotation(Line(points = {{-70,-4.999999999999998},{-60,-4.999999999999998},{-60,-6}},color = {0,0,0}));
    connect(rearSteerActuator.flange_a,rearSteerJoint.axis) annotation(Line(points = {{-60,-16},{-60,-20},{-64,-20},{-64,-14.999999999999998},{-70,-14.999999999999998}},color = {0,0,0}));
    connect(steer_front,frontSteerActuator.u) annotation(Line(points = {{220,60},{170,60},{170,6},{120,6}},color = {0,0,127}));
    connect(steer_rear,rearSteerActuator.u) annotation(Line(points = {{220,-60},{162,-60},{162,-54},{20,-54},{20,-16},{-48,-16}},color = {0,0,127}));
    connect(rearBogieArmVis.frame_a,bogieJoint.frame_a) annotation(Line(points = {{-38,34},{-30,34},{-30,20}},color = {95,95,95}));
    connect(rearBogieArm1.frame_b,rearSteerJoint.frame_a) annotation(Line(points = {{-68,9.999999999999998},{-80,9.999999999999998},{-80,0}},color = {95,95,95}));
    connect(rearBogieArm1.frame_a,bogieJoint.frame_a) annotation(Line(points = {{-48,10.000000000000002},{-36,10.000000000000002},{-36,20},{-30,20}},color = {95,95,95}));
    connect(hub_2.frame_a,rearBogieArm2.frame_b) annotation(Line(points = {{-2.220446049250313e-15,-60},{-2.220446049250313e-15,-54},{4,-54},{4,-12},{-10,-12}},color = {95,95,95}));
    connect(rearBogieArm2.frame_a,bogieJoint.frame_a) annotation(Line(points = {{-30,-12},{-36,-12},{-36,20},{-30,20}},color = {95,95,95}));
    connect(frontBogieArm1.frame_a,fixedTranslation.frame_b) annotation(Line(points = {{20,40},{30,40},{30,50},{2.220446049250313e-15,50}},color = {95,95,95}));
    connect(frontBogieArm1.frame_b,bogieJoint.frame_b) annotation(Line(points = {{0,40},{0,20},{-10,20}},color = {95,95,95}));
    connect(frontBogieArm2.frame_a,fixedTranslation.frame_b) annotation(Line(points = {{40,40},{30,40},{30,50},{2.220446049250313e-15,50}},color = {95,95,95}));
    connect(frontBogieArm2.frame_b,frontSteerJoint.frame_a) annotation(Line(points = {{60,40},{80,40},{80,20}},color = {95,95,95}));
    connect(rearWheelMount.frame_b,hub_3.frame_a) annotation(Line(points = {{-134,-50.66666666666667},{-134,-60.66666666666667}},color = {95,95,95}));
    connect(rearWheelMountVis.frame_a,rearWheelMount.frame_a) annotation(Line(points = {{-56,-40},{-62,-40},{-62,-26},{-134,-26},{-134,-30.66666666666667}},color = {95,95,95}));
    connect(rearWheelMount.frame_a,rearSteerJoint.frame_b) annotation(Line(points = {{-134,-30.66666666666667},{-134,-26},{-80,-26},{-80,-20}},color = {95,95,95}));
    connect(frontWheelMount.frame_b,hub_1.frame_a) annotation(Line(points = {{134,-50},{134,-60}},color = {95,95,95}));
    connect(frontWheelMountVis.frame_a,frontWheelMount.frame_a) annotation(Line(points = {{120,-20},{134,-20},{134,-30}},color = {95,95,95}));
    connect(frontWheelMount.frame_a,frontSteerJoint.frame_b) annotation(Line(points = {{134,-30},{134,-6},{80,-6},{80,0}},color = {95,95,95}));

    annotation(Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-200.0,-100.0},{200.0,100.0}},
        grid={1,1})),Icon(coordinateSystem(preserveAspectRatio = true,extent = {{-200.0,-100.0},{200.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-200,-100},{200,100}}),Bitmap(fileName="modelica://Perseverance/Resources/perseverance_linkage_icon.png",origin={6,-10},extent={{158,66},{-158,-66}},rotation=180),Line(origin={-125,-71},points={{9,29},{-9,-29}},pattern=LinePattern.Dash),Line(origin={129.15619879215956,-70.96341196447611},points={{-4.156198792159557,29.96341196447611},{4.156198792159557,-29.96341196447611}},pattern=LinePattern.Dash),Line(origin={-1.1749395354124128,-72.05126699243067},points={{-1.00707208737697,27.98242314718655},{1.00707208737697,-27.98242314718655}},pattern=LinePattern.Dash),Line(origin={16.428409867046373,64.07391198178283},points={{-16.72653126064689,33.98223892942829},{16.72653126064689,-33.982238929428306}},pattern=LinePattern.Dash)}));
end Linkage;
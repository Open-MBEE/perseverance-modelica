within Workspace.Perseverance.Suspensions;
model DifferentialLinkage
    .Modelon.Mechanics.MultiBody.Joints.Advanced.ActuatedRevolute actuatedRevolute (stateSelect = StateSelect.always)annotation(Placement(transformation(extent = {{-60.0,-10.0},{-40.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {-100.0,0.0},rotation = -180.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b2 annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {40.0,100.0},rotation = -90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Mechanisms.RLSLU rLSLU(r0J2 = {0,-0.1,0},r0J1 = {0,0.1,0},r0J3 = r0L2 - r0J2,r0J4 = r0D2 - r0J2,visualize = false) annotation(Placement(transformation(extent = {{-42.0,60.0},{-22.0,40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Mechanisms.RLSLU rLSLU2 (r0J3 = r0L1 - r0J1,r0J4 = r0D1 - r0J1,r0J1 = {0,0.1,0},r0J2 = {0,-0.1,0},visualize = false)annotation(Placement(transformation(extent = {{-40.0,-60.0},{-20.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b1 annotation(Placement(transformation(extent = {{-16.0,-16.0},{16.0,16.0}},origin = {40.0,-100.0},rotation = -90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link arm2 (r0B = r0D2 - r0C,visualize = false)annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},origin = {-10.0,20.0},rotation = 90.0)));
    .VehicleDynamics.Vehicles.Chassis.Suspensions.Linkages.Links.Link arm1 (r0B = r0D1 - r0C,visualize = false)annotation(Placement(transformation(extent = {{-10.0,10.0},{10.0,-10.0}},origin = {-10.0,-20.0},rotation = -90.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation (r = r0C,visualize = false)annotation(Placement(transformation(extent = {{-90,-10},{-70,10}},origin = {0,0},rotation = 0)));
    
    parameter .Modelica.SIunits.Position r0C[3]  = {-0.142,0,1.1552} "Position of diff revolute joint relative vehicleFrame";
    parameter .Modelica.SIunits.Position r0D1[3]  = {-0.142,0.63799,1.1552} "Position of left outer diff joint relative vehicleFrame";
    parameter .Modelica.SIunits.Position r0D2[3]  = {-0.142,-0.63799,1.1552} "Position of right outer diff joint relative vehicleFrame";
    parameter .Modelica.SIunits.Position r0L1[3]  = {0.214,0.64069,1.1678} "Position of left top lever joint relative vehicleFrame";
    parameter .Modelica.SIunits.Position r0L2[3]  = {0.214,-0.64069,1.1678} "Position of right top lever joint relative vehicleFrame";    
    parameter .Modelica.SIunits.Position r0J1[3]  = {0.214,0.65699,0.85684} "Position of left bogie revolute joint relative vehicleFrame";
    parameter .Modelica.SIunits.Position r0J2[3]  = {0.214,-0.65699,0.85684} "Position of right bogie revolute joint relative vehicleFrame";
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation2(r = r0J2,visualize = false) annotation(Placement(transformation(extent = {{-80.0,40.0},{-60.0,60.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation1(r = r0J1,visualize = false) annotation(Placement(transformation(extent = {{-80.0,-60.0},{-60.0,-40.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation3(visualize = false,r = r0J1) annotation(Placement(transformation(extent = {{0.0,-90.0},{-20.0,-70.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelon.Mechanics.MultiBody.Parts.FixedTranslation fixedTranslation4(r = r0J2,visualize = false) annotation(Placement(transformation(extent = {{0.0,70.0},{-20.0,90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape diffArmVis(extra = 1,r_shape = -r0C,height = 1,width = 1,length = 1,shapeType = "modelica://Perseverance/Resources/Perseverance_diff_arm.glb",lengthDirection = {0,1,0},widthDirection = {-1,0,0}) annotation(Placement(transformation(extent = {{0.0,-10.0},{20.0,10.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape rightTopBogieJointVis(extra = 1,height = 1,width = 1,length = -1,shapeType = "modelica://Perseverance/Resources/Perseverance_top_bogie_joint.glb",lengthDirection = {0,1,0},widthDirection = {-1,0,0}) annotation(Placement(transformation(extent = {{60.0,70.0},{80.0,90.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape leftTopBogieJointVis(widthDirection = {-1,0,0},lengthDirection = {0,1,0},shapeType = "modelica://Perseverance/Resources/Perseverance_top_bogie_joint.glb",length = 1,width = 1,height = 1,extra = 1) annotation(Placement(transformation(extent = {{60.0,-90.0},{80.0,-70.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape rightDiffLinkVis(widthDirection = {-1,0,0},lengthDirection = {0,1,0},shapeType = "modelica://Perseverance/Resources/Perseverance_diff_link.glb",length = -1,width = 1,height = 1,extra = 1,r_shape = -r0D2) annotation(Placement(transformation(extent = {{0.0,52.0},{20.0,72.0}},origin = {0.0,0.0},rotation = 0.0)));
    .Modelica.Mechanics.MultiBody.Visualizers.FixedShape leftDiffLinkVis(extra = 1,height = 1,width = 1,length = 1,shapeType = "modelica://Perseverance/Resources/Perseverance_diff_link.glb",lengthDirection = {0,1,0},widthDirection = {-1,0,0},r_shape = -r0D1) annotation(Placement(transformation(extent = {{0.0,-72.0},{20.0,-52.0}},origin = {0.0,0.0},rotation = 0.0)));
    
equation
    connect(fixedTranslation.frame_a,frame_a) annotation(Line(points = {{-90,0},{-100,0}},color = {95,95,95}));
    connect(fixedTranslation.frame_b,actuatedRevolute.frame_a) annotation(Line(points = {{-70,0},{-60,0}},color = {95,95,95}));    connect(arm1.frame_a,actuatedRevolute.frame_b) annotation(Line(points = {{-10.000000000000002,-10},{-10.000000000000002,0},{-40,0}},color = {95,95,95}));
    connect(arm1.frame_b,rLSLU2.frame_b) annotation(Line(points = {{-9.999999999999998,-30},{-9.999999999999998,-50},{-20,-50}},color = {95,95,95}));
    connect(arm2.frame_a,actuatedRevolute.frame_b) annotation(Line(points = {{-10.000000000000002,10},{-10.000000000000002,0},{-40,0}},color = {95,95,95}));
    connect(arm2.frame_b,rLSLU.frame_b) annotation(Line(points = {{-9.999999999999998,30},{-9.999999999999998,50},{-22,50}},color = {95,95,95}));
    connect(fixedTranslation1.frame_b,rLSLU2.frame_a) annotation(Line(points = {{-60,-50},{-40,-50}},color = {95,95,95}));
    connect(fixedTranslation2.frame_b,rLSLU.frame_a) annotation(Line(points = {{-60,50},{-42,50}},color = {95,95,95}));
    connect(fixedTranslation1.frame_a,frame_a) annotation(Line(points = {{-80,-50},{-94,-50},{-94,0},{-100,0}},color = {95,95,95}));
    connect(fixedTranslation2.frame_a,frame_a) annotation(Line(points = {{-80,50},{-94,50},{-94,0},{-100,0}},color = {95,95,95}));
    connect(fixedTranslation4.frame_a,frame_b2) annotation(Line(points = {{0,80},{40,80},{40,100}},color = {95,95,95}));
    connect(fixedTranslation4.frame_b,rLSLU.frame_c) annotation(Line(points = {{-20,80},{-40,80},{-40,60}},color = {95,95,95}));
    connect(fixedTranslation3.frame_a,frame_b1) annotation(Line(points = {{0,-80},{40,-80},{40,-100}},color = {95,95,95}));
    connect(fixedTranslation3.frame_b,rLSLU2.frame_c) annotation(Line(points = {{-20,-80},{-38,-80},{-38,-60}},color = {95,95,95}));    connect(diffArmVis.frame_a,actuatedRevolute.frame_b) annotation(Line(points = {{0,0},{-40,0}},color = {95,95,95}));
    connect(leftTopBogieJointVis.frame_a,fixedTranslation3.frame_a) annotation(Line(points = {{60,-80},{0,-80}},color = {95,95,95}));
    connect(rightTopBogieJointVis.frame_a,fixedTranslation4.frame_a) annotation(Line(points = {{60,80},{0,80}},color = {95,95,95}));
    connect(leftDiffLinkVis.frame_a,rLSLU2.frame_d) annotation(Line(points = {{0,-62},{-22,-62},{-22,-60}},color = {95,95,95}));
    connect(rightDiffLinkVis.frame_a,rLSLU.frame_d) annotation(Line(points = {{0,62},{-24,62},{-24,60}},color = {95,95,95}));


    annotation(Icon(coordinateSystem(preserveAspectRatio = false,extent = {{-100.0,-100.0},{100.0,100.0}}),graphics = {Rectangle(fillColor={255,255,255},fillPattern=FillPattern.Solid,extent={{-100.0,-100.0},{100.0,100.0}}),Text(lineColor={0,0,255},extent={{-150,150},{150,110}},textString="%name"),Bitmap(fileName="modelica://Perseverance/Resources/perseverance_diff_icon.png",origin={4,-2},extent={{-86,-88},{86,88}}),Line(origin={32,72},points={{-10,-26},{10,26}},pattern=LinePattern.Dash),Line(origin={33.32031250032924,-82.666666666657},points={{7.32031250032923,-16.666666666656994},{-7.320312500329237,16.666666666656994}},pattern=LinePattern.Dash)}));
end DifferentialLinkage;
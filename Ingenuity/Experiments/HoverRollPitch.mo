within Ingenuity.Experiments;
model HoverRollPitch
    extends .Ingenuity.Experiments.Hover(helicopter(controller(enable_angles_input = true)),redeclare replaceable .Modelica.Blocks.Sources.Trapezoid roll_ref(rising = 2,width = 5,falling = 2,period = 10,nperiod = 1,startTime = 6,amplitude = 0.5),redeclare replaceable .Modelica.Blocks.Sources.Sine pitch_ref(amplitude = 0.1,f = 0.5,startTime = 7),z_ref(duration = 5));
    annotation(experiment(StartTime = 0,StopTime = 30,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end HoverRollPitch;

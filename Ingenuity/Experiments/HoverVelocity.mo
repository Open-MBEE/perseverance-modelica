within Ingenuity.Experiments;
model HoverVelocity
    extends .Ingenuity.Experiments.Hover(redeclare replaceable .Modelica.Blocks.Sources.Trapezoid vx_ref(amplitude = 1,rising = 3,width = 10,falling = 3,period = 16,nperiod = 1,startTime = 6),redeclare replaceable .Modelica.Blocks.Sources.Trapezoid z_ref(amplitude = 3,rising = 5,width = 25,falling = 5,period = 35,nperiod = 1,offset = 0.1935),redeclare replaceable .Modelica.Blocks.Sources.Trapezoid vy_ref(amplitude = -0.2,rising = 3,width = 10,falling = 5,period = 18,nperiod = 1,startTime = 7),ground(x_min = -25,x_max = 25,y_min = -25,y_max = 25),redeclare replaceable .Modelica.Blocks.Sources.Ramp y_ref(height = 0,duration = 0));
    annotation(experiment(StartTime = 0,StopTime = 30,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end HoverVelocity;

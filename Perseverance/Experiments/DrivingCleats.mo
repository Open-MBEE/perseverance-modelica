within Perseverance.Experiments;
model DrivingCleats
    extends .Perseverance.Experiments.DrivingFlat(redeclare replaceable .Perseverance.Cleats ground(h = 0.4),redeclare replaceable .Modelica.Blocks.Sources.Ramp speedSource(height = 0.5,duration = 1,startTime = 2));
    annotation(experiment(StartTime = 0,StopTime = 50,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end DrivingCleats;

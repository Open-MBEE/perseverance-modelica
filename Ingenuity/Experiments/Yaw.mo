within Ingenuity.Experiments;
model Yaw
    extends .Ingenuity.Experiments.ConstantThrust(gain(k = 0.9),helicopter(h_start = 5),ramp(height = 15));
    annotation(experiment(StartTime = 0,StopTime = 10,Interval = 0,__Dymola_Algorithm = "",Tolerance = 1e-6));
end Yaw;

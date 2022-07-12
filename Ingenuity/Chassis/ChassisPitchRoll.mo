within Ingenuity.Chassis;
model ChassisPitchRoll
    extends .Ingenuity.Chassis.Chassis(
    redeclare replaceable .Ingenuity.Chassis.Propellers.Rotational3DPitchRoll.Propeller_02 propeller_2,redeclare replaceable .Ingenuity.Chassis.Propellers.Rotational3DPitchRoll.Propeller_01 propeller_1);
    .Modelica.Blocks.Interfaces.RealInput pitchMoment "Connector of actuator input signal" annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},rotation = -90.0,origin = {-30.0,110.0})));
    .Modelica.Blocks.Interfaces.RealInput rollMoment "Connector of actuator input signal" annotation(Placement(transformation(extent = {{-10.0,-10.0},{10.0,10.0}},rotation = -90.0,origin = {34.0,110.0})));
equation
    connect(propeller_2.pitchMoment,pitchMoment) annotation(Line(points = {{22.20799290961708,64.03781689265766},{28.20799290961708,64.03781689265766},{28.20799290961708,90},{-30,90},{-30,110}},color = {0,0,127}));
    connect(propeller_2.rollMoment,rollMoment) annotation(Line(points = {{22.20799290961708,55.962183107342355},{34,55.962183107342355},{34,110}},color = {0,0,127}));
    connect(propeller_1.rollMoment,rollMoment) annotation(Line(points = {{21.604271951484062,-56.07195055427563},{34,-56.07195055427563},{34,110}},color = {0,0,127}));
    connect(propeller_1.pitchMoment,pitchMoment) annotation(Line(points = {{21.604271951484062,-63.92804944572438},{30,-63.92804944572438},{30,90},{-30,90},{-30,110}},color = {0,0,127}));
end ChassisPitchRoll;

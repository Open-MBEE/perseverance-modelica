within Ingenuity.Chassis.Propellers.Rotational3DPitchRoll;
model Propeller_02
    extends .Ingenuity.Chassis.Propellers.Rotational3DPitchRoll.Propeller_01(        
        fixedTranslation(r = {0,0,0.32424}),
        propellerBody(
            shapeType = "modelica://Ingenuity/Resources/rotors_02.glb"),redeclare replaceable .Ingenuity.Chassis.Propellers.ThrustForce.LinearPitchRoll thrustForce(gain(k = -1 / 90)));
end Propeller_02;

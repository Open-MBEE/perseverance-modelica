within Chassis.Chassis.Propellers.Rotational3D;
model Propeller_02
    extends .Ingenuity.Chassis.Propellers.Rotational3D.Propeller_01(        
        fixedTranslation(r = {0,0,0.32424}),
        propellerBody(
            shapeType = "modelica://Ingenuity/Resources/rotors_02.glb"),thrustForce(gain(k = -1)));
end Propeller_02;

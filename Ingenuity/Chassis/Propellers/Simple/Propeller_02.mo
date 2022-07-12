within Chassis.Chassis.Propellers.Simple;
model Propeller_02
    extends .Ingenuity.Chassis.Propellers.Simple.Propeller_01(
        fixedTranslation(r = {0,0,0.32424}),
        propellerBody(
            shapeType = "modelica://Ingenuity/Resources/rotors_02.glb"),const(k = -10));
end Propeller_02;

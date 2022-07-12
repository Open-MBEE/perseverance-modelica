within Ingenuity.Chassis.Bodies.Visualizers;
model Ingenuity
    extends .VehicleDynamics.Vehicles.Chassis.Bodies.Visualizers.Shape(
        shapeType = "modelica://Ingenuity/Resources/Ingenuity_body.glb",lengthDirection = {0,1,0},widthDirection = {0,0,1});
end Ingenuity;

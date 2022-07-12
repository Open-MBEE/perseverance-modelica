within Ingenuity.Experiments.Templates;

partial model Minimal "Minimal template"
  extends .Modelon.Icons.Experiment;
  extends .VehicleDynamics.Vehicles.Chassis.Experiments.Templates.AnimationViews;
  inner replaceable .VehicleDynamics.World world(g = 3.711)
    annotation (choicesAllMatching,
      Placement(transformation(extent={{-100,-100},{-80,-80}})));
  inner replaceable .VehicleDynamics.Grounds.Interfaces.Base ground
    annotation (choicesAllMatching,
      Placement(transformation(extent={{60,-100},{100,-80}})));
  inner replaceable .VehicleDynamics.Atmospheres.Interfaces.Base atmosphere
    annotation (choicesAllMatching,
      Placement(transformation(extent={{60,80},{100,100}})));
  replaceable .Ingenuity.Templates.Helicopter helicopter constrainedby .Ingenuity.Templates.Helicopter annotation(Placement(transformation(extent = {{-20.049998568902787,-20.049998568902787},{20.049998568902787,20.049998568902787}},origin = {0.0,0.0},rotation = 0.0)));
  annotation (Diagram(graphics), Documentation(info="<html>
This is a template for testing any standard car chassis free rolling with no input predefined inputs. The chassis, ground and atmosphere must be defined by the user before the model can be simulated.  
</html>", revisions="<html>
 Copyright &copy; 2004-2021, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.
</html>"));
end Minimal;

within Perseverance.Electrical;

model BatteryPack "Battery pack: Ideal capacity, no losses, fixed limits"

  extends .Electrification.Batteries.Templates.BatteryPackLumped(
    redeclare replaceable .Electrification.Batteries.Core.Examples.Infinite core,
    redeclare replaceable .Electrification.Batteries.Electrical.Pack.Ideal electrical,
    redeclare replaceable .Electrification.Batteries.Thermal.Examples.Lumped thermal,
    redeclare replaceable .Electrification.Batteries.Control.None controller,
    fixed_temperature=true,
    ns=100,
    np=2);

annotation (Documentation(revisions="<html>Copyright &copy; 2004-2021, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>", info="<html>
<p>This is an ideal battery pack with constant voltage, which can be charged and discharged, without any heat losses. A controller with fixed limits is included. The fidelity of the model cannot be reconfigured, but the number of cells in series and parallel can be changed.</p>
</html>"));
end BatteryPack;

within Ingenuity.Electrical;

model Machine "Electric machine with MutliBody3D support"
  extends .Electrification.Machines.Templates.Machine3D(        
    redeclare replaceable .Electrification.Machines.Electrical.Capacitor electrical,
    redeclare replaceable .Electrification.Machines.Mechanical.RotorInertia mechanical(
        J_rotor = 0.001),
    redeclare replaceable .Electrification.Machines.Thermal.MachineConverterLumped thermal,
    redeclare replaceable .Electrification.Machines.Core.Examples.Ideal core(
        limits(
            enable_events = false,
            enable_P_max = false)),
    redeclare replaceable .Electrification.Machines.Control.MultiMode controller(
        mode = .Electrification.Utilities.Types.MachineControlMode.Speed,
        speedControlTimeConstant = 0.1,
        speedControlGain = 15,
        external_speed = true,speedControlInitSteady = true),
    fixed_temperature = true,
    multibody3D(
        visualize_shape = false,
        m = 0.001),
    enable_mount = false,visualize = false);
annotation (Documentation(revisions="<html>Copyright &copy; 2004-2021, MODELON AB <br /> The use of this software component is regulated by the licensing conditions for Modelon Libraries. <br />This copyright notice must, unaltered, accompany all components that are derived from, copied from, <br />or by other means have their origin from any Modelon Library.</html>", info="<html>
<p>This is an example of a general torque controlled electric machine, with support for use in a <a href=\"modelica://Electrification.Machines.MultiBody3D\">MultiBody3D</a> system model.</p>
<p>This is a &quot;generalized machine&quot;, which often represents an AC machine coupled with an inverter. Refer to the package <a href=\"modelica://Electrification.Machines.Information\">Information</a> for more details about this concept.</p>
<h4>Torque control</h4>
<p>The <a href=\"modelica://Electrification.Machines.Control.TorqueControl\">torque controller</a> that is used, (by default) listens to an external signal. This reference signal (tau_ref) is typically provided via the system control bus using the <a href=\"modelica://Electrification.Machines.Control.Signals.tau_ref\">tau_ref</a> signal adapter, as demonstrated in the <a href=\"modelica://Electrification.Machines.Experiments.TorqueControlThermal\">TorqueControlThermal</a> example.</p>
<h4>Core machine model</h4>
<p>The <a href=\"modelica://Electrification.Machines.Core.Examples.Lossy\">core model</a> has absolute <a href=\"modelica://Electrification.Machines.Core.Losses\">losses</a> defined for machine and converter, and has no torque dynamics.</p>
<h4>Thermal model</h4>
<p>The thermal dynamics are modeled with one <a href=\"modelica://Electrification.Machines.Thermal.MachineConverterLumped\">lumped mass</a> each for the converer and machine.</p>
<h4>Mechanical model</h4>
<p>The mechanical domain model defines the <a href=\"modelica://Electrification.Machines.Mechanical.RotorInertia\">rotor inertia</a>.</p>
<h4>Initialization</h4>
<p>The speed and angle of the machine (rotor) can be initialized with the parameters <span style=\"font-family: Courier New;\">w_start</span> and <span style=\"font-family: Courier New;\">phi_start</span>, when the parameters <span style=\"font-family: Courier New;\">initialize_speed</span> and <span style=\"font-family: Courier New;\">initialize_angle</span> are set to <span style=\"font-family: Courier New;\">true</span>.</p>
</html>"));
end Machine;

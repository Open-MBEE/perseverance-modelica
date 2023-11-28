Ingenuity
=========
This is a model of NASA's Ingenuity helicopter.

![Hover](Resources/images/hover.gif)

Prerequisites
-------------
The model package is based on **[Vehicle Dynamics Library](https://modelon.com/library/vehicle-dynamics-library/)** and **[Electrification Library](https://modelon.com/library/electrification-library/)** from Modelon. All prerequisites are included in an installation of **Modelon Impact Pro**. The models can also be used in Dymola with separate installations of the required libraries, though the visualizers (glb files) are not supported.

Experiments
-----------
The [Ingenuity.Experiments](./Experiments) directory contains six example experiments that can be simulated out of the box:

 - **[ConstantThrust](./Experiments/ConstantThrust.mo)** - Constant thrust achieved by using Linear thrust force model
 - **[Yaw](./Experiments/Yaw.mo)** - Yaw motion achieved using a torque differential between the two rotors
 - **[Hover](./Experiments/Hover.mo)** - Hovering motion at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **[HoverRollPitch](./Experiments/HoverRollPitch.mo)** - Roll and pitch motion at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **[HoverVelocity](./Experiments/HoverVelocity.mo)** - Lateral and longitudinal velocity inputs at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **[HoverPosition](./Experiments/HoverPosition.mo)** - Lateral, longitudinal positon, altitude controller using AltitudePositionAnglesController and LinearPitchRoll thrust force model

Acknowledgements
----------------
The visualization elements are extracted from https://mars.nasa.gov/resources/25043/mars-ingenuity-helicopter-3d-model/. This is also where the main geometrical parameters are gathered.

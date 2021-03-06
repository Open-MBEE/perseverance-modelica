Perseverance
=====

This is a model of the Perseverance rover.

![driving over a cleat](Perseverance/Resources/images/cleat.gif)

Prerequisites
-------
The model package is based on **Vehicle Dynamics Library** and **Electrification Library** from Modelon. All prerequisites are included in an installation of **Modelon Impact Pro**. The models can also be used in Dymola with separate installations of the required libraries, though the visualizers (glb files) are not supported.

Quick start
--------

In Perseverance.Experiments there are four example experiments that can be simulated out of the box:
 - **FlatPad** - Standing still on flat ground
 - **DrivingFlat** - Driving forward on flat ground at a constant speed
 - **DrivingCleats** - Driving over a rectangular cleat at a constant speed
 - **Spin** - Spin in place by driving wheels on each side in opposite directions and adding the appropriate steering angles to the corner wheels

Acknowledgements
-----------
The visualization elements are extracted from https://github.com/nasa/NASA-3D-Resources/tree/master/3D%20Models/perseverance-GLB. This is also where the main geometrical parameters are gathered.

Ingenuity
=====

This is a model of the Ingenuity helicopter.

![Hover](Ingenuity/Resources/images/hover.gif)

Prerequisites
-------
The model package is based on **Vehicle Dynamics Library** and **Electrification Library** from Modelon. All prerequisites are included in an installation of **Modelon Impact Pro**. The models can also be used in Dymola with separate installations of the required libraries, though the visualizers (glb files) are not supported.

Quick start
--------

In Ingenuity.Experiments there are six example experiments that can be simulated out of the box:
 - **ConstantThrust** - Constant thrust achieved by using Linear thrust force model
 - **Yaw** - Yaw motion achieved using a torque differential between the two rotors
 - **Hover** - Hovering motion at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **HoverRollPitch** - Roll and pitch motion at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **HoverVelocity** - Lateral and longitudinal velocity inputs at a constant altitude using AltitudeVelocityAnglesController and LinearPitchRoll thrust force model
 - **HoverPosition** - Lateral, longitudinal positon, altitude controller using AltitudePositionAnglesController and LinearPitchRoll thrust force model

Acknowledgements
-----------
The visualization elements are extracted from https://mars.nasa.gov/resources/25043/mars-ingenuity-helicopter-3d-model/. This is also where the main geometrical parameters are gathered.

ExampleModels
=====

This package contains experiments showing how both the Perseverance and Ingenuity models can be simulated together.

![Hover](ExampleModels/Resources/images/roverAndHelicopter.gif)
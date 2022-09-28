Python
=====

This folder contains Python artifacts related to the Perseverance and Ingenuity Modelica models.

Export_Blender_vertices_VDL_ground.py
=====

Prerequisites
-------
scipy needs to be installed in the Blender Python environment.

Quick start
--------

This is a Blender script used to generate **Vehicle Dynamics Library** (VDL) ground data from a STL CAD file. It is done by the following steps:

 - Import STL 3D file in Blender (e.g. https://github.com/nasa/NASA-3D-Resources/tree/master/3D%20Models/Spirit%20Landing%20Site)
 - Delete all vertices apart from the desired region which will be used to generate the ground
 - Select the surface object
 - Run the Export_Blender_vertices_VDL_ground.py script in Blender
 - A 2D table will be saved in the current Blender working directory as the file Unevenness_table_1.txt
 - in a VDL experiment in Impact redeclare the ground to VehicleDynamics.Grounds.Uneveness.Uneven
 - Copy the table from Unevenness_table_1.txt and paste it in ground.unevenness_table in Impact (Make sure to remove \;\ at the end and add \[\, \]\ at the beginning and end of the table respectively) 
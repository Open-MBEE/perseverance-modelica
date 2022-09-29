# Blender script to generate VDL unevenness table from a 3D model

import bpy
import numpy as np
import scipy
 
vertices = [(vert.co.x, vert.co.y, vert.co.z) for vert in bpy.context.object.data.vertices]
 
vertices_array=np.array(vertices)
x=vertices_array[:,0]
y=vertices_array[:,1]
z=vertices_array[:,2]

xlin = np.linspace(min(x), max(x), 100)
ylin = np.linspace(min(y), max(y), 100)

X,Y = np.meshgrid(xlin, ylin);

points=(x,y)

Z = np.array(scipy.interpolate.griddata(points,z,(X,Y)))

Unevenness_table_x=np.append(0,xlin)
Unevenness_table_y=ylin.reshape(1,-1)
Unevenness_table_Z=Z.T
Unevenness_table_y_Z=np.append(Unevenness_table_y,Unevenness_table_Z,axis=0)
Unevenness_table=np.insert(Unevenness_table_y_Z,0,Unevenness_table_x,axis=1)

#file_path = 'Unevenness_table_1.mat'
#scipy.io.savemat(file_path, {'data': Unevenness_table})

np.savetxt('Unevenness_table_1.txt',Unevenness_table, delimiter=',',newline=';\n')
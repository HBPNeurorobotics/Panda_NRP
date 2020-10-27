# Installation PANDA Simulation for the NRP

## Script(Automatic) installation.
`chmod +x install.sh ` <br>
`./install.sh ` <br>

## Manual installation.
Please install following ros-melodic packages with their version number.<br>
`sudo apt-get install ros-melodic-franka-ros=0.6.0-1bionic.20200930.133157`<br>
`sudo apt-get install ros-melodic-libfranka=0.8.0-1bionic.20200801.024519` <br>


- Copy the folder from `Panda_NRP/ROS_Packages/Models/panda` to inside the `$HBP/Models` <br>
- Copy all the folders from `Panda_NRP/ROS_Packages/src` to inside the `$HBP/GazeboRosPackages/src/` <br>
- Copy the folder from `Panda_NRP/nrpStorage/panda_experiment` to inside the `/.opt/nrpStorage` <br>

- Then, open terminal and go the the GazeboRosPackages folder <br>
`cd $HBP/GazeboRosPackages`<br>
then install all dependencies for panda_simulation package by typing the following code <br>
`rosdep install panda_simulation` <br>
- To create symlinks both in ~/.gazebo/models (for Gazebo) and ${HBP}/gzweb/http/client/assets (for the web). Please run the following code in the terminal.<br>
`$HBP/Models/create-symlinks.sh`

Finally, you can compile the workspace by typing <br>
`catkin_make`<br>


### you can import the model by clicking "Scan Storage" under "My Experiment" section : <br>

<img src="media/import_model.gif" height="300" width="600">

### you can start the model by clicking launch button. <br>
[![Panda Robot NRP](https://i9.ytimg.com/vi/e2jqCZQ20po/mq3.jpg?sqp=CIyd4fwF&rs=AOn4CLB5ieSC1qGFhOyVtH652_nbQYTP_w)](https://youtu.be/e2jqCZQ20po)



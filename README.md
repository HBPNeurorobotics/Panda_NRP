# Installation PANDA Simulation for NRP

## First way for installation.
`chmod +x install.sh ` <br>
`./install.sh ` <br>

## Second way for installation.

- Copy the folder from `Panda_NRP/ROS_Packages/Models/panda` to inside the `$HBP/Models` <br>
- Copy all the folders from `Panda_NRP/ROS_Packages/src` to inside the `$HBP/GazeboRosPackages/src/` <br>
- Copy the folder from `Panda_NRP/nrpStorage/panda_experiment` to inside the `/.opt/nrpStorage` <br>

    Then, open terminal and go the the GazeboRosPackages folder <br>
    `cd $HBP/GazeboRosPackages`<br>
    then write <br>
    `catkin_make`<br>


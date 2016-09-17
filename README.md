# MLE+
MLE+ is an open-source Matlab/Simulink toolbox for co-simulation with the whole-building energy simulator EnergyPlus. It is designed for engineers and researchers who are familiar with Matlab and Simulink and want to use these software tools in building energy simulation.

<img align="middle" src="./doc/pics/overview.png" height="250">

**NOTE:** MLE+ has been tested on Matlab 2015a running on Mac and Windows. 

# Installation
1. Download MLE+
You can download the latest version from [here!](https://github.com/willybernal/mlep/archive/master.zip)) or clone this repository.

2. Extract files
Extract all files to a directory in your computer, for example **C:\software\mlep**.

3. Matlab
Open Matlab and change the current directory to the **C:\software\mlep\MLE+** folder that has just been created.

4. Run installMlep.m
In Matlab, run the installation script installMlep.m located in **C:\software\mlep\MLE+\installMlep.m** and follow the instructions included in the file. This will add the necessary paths to the Matlab environment automatically.

  * NOTE: Read further installation instructions on **installMlep.m**

5. Test installation
Go to **Examples/LegacyExample** and open **simple.slx**. Change the settings according to your E+ installation. 


# Simulink Block Configuration
Windows Configuration:

<img align="middle" src="./MLE+/figs/mlep_setting_windows.png" height="400">

Mac Configuration:

<img align="middle" src="./MLE+/figs/mlep_settings_mac.png" height="450">

# Error
<img align="middle" src="./MLE+/figs/AcceptTimeOut_Error.png" height="200">
* If you got the previous error message, your MLE+ settings (in Simulink block) ARE MOST LIKELY NOT correctly set.
* Double check your settings according to the section on Simulink Block Configuration.

Other Types of eror might be trying to run an IDF file version with the wrong E+ executable version. 
* Get further insight to the erorr by checking **mlep.log** & **eplus_name_file.err** 

<img align="middle" src="./MLE+/figs/Debug_Files.png" height="400">


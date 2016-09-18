# MLE+
MLE+ is an open-source Matlab/Simulink toolbox for co-simulation with the whole-building energy simulator EnergyPlus. It is designed for engineers and researchers who are familiar with Matlab and Simulink and want to use these software tools in building energy simulation.

<img align="middle" src="./doc/pics/overview.png" height="250">

MLE+ capabilities include the following:

1. Co-simulation with EnergyPlus.
2. Co-simulation with models in Simulink.
3. Allow advanced controls in Matlab to operate EnergyPlus buildings.
4. Allow multiple simulation environments to cooperate.
5. Adherance to the Campus Modeling tool.

**NOTE:** Other two versons of MLE+ are available:

1. [Legacy Version](http://txn.name/mleplus/mlep_manual.html): This is the original distribution developed by Nghiem Truong.
2. [Graphical user interface](http://www.seas.upenn.edu/~mbehl/mleplus.html): This is graphical user interface for MLE+. This requires the graphics package from Matlab to run. 

# Download & Installation
1. Download MLE+.
  * You can download the latest version from [here!](https://github.com/willybernal/mlep/archive/master.zip) or clone this repository.

2. Extract files
  * Extract all files to a directory in your computer, for example **C:\software\mlep**.

3. Requirements. You need to install the following software before running MLE+:

  1. [EnergyPlus](https://energyplus.net/). You will need **the path to the installation directory** when installing mlep.
  2. [Java](https://www.java.com/en/download/manual.jsp). You will need **the path to the installation directory** when installing mlep.
  3. [Matlab](http://www.mathworks.com/products/matlab/).

  **Note: The examples on the current mlep distribution will only work for a specific version of EnergyPlus. However, if you create your own examples, you should be able to run all supported EnergyPlus versions.**  

4. Matlab
  * Open Matlab and change the current directory to the **C:\software\mlep\MLE+** folder that has just been created.

5. Run installMlep.m
  * In Matlab, open the installation script **installMlep.m** located in **C:\software\mlep\MLE+\installMlep.m** and follow the instructions included in the file.
  * According to the file instructions, add the **EnergyPlus path** (e.g. 'C:\EnergyPlusV8-3-0') and the **Java path** (e.g. 'C:\Program Files\Java\jre1.8.0_51\bin'). After the modifications running the script will add the necessary paths to the Matlab environment.

  **NOTE: Please read further installation instructions on installMlep.m**

6. Test installation
  * In Matlab, go to the **Examples/LegacyExample** folder and open **simple.slx**. You will need to change the settings (double click on the mlep function block) according to your E+ installation. 

# Supported Versions:
The following versions have been tested and should be running without problems.

1. **Windows:**
  * Matlab 2012b, 2013b, 2015a.
  * EnergyPlus 8.1, 8.2, 8.3, 8.4, 8.5.
  
2. **Mac:**
  * Matlab 2012b, 2013b, 2015a.
  * EnergyPlus 8.1, 8.2, 8.3, 8.4, 8.5.

# Examples
1. Legacy example:
2. MPC example:
3. Augmented simulation capabilities:
4. Integrated Campus Modeling examples:

# MLE+ Tutorial
1. You can find more information about setting up the EnergyPlus file.
2. Building Control Test Bed (BCVTB) 
3. Please find the mlep tutorial for this repo [here](./doc/tutorial/tutorial.pdf)

# MLE+ Projects
1. SPL HIL.
2. Integrated Campus Modeling framework.
3. Microgrid testing.

# Awards
1. Best demo presentation.

# Publications
* MLE+ Original.
* Campus Integrated Modeling.
* AWS paper.

# Simulink Block Configuration
Windows Configuration:

<img align="middle" src="./MLE+/figs/mlep_setting_windows.png" height="400">

Mac Configuration:

<img align="middle" src="./MLE+/figs/mlep_settings_mac.png" height="450">

# Troubleshooting
<img align="middle" src="./MLE+/figs/AcceptTimeOut_Error.png" height="200">
* If you got the previous error message, your MLE+ settings (in Simulink block) ARE MOST LIKELY NOT correctly set.
* Double check your settings according to the section on Simulink Block Configuration.

Other Types of eror might be trying to run an IDF file version with the wrong E+ executable version. 
* Get further insight to the erorr by checking **mlep.log** & **eplus_name_file.err** 

<img align="middle" src="./MLE+/figs/Debug_Files.png" height="400">


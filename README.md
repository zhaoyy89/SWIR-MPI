# SWIR-MPI
Scripts for SWIR-MPI
System Requirements:
MATLAB software and WINDOWS operating system.
The code has been tested on WINDOW 7 and WINDOWS 10, MATLAB 2019b and 2020a. 

Installation Guide: 
To install the software, unzip the .zip file in a user designated folder. 
The installation typically takes less than 1 minute on a regular computer.

Instructions for use: 
To run on data, open the file "main.m" in MATLAB, and execute the script (click "Run" in the EDITOR panel or press F5). 
Optical absorption (Mua) and reduced scattering (Musp) maps will be calculated and stored in the "op_fit_maps" variable. The first and second dimensions of the variable represent x-y axes of the image; the third dimension represents wavelengths; and the last dimension corresponds to Mua and Musp. 
The typical run time is a few minutes or shorter on a regular computer. 

Reproduction instructions
The results in the code are highly reproducible. For example, one can switch the "data.mat" file with their own meso-patterned images (measurement of sample and calibration phantom), and get corresponding optical absorption and reduced scattering maps by running the "main.m" script. 





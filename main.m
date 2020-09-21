% this code demonstrates the extraction of optical properties in SWIR-MPI

clear;clc;

% include dependent folders
code_folder_path = './';
addpath(genpath(code_folder_path));

% load measurement data
load('data.mat')

% load known optical properties of calibration phantom
load('calibration_OPs.mat'); 

% measurement spatial frequencies, e.g. 0 and 0.1 mm-1
freqs =[0, 0.10];

% calibrate for camera exposure time
ACph = calib_phantom;
AC = sample;
for ii = 1:size(calib_phantom,3)
    ACph(:,:,ii,:) = calib_phantom(:,:,ii,:) / exposure_calib(ii);
    AC(:,:,ii,:) = sample(:,:,ii,:) / exposure_sample(ii);
end

% use look-up-table method to extract optical properties
cal_reflectance = calibrate(wv,freqs,AC,ACph,CalPh_OP);
op_fit_maps = LUTfitops(cal_reflectance, wv);



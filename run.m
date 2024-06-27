clear all
close all
clc
%%
% Author: Yun Zhao (Monash University, Australia)
% Email: yun.zhao@monash.edu
% -------------------------------------------------------------------------
% Here we provide a showcase to enable reviewers and readers to get
% in touch with NeuroProcImager-Plus.
%
% Showcase: Dynamic cortical stability
%
% This showcase calculates and shows the time-evolving stability of the
% cerebral cortex during an xenon-induced anaesthesia experiment where a
% subject started with wakeful state and slowly lost responsiveness and
% finally recovered from unconsciousness.
%
% To run this Case, one needs to download
% regional_variable_estimates_S1.mat from the Google Drive
% (https://drive.google.com/drive/folders/1i8ZqNcqIbl0AMgG1JY3nuSUMqaBCREqD?usp=sharing).
% The time-evolving neurophysiological variables in each region were 
% estimated using NeuroProcImager by fitting a neural mass model to each 
% MEG source time series. 
% 
% This case further estimates the inter-regional connectivity parameters,
% calculates the Jacobi matrices of the whole-cortex system, and shows the
% time-evolving eigenvalue spectrum and the number of positive
% eigenvalues.
%
% Due to high sampling rate of 150 Hz of the time series, this showcase
% runs overnight.
%
% Run time highly depends on the hardware of the CPU workstation.
% -------------------------------------------------------------------------
%
%% Add source to MATLAB path
addpath(genpath('./Sources'))

%% Run showcase to show dynamic cortical stability
tasks = ["cortical stability"]; 

%% Run
try
    main(tasks)
catch ME
    disp(ME)
end
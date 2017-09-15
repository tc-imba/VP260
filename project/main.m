% Script By Liu Yihao
% Create: 2016-11-21
% Copyright under the MIT Licence

clear all;
% global variables
global format gif_refresh gif_time;
% The output image format (png/eps)
format='png';
% The reresh rate of gif (24-60 Hz)
gif_refresh=24;
% The length of gif in seconds
gif_time=4;

% Function Prototype
% simulate(type,m,n,epsilon,name)
% type is 'A','B','C', according to the manual
% The value m,n should be multiple of 20, between 20-500 (200 is good)
% Get 0.01,0.001,0.0001 epsilon seems no problem
% All of the plots and information can be found in ./[name]

% Here are some examples

% simulate('A',200,200,0.01,'system_A_1');
 simulate('A',200,200,0.001,'system_A_2');
% simulate('A',200,200,0.0001,'system_A_3');
%  
% simulate('B',200,200,0.01,'system_B_1');
% simulate('B',200,200,0.001,'system_B_2');
% simulate('B',200,200,0.0001,'system_B_3');
 
% simulate('C',200,200,0.01,'system_C_1');
% simulate('C',200,200,0.001,'system_C_2');
% simulate('C',200,200,0.0001,'system_C_3');
% 
% simulate('C',200,200,0.1,'system_C_0')


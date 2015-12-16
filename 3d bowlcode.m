
% MATLAB Code 3D Bowling using ADB Tool

% Pre Requisites
%% 1. Enable developer options in your android phone.
%% 2. Install ADB drivers for your device.
%% 3. Check if ADB device interface is recognised by your MATLAB software
%% 4. To check if they are properly installed connect your device and run "ADB DEVICE".
%% 5. Your device ADB hostname must be displayed.
%% 6. Close the command prompt and press play now

% Note 1: If the device is being shown as offline disconnect and reconnect.
clear all % Clear all variables
close all % Close all open figures
clc 	% Clear command window

%% Loop to continue till it continues
while true 

	% % Capturing screenshot and saving it to sdcard of the android phone as bowl1.png
	system('adb shell screencap -p /sdcard/bowl1.png'); 

	% % Pulling image to your working directory
	system('adb pull /sdcard/bowl1.png');

	% % Readingg pulled image from your working directory
	im=imread('bowl1.png');

	% % Displaying the pulled image
	figure(1);

	% % Generating command to be given for swiping
	a=['adb shell input swipe 360 1008 360 550'];
	system(a);

	% % Introducing the time delay of 2 seconds
	pause(2);
end;
% End of the code


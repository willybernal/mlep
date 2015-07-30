% INSTALLMLEP code to install MLE+
%      Run this script before using MLE+.
%
%      Use: installMlep
%
%      In installMlep you need to specify whether you want to use the GUI
%      mode or the Manual mode. Set manualInstall = 0 if you do not want to
%      use the GUI for installation.
%      GUI (manualInstall = 1): A installation screen will pop up according
%      to your operating system (PC or UNIX)
%      MANUAL (manualInstall = 0): You need to specify the E+ and Java
%      directory for Windows machines and only the E+ directory for UNIX
%      systems.
%
%      To save your configurations permanently in Matlab, you need to have
%      admin privileges. If you get the following: "Warning: Unable to save
%      apth to file ..." You either need to run this script everytime you
%      open Matlab or pass a path to the savepath function at the end of
%      the script.
%
%      if ispc
%           % Windows
%           eplusPath = 'C:\EnergyPlusV8-0-0';
%           javaPath = 'C:\Program Files\Java\jre7\bin\';
%      else
%           % Unix
%           eplusPath = '/Applications/EnergyPlus-8-0-0';
%      end

% Last Modified by Willy Bernal - Willy.BernalHeredia@nrel.gov 30-Jul-2015

%% MODIFY
% true = Install Manually
% fase = Install through GUI
manualInstall = true;

% Paths
if ispc
    % Windows
    eplusPath = 'C:\EnergyPlusV8-1-0';
    javaPath = 'C:\Program Files (x86)\Java\jre7\bin';
else
    % Unix
    eplusPath = '/Applications/EnergyPlus-8-3-0';
end

%% DO NOT MODIFY
% Extract MLE+ Main Path
filename = mfilename('fullpath');
[mlepPath, ~, ~] = fileparts(filename);

% Add Path
% addpath(mlepPath);
addpath(fullfile(mlepPath,'core'));
% addpath(fullfile(mlepPath,'gui'));
addpath(fullfile(mlepPath,'install'));
%addpath(fullfile(mlepPath,'settings'));
addpath(fullfile(mlepPath,'version'));
% addpath(fullfile(mlepPath,'mlepHelp'));
addpath(fullfile(mlepPath,'library'));
bcvtbPath = fullfile(mlepPath,'bcvtb');
addpath(bcvtbPath);

% Installation Dialog
if ~manualInstall %========================================================
    if ispc
        % WIN
        installationWin;
    else
        % UNIX
        installationUnix;
    end
else %=====================================================================
    % Manual Install
    if ispc
        if ~exist([eplusPath filesep 'RunEPlus_orig.bat'], 'file') == 2
            % Rename RunEPlus.bat to RunEPlus_orig.bat
            [status1,message,messageid] = ...
                copyfile(fullfile(eplusPath,'RunEPlus.bat'),...
                fullfile(eplusPath,'RunEPlus_orig.bat'),'f');
            
            % Copy RunEPlus.bat
            [status2,message,messageid] = ...
                copyfile(fullfile(mlepPath,'settings','RunEPlus.bat'),...
                fullfile(eplusPath,'RunEPlus.bat'),'f');
            
            % Check Whether Replacing RunEPlus was successfull
            status = status1 && status2;
            if ~status
                disp('ERROR: CHECK E+ PATHS AND JAVA PATHS');
                disp(message);
                disp(messageid);
            else
                disp('MLE+: INSTALLATION COMPLETED!');
            end
        else
            disp('MLE+: INSTALLATION COMPLETED!');
        end
        
    else 
        % Java Path
        javaPath = '';
    end
    
    % Save Settings =======================================================
    mlepSaveSettings(mlepPath, eplusPath, javaPath, bcvtbPath);
    disp('MLEP+: INSTALLATION COMPLETED!');
end

% Save Paths
savepath;



% Timing
EEG = pop_loadset('S02_Sess05.set');
tic;
EEG = pop_runica(EEG, 'icatype','runica', 'extended',1);
toc;
pop_saveset(EEG, 'S02_Sess05_ICA.set');


% EEGLAB history file generated on the 06-Apr-2023
% ------------------------------------------------

EEG.etc.eeglabvers = '2021.1'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_importdata('dataformat','array','nbchan',0,'data','data','setname','S02_Sess05','srate',200,'pnts',0,'xmin',0);
EEG = eeg_checkset( EEG );
EEG=pop_chanedit(EEG, 'lookup','C:\\eeglab_current\\eeglab2021.1\\plugins\\dipfit\\standard_BEM\\elec\\standard_1005.elc','rplurchanloc',1);
EEG = eeg_checkset( EEG );
figure; topoplot([],EEG.chanlocs, 'style', 'blank',  'electrodes', 'labelpoint', 'chaninfo', EEG.chaninfo);
EEG = eeg_checkset( EEG );
EEG = pop_importevent( EEG, 'event','G:\\ں��w�\\Documents\\110U��\\BCIU�\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_importevent( EEG, 'append','no','event','G:\\ں��w�\\Documents\\110U��\\BCIU�\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1,'align',0);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);
EEG = pop_importevent( EEG, 'append','no','event','G:\\ں��w�\\Documents\\110U��\\BCIU�\\train\\event.txt','fields',{'latency','type'},'skipline',1,'timeunit',1,'align',0);
EEG = eeg_checkset( EEG );
pop_eegplot( EEG, 1, 1, 1);   
EEG.etc.eeglabvers = '2023.0'; % this tracks which version of EEGLAB is being used, you may ignore it
EEG = pop_iclabel(EEG, 'default');
pop_selectcomps(EEG, [1:56] );
EEG = pop_subcomp( EEG, [], 0);

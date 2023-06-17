
EEG = pop_loadset('E.set');        % Modify filename
data = EEG.data(20,:,:);           % 20 means the FCz channel
data = squeeze(data);              % discard a dimension
data = transpose(data);            % transpose to trail*sample(100*300)
 
x = linspace(-0.2,1.3,300);
c_y = zeros(1,300);
e_y = zeros(1,300);

correct = 0;
error = 0;

for i = 1:100
    if strcmp(EEG.epoch(1,i).eventtype , 'FeedBack_correct')
        c_y = c_y + data(i,:);
        correct = correct + 1;
    else
        e_y = e_y + data(i,:);
        error = error + 1;
    end
end

c_y = c_y / correct;
e_y = e_y / error;                        %Use this to compute SNR

plot(x,c_y,x,e_y)
legend({'correct','error'},'Location','northeast')
title('Bandpass+IC removal - 2')              % Modify picture name
xlabel('ms') 
ylabel('amplitude') 


% Compute SNR
% x(1,41) ~ 0 ms, compute standard deviation before 0 ms
std_array = e_y(1,1:41);
std_v = std(std_array); 
% compute peak value after 0 ms
p = -1;
for i = 42:300
    if abs(e_y(1,i)) > p
        p = abs(e_y(1,i));
    end
end
SNR = p/std_v;





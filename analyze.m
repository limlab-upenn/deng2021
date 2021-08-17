% function [inM_active] = analyze(~)
function [inM_active,count,time,duration,max_amp_active,time_scaled,net_count,avg_tra_active,time_init,dur_trans] = analyze(~)

clear
% [filename1, pathname1]= uigetfile({'*.mat','Data files(*.mat)'},'Choose');
% load([pathname1 filename1]);
[filename2, pathname2]= uigetfile({'*.mat','Data files(*.mat)'},'Choose');
load([pathname2 filename2]);

M = double(M);
Mm = double(Mm);
M1 = zeros(size(M,1),size(M,2));M2 = M1;sM = M1;
avgsM = zeros(1,size(M,1));maxsM = avgsM;maxM2 = avgsM;

% P = double(P);
% Pm = double(Pm);
% P1 = zeros(size(P,1),size(P,2));P2 = P1;sP = P1;
% avgsP = zeros(1,size(P,1));maxsP = avgsP;maxP2 = avgsP;
% 
% N = double(N);
% Nm = double(Nm);
% N1 = zeros(size(N,1),size(N,2));N2 = N1;sN = N1;
% avgsN = zeros(1,size(N,1));maxsN = avgsN;

time = 1:size(M,1);
duration = size(M,1);

for i = 1:size(M,2)
    M1(:,i) = M(:,i) - Mm(:,i);
    M2(:,i) = M1(:,i) - min(M1(:,i));
    sM(:,i) = smooth(M2(:,i));
    maxsM(i) = max(sM(:,i));
    maxM2(i) = max(M2(:,i));
    avgsM(i)= mean(sM(:,i));
    
%     P1(:,i) = P(:,i) - Pm(:,i);
%     P2(:,i) = P1(:,i) - min(P1(:,i));
%     sP(:,i) = smooth(P2(:,i));
%     maxsP(i) = max(sP(:,i));
%     maxP2(i) = max(P2(:,i));
%     avgsP(i)= mean(sP(:,i));
%     
%     N1(:,i) = N(:,i) - Nm(:,i);
%     N2(:,i) = N1(:,i) - min(N1(:,i));
%     sN(:,i) = smooth(N2(:,i));
%     maxsN(i) = max(sN(:,i));
end

% thresholdM = 500; %for MS2 on III allele
% thresholdM = 1000; %(II)&3UTR
thresholdM = 2000;

for i = 1:size(M,2)
    inM_all(i) = trapz(linspace(0,1,size(M2,1)),M2(:,i));
    inP_all(i) = trapz(linspace(0,1,size(P2,1)),P2(:,i));
end

n = 1;
for i = 1:size(M,2)
    if size(find(sM(:,i)>thresholdM),1)>0.3*size(M,1)
        active(n)=i;
        n = n+1;
    end
end
act = find(maxsM>thresholdM);
n = 1;
for i = 1:size(active,2)
    inM_active(n) = inM_all(active(i));
    inP_active(n) = inP_all(active(i));
    n = n+1;
end
inM_active = inM_active';%inP_active = inP_active';

n = 1;
for i = 1:size(active,2)
    max_amp_active(n) = maxM2(active(i));
    n = n + 1;
end
max_amp_active = max_amp_active';

for i = 1:size(M,1)
    count(i) = 0;
    for j = 1:size(active,2)
        if sM(i,active(j)) > thresholdM
            count(i) = count(i) + 1;
        end
    end
end
count = count';
count = [0;count];

%% Net Kinetics
time_scaled = linspace(0,1,size(M,1)+1)'; net_count = time_scaled;
num_scaled = linspace(0,1,size(active,2)+1)';
initial_active_time = zeros(size(active,2),1);

n = 1;
for m = 1:size(active,2)
    initial_active_time(n) = time_scaled(find(sM(:,active(m)) > thresholdM,1)+1);
    n = n + 1;
end

dum_old = 0;
for p = 1:size(time_scaled,1)
    dum = size(find(initial_active_time == time_scaled(p)),1);
    dum = dum + dum_old;
    net_count(p) = num_scaled(dum + 1);
    dum_old = dum;
end

%% Average Trajectory
avg_tra_active= zeros(size(M2,1),1);
n = 1;

for i = 1:size(active,2)
    M2_active(:,n) = M2(:,active(i));
    n = n+1;
end

for i = 1:length(T)%size(avg_tra)
    avg_tra_active(i) = mean (M2_active(i,:));
end
avg_tra_active = [0;avg_tra_active];
Mm = mean(Mm);Nm = mean(Nm);Pm = mean(Pm);
% nn=

for i = 1:size(active,2)
    tmp = find(sM(:,active(i))>thresholdM);
    time_init(i,1) = tmp(1);
    dur_trans(i,1) = length(tmp)/size(M,1);
end
end 
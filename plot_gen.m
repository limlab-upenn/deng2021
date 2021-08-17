 %% Heterozygous
% Box Plots
% group = [ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4))];
% inMtotal = [inM1;inM2;inM3;inM4];
% figure
% boxplot(inMtotal,group)
% xlabel('heterozygous');ylabel('nascent mRNA production (a.u.)');title('sna shadow enhancer, MS2 allele')
% ylim([1000 9000])
%Kinetics
% figure
% plot(linspace(0,1,duration1),count1)
% hold on, plot(linspace(0,1,duration2),count2)12
% hold on, plot(linspace(0,1,duration3),count3)
% hold on, plot(linspace(0,1,duration4),count4)
% xlabel('time (a.u.)');ylabel('number of active nuclei');
% title('heterozygous')
% legend('Group 1','Group 2','Group 3','Group 4','Location','southeast')
% 
% %Maximum Amplitude
% max_amptotal = [max_amp1;max_amp2;max_amp3;max_amp4];
% figure
% boxplot(max_amptotal,group)
% xlabel('heterozygous');ylabel('maximum signal intensity (a.u.)');title('sna shadow enhancer, MS2 allele')
% ylim([3000 27000])

% %% Homozygous
% % Box Plots
% group = [ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4))];
% inMtotal = [inM1;inM2;inM3;inM4];
% figure
% boxplot(inMtotal,group)
% xlabel('homozygous');ylabel('nascent mRNA production (a.u.)');title('sna shadow enhancer, MS2 allele')
% ylim([1000 9000])
% 
% %Kinetics
% figure
% plot(linspace(0,1,duration1),count1)
% hold on, plot(linspace(0,1,duration2),count2)
% hold on, plot(linspace(0,1,duration3),count3)
% hold on, plot(linspace(0,1,duration4),count4)
% xlabel('time (a.u.)');ylabel('number of active nuclei');
% title('homozygous')
% legend('Group 1','Group 2','Group 3','Group 4','Location','southeast')
% % 
% %Plot Max Amplitude
% max_amptotal = [max_amp1;max_amp2;max_amp3;max_amp4];
% figure
% boxplot(max_amptotal,group)
% xlabel('homozygous');ylabel('maximum signal intensity (a.u.)');title('sna shadow enhancer, MS2 allele')
% ylim([3000 27000])

%% Het & Hz
% SE_group_het_hz_letter = [repmat('het', size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1),1); repmat('hz ',size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1)+size(inM9,1)+size(inM10,1)+size(inM11,1)+size(inM12,1)+size(inM13,1)+size(inM14,1),1)];
% SEmin_group_het_hz_letter = [repmat('het', size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1),1); repmat('hz ',size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1),1)];
% SEmin_E_group_letter = [repmat(' E ',size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1),1)];
% SE_inM_het_hz = [inM1;inM2;inM3;inM4;inM5;inM6;inM7;inM8;inM9;inM10;inM11;inM12;inM13;inM14];
% figure
% boxplot(SE_inM_het_hz,SE_group_het_hz)
% ylabel('nascent mRNA production (a.u.)');title('sna shadow enhancer, MS2 allele')
% 
% SE_max_het_hz = [max_amp1;max_amp2;max_amp3;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8;max_amp9;max_amp10;max_amp11;max_amp12;max_amp13;max_amp14];
% figure
% boxplot(SE_max_het_hz,SE_group_het_hz)
% ylabel('maximum signal intensity (a.u.)');title('sna shadow enhancer, MS2 allele')
%% Shaded Error Plot
% SEmin_time_scaled_E = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4],'ascend');
% SEmin_time_scaled_E = SEmin_time_scaled_E(4:size(SEmin_time_scaled_E));
% net_count1in = interp1(time_scaled1,net_count1,SEmin_time_scaled_E);net_count2in = interp1(time_scaled2,net_count2,SEmin_time_scaled_E);
% net_count3in = interp1(time_scaled3,net_count3,SEmin_time_scaled_E);net_count4in = interp1(time_scaled4,net_count4,SEmin_time_scaled_E);
% 
% % figure
% % plot(time_scaled_het,net_count12,'o-')
% % hold on; plot(time_scaled_het,net_count22,'o-')
% % hold on; plot(time_scaled_het,net_count32,'o-')
% % hold on; plot(time_scaled_het,net_count42,'o-')
% 
% data_het = zeros(size(SEmin_time_scaled_E,1),4);
% data_up_het = zeros(size(SEmin_time_scaled_E,1),1);data_down_het = data_up_het; SEmin_data_mean_E = data_up_het;
% data_het(:,1) = net_count1in;data_het(:,2) = net_count2in;data_het(:,3) = net_count3in;data_het(:,4) = net_count4in;
% for i = 1:size(SEmin_time_scaled_E,1)
%     SEmin_data_mean_E(i) = mean(data_het(i,:));
%     data_up_het(i) = mean(data_het(i,:)) + std(data_het(i,:))/sqrt(4); %input number of samples
%     data_down_het(i) = mean(data_het(i,:)) - std(data_het(i,:))/sqrt(4);
% end
% 
% dumb_down_het = data_down_het;
% for p = 1: size(data_down_het)
%     dumb_down_het(p) = data_down_het(size(data_down_het,1)+1-p);
% end
% SEmin_data_E = [data_up_het;dumb_down_het];
% SEmin_time_E = [SEmin_time_scaled_E;sort(SEmin_time_scaled_E,'descend')];

% 
% % data_het = [data_up_het;sort(data_down_het,'descend')];
% % time_het = [time_scaled_hetcl;sort(time_scaled_het,'descend')];
% 
% SEmin_time_scaled_hz = sort([time_scaled5;time_scaled6;time_scaled7;time_scaled8],'ascend');
% SE_time_scaled_hz = sort([time_scaled5;time_scaled6;time_scaled7;time_scaled8;time_scaled9;time_scaled10;time_scaled11;time_scaled12;time_scaled13;time_scaled14],'ascend');
% SE_time_scaled_hz = SE_time_scaled_hz(10:size(SE_time_scaled_hz));
% net_count5in = interp1(time_scaled5,net_count5,SE_time_scaled_hz);net_count6in = interp1(time_scaled6,net_count6,SE_time_scaled_hz);
% net_count7in = interp1(time_scaled7,net_count7,SE_time_scaled_hz);net_count8in = interp1(time_scaled8,net_count8,SE_time_scaled_hz);
% net_count9in = interp1(time_scaled9,net_count9,SE_time_scaled_hz);net_count10in = interp1(time_scaled10,net_count10,SE_time_scaled_hz);
% net_count11in = interp1(time_scaled11,net_count11,SE_time_scaled_hz);net_count12in = interp1(time_scaled12,net_count12,SE_time_scaled_hz);
% net_count13in = interp1(time_scaled13,net_count13,SE_time_scaled_hz);net_count14in = interp1(time_scaled14,net_count14,SE_time_scaled_hz);
% 
% % % 
% data_hz = zeros(size(SE_time_scaled_hz,1),10);
% data_up_hz = zeros(size(SE_time_scaled_hz,1),1);data_down_hz = data_up_hz; data_mean_hz = data_up_hz;
% data_hz(:,1) = net_count5in;data_hz(:,2) = net_count6in;data_hz(:,3) = net_count7in;data_hz(:,4) = net_count8in;
% data_hz(:,5) = net_count9in;data_hz(:,6) = net_count10in;data_hz(:,7) = net_count11in;data_hz(:,8) = net_count12in;
% data_hz(:,9) = net_count13in;data_hz(:,10) = net_count14in;
% for i = 1:size(SE_time_scaled_hz,1)
%     data_mean_hz(i) = mean(data_hz(i,:));
%     data_up_hz(i) = mean(data_hz(i,:)) + std(data_hz(i,:))/sqrt(10); %input number of samples
%     data_down_hz(i) = mean(data_hz(i,:)) - std(data_hz(i,:))/sqrt(10);
% end
% 
% dumb_down_hz = data_down_hz;
% for p = 1: size(data_down_hz)
%     dumb_down_hz(p) = data_down_hz(size(data_down_hz,1)+1-p);
% end
% SE_data_hz = [data_up_hz;dumb_down_hz];
% SE_time_hz = [SE_time_scaled_hz;sort(SE_time_scaled_hz,'descend')];
% SE_data_mean_het = data_mean_het;
% SE_data_mean_hz = data_mean_hz;
% % data_het = [data_up_hz;sort(data_down_hz,'descend')];
% % time_het = [time_scaled_hz;sort(time_scaled_hz,'descend')];
% 
% figure
% patch(SE_time_het,SE_data_het,'r','LineStyle','none','FaceAlpha',0.3)
% hold on; patch(SE_time_hz,SE_data_hz,'g','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_time_scaled_het,SE_data_mean_het,'r','LineWidth',1.5)
% hold on; plot(SE_time_scaled_hz,SE_data_mean_hz,'g','LineWidth',1.5)
% ylabel('Number of Active Nuclei');xlabel('Time')
% title('sna shadow enhancer, MS2 allele')
% % 
% % % % figure;
% % % % shadedErrorBar(time_scaled_het,data_mean,data_std,'r')
% 
%  %%
% SEmin_time_scaled_E = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4],'ascend');
% SEmin_time_scaled_E = SEmin_time_scaled_E(4:size(SEmin_time_scaled_E));
% 
% avg_tra1in = interp1(time_scaled1,avg_tra1,SEmin_time_scaled_E);avg_tra2in = interp1(time_scaled2,avg_tra2,SEmin_time_scaled_E);
% avg_tra3in = interp1(time_scaled3,avg_tra3,SEmin_time_scaled_E);avg_tra4in = interp1(time_scaled4,avg_tra4,SEmin_time_scaled_E);
% 
% avg_tra_het = zeros(size(SEmin_time_scaled_E,1),4);
% avg_tra_up_het = zeros(size(SEmin_time_scaled_E,1),1);avg_tra_down_het = avg_tra_up_het; SEmin_avg_tra_mean_E = avg_tra_up_het;
% avg_tra_het(:,1) = avg_tra1in;avg_tra_het(:,2) = avg_tra2in;avg_tra_het(:,3) = avg_tra3in;avg_tra_het(:,4) = avg_tra4in;
% for i = 1:size(SEmin_time_scaled_E,1)
%     SEmin_avg_tra_mean_E(i) = mean(avg_tra_het(i,:));
%     avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(4); %input number of samples
%     avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(4);
% end
% 
% dumb_down_het = avg_tra_down_het;
% for p = 1: size(avg_tra_down_het)
%     dumb_down_het(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
% end
% SEmin_avg_tra_E = [avg_tra_up_het;dumb_down_het];
% SEmin_time_E = [SEmin_time_scaled_E;sort(SEmin_time_scaled_E,'descend')];

% SE_time_scaled_hz = sort([time_scaled5;time_scaled6;time_scaled7;time_scaled8;time_scaled9;time_scaled10;time_scaled11;time_scaled12;time_scaled13;time_scaled14],'ascend');
% SE_time_scaled_hz = SE_time_scaled_hz(10:size(SE_time_scaled_hz));
% 
% avg_tra5in = interp1(time_scaled5,avg_tra5,SE_time_scaled_hz);avg_tra6in = interp1(time_scaled6,avg_tra6,SE_time_scaled_hz);
% avg_tra7in = interp1(time_scaled7,avg_tra7,SE_time_scaled_hz);avg_tra8in = interp1(time_scaled8,avg_tra8,SE_time_scaled_hz);
% avg_tra9in = interp1(time_scaled9,avg_tra9,SE_time_scaled_hz);avg_tra10in = interp1(time_scaled10,avg_tra10,SE_time_scaled_hz);
% avg_tra11in = interp1(time_scaled11,avg_tra11,SE_time_scaled_hz);avg_tra12in = interp1(time_scaled12,avg_tra12,SE_time_scaled_hz);
% avg_tra13in = interp1(time_scaled13,avg_tra13,SE_time_scaled_hz);avg_tra14in = interp1(time_scaled14,avg_tra14,SE_time_scaled_hz);
% 
% % % 
% avg_tra_hz = zeros(size(SE_time_scaled_hz,1),10);
% avg_tra_up_hz = zeros(size(SE_time_scaled_hz,1),1);avg_tra_down_hz = avg_tra_up_hz; avg_tra_mean_hz = avg_tra_up_hz;
% avg_tra_hz(:,1) = avg_tra5in;avg_tra_hz(:,2) = avg_tra6in;avg_tra_hz(:,3) = avg_tra7in;avg_tra_hz(:,4) = avg_tra8in;
% avg_tra_hz(:,5) = avg_tra9in;avg_tra_hz(:,6) = avg_tra10in;avg_tra_hz(:,7) = avg_tra11in;avg_tra_hz(:,8) = avg_tra12in;
% avg_tra_hz(:,9) = avg_tra13in;avg_tra_hz(:,10) = avg_tra14in;
% for i = 1:size(SE_time_scaled_hz,1)
%     avg_tra_mean_hz(i) = mean(avg_tra_hz(i,:));
%     avg_tra_up_hz(i) = mean(avg_tra_hz(i,:)) + std(avg_tra_hz(i,:))/sqrt(10); %input number of samples
%     avg_tra_down_hz(i) = mean(avg_tra_hz(i,:)) - std(avg_tra_hz(i,:))/sqrt(10);
% end
% 
% dumb_down_hz = avg_tra_down_hz;
% for p = 1: size(avg_tra_down_hz)
%     dumb_down_hz(p) = avg_tra_down_hz(size(avg_tra_down_hz,1)+1-p);
% end
% SE_avg_tra_hz = [avg_tra_up_hz;dumb_down_hz];
% SE_avg_tra_mean_het = avg_tra_mean_het;
% SE_avg_tra_mean_hz = avg_tra_mean_hz;
% % 
% figure
% patch(SE_time_het,SE_avg_tra_het,'r','LineStyle','none','FaceAlpha',0.3)
% hold on; patch(SE_time_hz,SE_avg_tra_hz,'g','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_time_scaled_het,SE_avg_tra_mean_het,'r','LineWidth',1.5)
% hold on; plot(SE_time_scaled_hz,SE_avg_tra_mean_hz,'g','LineWidth',1.5)
% ylabel('Signal Intensity');xlabel('Time')
% title('Average Trajectory')
% %  
 %%
% group_pat_mat = [repmat('paternal', size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM9,1)+size(inM10,1),1); repmat('maternal',size(inM4,1)+size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1),1)];
% inM_pat_mat = [inM1;inM2;inM3;inM9;inM10;inM4;inM5;inM6;inM7;inM8];
% figure
% boxplot(inM_pat_mat,group_pat_mat)
% ylabel('nascent mRNA production (a.u.)');title('sna shadow enhancer, MS2 allele')
% 
% max_amp_pat_mat = [max_amp1;max_amp2;max_amp3;max_amp9;max_amp10;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8];
% figure
% boxplot(max_amp_pat_mat,group_pat_mat)
% ylabel('maximum signal intensity (a.u.)');title('sna shadow enhancer, MS2 allele')
% 
% SE_hz_group=[ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM9));5 * ones(size(inM10));6 * ones(size(inM4));7 * ones(size(inM5));8 * ones(size(inM6));9 * ones(size(inM7));10 * ones(size(inM8))];
% SE_hz_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp9;max_amp10;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8];
% SE_hz_inMtotal = [inM1;inM2;inM3;inM9;inM10;inM4;inM5;inM6;inM7;inM8];
% %%
% SEmin_het_group=[ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4))];
% SEmin_het_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp4];
% SEmin_het_inMtotal = [inM1;inM2;inM3;inM4];
% %%
% SEmin_hz_group=[ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4))];
% SEmin_hz_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp4];
% SEmin_hz_inMtotal = [inM1;inM2;inM3;inM4];

%%
% group = [SE_het_group_letter;SE_het2_group_letter];%SEms2III_pp7II_group_letter];
% inM = [SE_het_inMtotal;SE_het2_inMtotal];
% 
% figure
% boxplot(inM,group)
% title('sna shadow enhancer, MS2 allele(III)')
% ylabel('nascent mRNA production (a.u.)')

tmp = prctile(SE_endo_het_nc13_maxtotal,[10,90]);
SE_endo_het_nc13_maxtotal(SE_endo_het_nc13_maxtotal < tmp(1)) = [];
SE_endo_het_nc13_maxtotal(SE_endo_het_nc13_maxtotal > tmp(2)) = [];
tmp = prctile(SE_endo_hz_nc13_maxtotal,[10,90]);
SE_endo_hz_nc13_maxtotal(SE_endo_hz_nc13_maxtotal < tmp(1)) = [];
SE_endo_hz_nc13_maxtotal(SE_endo_hz_nc13_maxtotal > tmp(2)) = [];
% tmp = prctile(SEmin_E_inMtotal,[10,90]);
% SEmin_E_inMtotal(SEmin_E_inMtotal < tmp(1)) = [];
% SEmin_E_inMtotal(SEmin_E_inMtotal > tmp(2)) = [];
% tmp = prctile(SEmin_P_inMtotal,[10,90]);
% SEmin_P_inMtotal(SEmin_P_inMtotal < tmp(1)) = [];
% SEmin_P_inMtotal(SEmin_P_inMtotal > tmp(2)) = [];
% % tmp = prctile(SE_ms2III_pp7II_inMtotal,[10,90]);
% SE_ms2III_pp7II_inMtotal(SE_ms2III_pp7II_inMtotal < tmp(1)) = [];
% SE_ms2III_pp7II_inMtotal(SE_ms2III_pp7II_inMtotal > tmp(2)) = [];
% 

% grp = [ones(1, length(SEmin_het_inMtotal)) 2*ones(1,length(SEmin_hz_inMtotal)) 3*ones(1,length(SEmin_E_inMtotal)) 4*ones(1,length(SEmin_P_inMtotal))];
% grp = [ones(1, length(SEmin_het_time_initial)) 2*ones(1,length(SEmin_hz_time_initial))];% 3*ones(1,length(SE_hzII_inMtotal))];
% % grp = [ones(1, length(SE_ms2III_pp7II_inMtotal)) 2*ones(1,length(SE_hzIII_inMtotal))];
% grp = grp';
% % inMr = [SE_het_inMtotal;SE_hz_inMtotal;SEmin_E_inMtotal;SEmin_P_inMtotal];
% inMr = [SEmin_het_time_initial;SEmin_hz_time_initial];%2*SE_hzII_inMtotal];
% % maxr = [SE_het_nc13_maxtotal;SE_hz_time_initial];
% figure;
% % boxplot(inMr,grp,'Labels',{'hemizygous','homozygous','Enhancer Only','Promoter Only'});%,'Promoter Only'
% boxplot(inMr,grp,'Labels',{'hemizygote','homozygote'});%,'Expected het'});%,'Promoter Only'
% title("minimal sna shadow enhancer, MS2 allele")
% ylabel('Timing of Initiation (min))')
% % ylabel('max amplitude (a.u.)')

SEmin_inMtotal = [SE_endo_het_nc13_maxtotal; SE_endo_hz_nc13_maxtotal];
ss1 = length(SE_endo_het_nc13_maxtotal); ss2 = length(SE_endo_hz_nc13_maxtotal);
grp = [ones(1,ss1) 2*ones(1,ss2)];

figure;
boxplot(SEmin_inMtotal,grp,'Labels',{'hemizygote','homozygote'});
title("endogenous sna shadow enhancer, MS2 allele")

ss = 100;
data = {SE_endo_het_nc13_maxtotal(randperm(ss1,ss));SE_endo_hz_nc13_maxtotal(randperm(ss2,ss))};
catIdx =  [ones(ss,1); 2*ones(ss,1)];
plotSpread(data,'categoryIdx',catIdx,'categoryColors',{'b','r'})
ylabel('Maximum Amplitude (a.u.)')
axis square

% 
% grp1 = [ones(1, length(SE_E_time_initial)) 2*ones(1,length(SE_P_time_initial))];
% grp1 = grp1';
% inMr1 = [SE_E_time_initial;SE_P_time_initial];%SE_E_inMtotal;SE_P_inMtotal];
% figure;
% boxplot(inMr1,grp1,'Labels',{'het','hz'});
% title('sna shadow enhancer, MS2 allele(III)')
% ylabel('timing of initiation (min)')
% 
% figure
% patch(SE_het_time,SE_het_avg_tra,'k','LineStyle','none','FaceAlpha',0.3)
% hold on; patch(SE_hz_time,SE_hz_avg_tra,'r','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_het_time_scaled,SE_het_avg_tra_mean,'k','LineWidth',1.5)
% hold on; plot(SE_hz_time_scaled,SE_hz_avg_tra_mean,'r','LineWidth',1.5)
% hold on; patch(SEmin_Emin_time,SEmin_Emin_avg_tra,'b','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SEmin_Emin_time_scaled,SEmin_Emin_avg_tra_mean,'b','LineWidth',1.5)
% hold on; patch(SE_E_time,SE_E_avg_tra,'c','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_E_time_scaled,SE_E_avg_tra_mean,'c','LineWidth',1.5)
% hold on; patch(SE_P_time,SE_P_avg_tra,'m','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_P_time_scaled,SE_P_avg_tra_mean,'m','LineWidth',1.5)
% ylabel('Signal Intensity');xlabel('Time')
% title('Average Trajectory')
% 
% figure
% patch(SEmin_het_time,SEmin_het_net_kinetics,'r','LineStyle','none','FaceAlpha',0.3)
% hold on; patch(SEmin_hz_time,SEmin_hz_net_kinetics,'g','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SEmin_het_time_scaled,SEmin_het_net_kinetics_mean,'r','LineWidth',1.5)
% hold on; plot(SEmin_hz_time_scaled,SEmin_hz_net_kinetics_mean,'g','LineWidth',1.5)
% % hold on;patch(SEms2III_pp7II_time,SEms2III_pp7II_net_kinetics,'c','LineStyle','none','FaceAlpha',0.3)
% % hold on; plot(SEms2III_pp7II_time_scaled,SEms2III_pp7II_net_kinetics_mean,'c','LineWidth',1.5)
% ylabel('Fraction of active nuclei');xlabel('Time')
% title('Net Kinetics')
% figure
% patch(SE_het_time,SE_het_kinetics,'r','LineStyle','none','FaceAlpha',0.3)
% hold on; patch(SE_hz_time,SE_hz_kinetics,'g','LineStyle','none','FaceAlpha',0.3)
% hold on; plot(SE_het_time_scaled,SE_het_kinetics_mean,'r','LineWidth',1.5)
% hold on; plot(SE_hz_time_scaled,SE_hz_kinetics_mean,'g','LineWidth',1.5)
% % hold on;patch(SEms2III_pp7II_time,SEms2III_pp7II_kinetics,'c','LineStyle','none','FaceAlpha',0.3)
% % hold on; plot(SEms2III_pp7II_time_scaled,SEms2III_pp7II_kinetics_mean,'c','LineWidth',1.5)
% ylabel('number of active nuclei');xlabel('Time')
% title('Kinetics')
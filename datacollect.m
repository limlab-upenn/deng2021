clear
sample_num = input('The number of sample is ');
if sample_num == 4
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1,t_init1,d_trans1] = analyze();[inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2,t_init2,d_trans2] = analyze();
    [inM3,count3,time3,duration3,max_amp3,time_scaled3,net_count3,avg_tra3,t_init3,d_trans3] = analyze();[inM4,count4,time4,duration4,max_amp4,time_scaled4,net_count4,avg_tra4,t_init4,d_trans4] = analyze();
elseif sample_num == 2
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1,t_init1,d_trans1] = analyze();[inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2,t_init2,d_trans2] = analyze();
%     [inM3,count3,time3,duration3,max_amp3,time_scaled3,net_count3,avg_tra3,t_init3,d_trans3] = analyze();
elseif sample_num == 5
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1,Mm1,maxN1] = analyze();[inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2,Mm2,maxN2] = analyze();
    [inM3,count3,time3,duration3,max_amp3,time_scaled3,net_count3,avg_tra3,Mm3,maxN3] = analyze();[inM4,count4,time4,duration4,max_amp4,time_scaled4,net_count4,avg_tra4,Mm4,maxN4] = analyze();
    [inM5,count5,time5,duration5,max_amp5,time_scaled5,net_count5,avg_tra5,Mm5,maxN5] = analyze();%[inM6,count6,time6,duration6,max_amp6,time_scaled6,net_count6,avg_tra6,Mm6,maxN6] = analyze();
%     [inM7,count7,time7,duration7,max_amp7,time_scaled7,net_count7,avg_tra7,Mm7,maxN7] = analyze();[inM8,count8,time8,duration8,max_amp8,time_scaled8,net_count8,avg_tra8,Mm8,maxN8] = analyze();
elseif sample_num == 8
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1] = analyze();[inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2] = analyze();
    [inM3,count3,time3,duration3,max_amp3,time_scaled3,net_count3,avg_tra3] = analyze();[inM4,count4,time4,duration4,max_amp4,time_scaled4,net_count4,avg_tra4] = analyze();
    [inM5,count5,time5,duration5,max_amp5,time_scaled5,net_count5,avg_tra5] = analyze();[inM6,count6,time6,duration6,max_amp6,time_scaled6,net_count6,avg_tra6] = analyze();
    [inM7,count7,time7,duration7,max_amp7,time_scaled7,net_count7,avg_tra7] = analyze();[inM8,count8,time8,duration8,max_amp8,time_scaled8,net_count8,avg_tra8] = analyze();
%     [inM9,count9,time9,duration9,max_amp9,time_scaled9,net_count9,avg_tra9] = analyze();[inM10,count10,time10,duration10,max_amp10,time_scaled10,net_count10,avg_tra10] = analyze();
elseif sample_num == 1
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1] = analyze();
    %[inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2]= analyze();3
elseif sample_num == 10
    [inM1,count1,time1,duration1,max_amp1,time_scaled1,net_count1,avg_tra1,t_init1,d_trans1] = analyze();
    [inM2,count2,time2,duration2,max_amp2,time_scaled2,net_count2,avg_tra2,t_init2,d_trans2] = analyze();
    [inM3,count3,time3,duration3,max_amp3,time_scaled3,net_count3,avg_tra3,t_init3,d_trans3] = analyze();
    [inM4,count4,time4,duration4,max_amp4,time_scaled4,net_count4,avg_tra4,t_init4,d_trans4] = analyze();
    [inM5,count5,time5,duration5,max_amp5,time_scaled5,net_count5,avg_tra5,t_init5,d_trans5] = analyze();
    [inM6,count6,time6,duration6,max_amp6,time_scaled6,net_count6,avg_tra6,t_init6,d_trans6] = analyze();
    [inM7,count7,time7,duration7,max_amp7,time_scaled7,net_count7,avg_tra7,t_init7,d_trans7] = analyze();
    [inM8,count8,time8,duration8,max_amp8,time_scaled8,net_count8,avg_tra8,t_init8,d_trans8] = analyze();
    [inM9,count9,time9,duration9,max_amp9,time_scaled9,net_count9,avg_tra9,t_init9,d_trans9] = analyze();
    [inM10,count10,time10,duration10,max_amp10,time_scaled10,net_count10,avg_tra10,t_init10,d_trans10] = analyze();
%     [inM11,count11,time11,duration11,max_amp11,time_scaled11,net_count11,avg_tra11,Mm11,maxN11] = analyze();[inM12,count12,time12,duration12,max_amp12,time_scaled12,net_count12,avg_tra12,Mm12,maxN12] = analyze();
%     [inM13,count13,time13,duration13,max_amp13,time_scaled13,net_count13,avg_tra13,Mm13,maxN13] = analyze();[inM14,count14,time14,duration14,max_amp14,time_scaled14,net_count14,avg_tra14,Mm14,maxN14] = analyze();load('G:\Shared drives\Lim_Lab\Dennis\Enhancers Trans Interaction Project\Images\snaSE_III\MS2_01\trajectories.mat')
end
%% One Group of 4
if sample_num == 4
    SE_het3_group = [ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4))];
    SE_het3_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp4];
    SE_het3_inMtotal = [inM1;inM2;inM3;inM4];
    
    SE_het3_time_initial = [t_init1;t_init2;t_init3;t_init4];
    SE_het3_duration_trans = [d_trans1;d_trans2;d_trans3;d_trans4];

    % figure, boxplot(SEmin_het_inMtotal,SEmin_het_group)
    % figure, boxplot(SEmin_het_maxtotal,SEmin_het_group)
    
    SE_het3_time_scaled = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4],'ascend');
    SE_het3_time_scaled = SE_het3_time_scaled(4:size(SE_het3_time_scaled)); %change depends on sample group size
    net_count1in = interp1(time_scaled1,net_count1,SE_het3_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE_het3_time_scaled);
    net_count3in = interp1(time_scaled3,net_count3,SE_het3_time_scaled);net_count4in = interp1(time_scaled4,net_count4,SE_het3_time_scaled);
    count1in = interp1(time_scaled1,count1,SE_het3_time_scaled);count2in = interp1(time_scaled2,count2,SE_het3_time_scaled);
    count3in = interp1(time_scaled3,count3,SE_het3_time_scaled);count4in = interp1(time_scaled4,count4,SE_het3_time_scaled);
    net_kinetic = zeros(size(SE_het3_time_scaled,1),4);kinetic = zeros(size(SE_het3_time_scaled,1),4);
    net_kinetic_up = zeros(size(SE_het3_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
    kinetic_up = zeros(size(SE_het3_time_scaled,1),1);kinetics_down = net_kinetic_up;
    SE_het3_net_kinetics_mean = net_kinetic_up;
    SE_het3_kinetics_mean = kinetic_up;
    net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;net_kinetic(:,3) = net_count3in;net_kinetic(:,4) = net_count4in;
    kinetic(:,1) = count1in;kinetic(:,2) = count2in;kinetic(:,3) = count3in;kinetic(:,4) = count4in;
    for i = 1:size(SE_het3_time_scaled,1)
        SE_het3_net_kinetics_mean(i) = mean(net_kinetic(i,:));
        net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(4); %input number of samples
        net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(4);
        SE_het3_kinetics_mean(i) = mean(kinetic(i,:));
        kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(4); %input number of samples
        kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(4);
    end
    dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
    for p = 1: size(net_kinetics_down)
        dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
    end
    for p = 1: size(kinetics_down)
        dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
    end
    SE_het3_net_kinetics = [net_kinetic_up;dumb_net_down];
    SE_het3_kinetics = [kinetic_up;dumb_down];
    
    avg_tra1in = interp1(time_scaled1,avg_tra1,SE_het3_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE_het3_time_scaled);
    avg_tra3in = interp1(time_scaled3,avg_tra3,SE_het3_time_scaled);avg_tra4in = interp1(time_scaled4,avg_tra4,SE_het3_time_scaled);
    avg_tra_het = zeros(size(SE_het3_time_scaled,1),4);
    avg_tra_up_het = zeros(size(SE_het3_time_scaled,1),1);avg_tra_down_het = avg_tra_up_het;
    SE_het3_avg_tra_mean = avg_tra_up_het;
    avg_tra_het(:,1) = avg_tra1in;avg_tra_het(:,2) = avg_tra2in;avg_tra_het(:,3) = avg_tra3in;avg_tra_het(:,4) = avg_tra4in;
    for i = 1:size(SE_het3_time_scaled,1)
        SE_het3_avg_tra_mean(i) = mean(avg_tra_het(i,:));
        avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(4); %input number of samples
        avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(4);
    end
    dumb_net_down = avg_tra_down_het;
    for p = 1: size(avg_tra_down_het)
        dumb_net_down(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
    end
    SE_het3_avg_tra = [avg_tra_up_het;dumb_net_down];
    SE_het3_time = [SE_het3_time_scaled;sort(SE_het3_time_scaled,'descend')];
end
%% One Group of 10
if sample_num ==10
    SE_hetII_group=[ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM9));5 * ones(size(inM10));6 * ones(size(inM4));7 * ones(size(inM5));8 * ones(size(inM6));9 * ones(size(inM7));10 * ones(size(inM8))];
    SE_P_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp9;max_amp10;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8];
    SE_P_inMtotal = [inM1;inM2;inM3;inM9;inM10;inM4;inM5;inM6;inM7;inM8];
    
    SE_hz_time_initial = [t_init1;t_init2;t_init3;t_init4;t_init5;t_init6;t_init7;t_init8;t_init9;t_init10];
    SE_hz_duration_trans = [d_trans1;d_trans2;d_trans3;d_trans4;d_trans5;d_trans6;d_trans7;d_trans8;d_trans9;d_trans10];
% 
%     figure, boxplot(SE_hz_inMtotal,SE_hz_group)
%     figure, boxplot(SE_hz_maxtotal,SE_hz_group)
    
    SE_hz_time_scaled = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4;time_scaled5;time_scaled6;time_scaled7;time_scaled8;time_scaled9;time_scaled10],'ascend');
    SE_hz_time_scaled = SE_hz_time_scaled(10:size(SE_hz_time_scaled));
    net_count1in = interp1(time_scaled1,net_count1,SE_hz_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE_hz_time_scaled);
    net_count3in = interp1(time_scaled3,net_count3,SE_hz_time_scaled);net_count4in = interp1(time_scaled4,net_count4,SE_hz_time_scaled);
    net_count5in = interp1(time_scaled5,net_count5,SE_hz_time_scaled);net_count6in = interp1(time_scaled6,net_count6,SE_hz_time_scaled);
    net_count7in = interp1(time_scaled7,net_count7,SE_hz_time_scaled);net_count8in = interp1(time_scaled8,net_count8,SE_hz_time_scaled);
    net_count9in = interp1(time_scaled9,net_count9,SE_hz_time_scaled);net_count10in = interp1(time_scaled10,net_count10,SE_hz_time_scaled);
    count1in = interp1(time_scaled1,count1,SE_hz_time_scaled);count2in = interp1(time_scaled2,count2,SE_hz_time_scaled);
    count3in = interp1(time_scaled3,count3,SE_hz_time_scaled);count4in = interp1(time_scaled4,count4,SE_hz_time_scaled);
    count5in = interp1(time_scaled5,count5,SE_hz_time_scaled);count6in = interp1(time_scaled6,count6,SE_hz_time_scaled);
    count7in = interp1(time_scaled7,count7,SE_hz_time_scaled);count8in = interp1(time_scaled8,count8,SE_hz_time_scaled);
    count9in = interp1(time_scaled9,count9,SE_hz_time_scaled);count10in = interp1(time_scaled10,count10,SE_hz_time_scaled);
    net_kinetic = zeros(size(SE_hz_time_scaled,1),10);kinetic = zeros(size(SE_hz_time_scaled,1),10);
    net_kinetic_up = zeros(size(SE_hz_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
    kinetic_up = zeros(size(SE_hz_time_scaled,1),1);kinetics_down = net_kinetic_up;
    SE_hz_net_kinetics_mean = net_kinetic_up;
    SE_hz_kinetics_mean = kinetic_up;
    net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;net_kinetic(:,3) = net_count3in;net_kinetic(:,4) = net_count4in;
    net_kinetic(:,5) = net_count5in;net_kinetic(:,6) = net_count6in;net_kinetic(:,7) = net_count7in;net_kinetic(:,8) = net_count8in;
    net_kinetic(:,9) = net_count9in;net_kinetic(:,10) = net_count10in;
    kinetic(:,1) = count1in;kinetic(:,2) = count2in;kinetic(:,3) = count3in;kinetic(:,4) = count4in;
    kinetic(:,5) = count5in;kinetic(:,6) = count6in;kinetic(:,7) = count7in;kinetic(:,8) = count8in;
    kinetic(:,9) = count9in;kinetic(:,10) = count10in;
    for i = 1:size(SE_hz_time_scaled,1)
        SE_hz_net_kinetics_mean(i) = mean(net_kinetic(i,:));
        net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(10); %input number of samples
        net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(10);
        SE_hz_kinetics_mean(i) = mean(kinetic(i,:));
        kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(10); %input number of samples
        kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(10);
    end
    dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
    for p = 1: size(net_kinetics_down)
        dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
    end
    for p = 1: size(kinetics_down)
        dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
    end
    SE_hz_net_kinetics = [net_kinetic_up;dumb_net_down];
    SE_het3_kinetics = [kinetic_up;dumb_down];
    
    avg_tra1in = interp1(time_scaled1,avg_tra1,SE_hz_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE_hz_time_scaled);
    avg_tra3in = interp1(time_scaled3,avg_tra3,SE_hz_time_scaled);avg_tra4in = interp1(time_scaled4,avg_tra4,SE_hz_time_scaled);
    avg_tra5in = interp1(time_scaled5,avg_tra5,SE_hz_time_scaled);avg_tra6in = interp1(time_scaled6,avg_tra6,SE_hz_time_scaled);
    avg_tra7in = interp1(time_scaled7,avg_tra7,SE_hz_time_scaled);avg_tra8in = interp1(time_scaled8,avg_tra8,SE_hz_time_scaled);
    avg_tra9in = interp1(time_scaled9,avg_tra9,SE_hz_time_scaled);avg_tra10in = interp1(time_scaled10,avg_tra10,SE_hz_time_scaled);
    
    avg_tra_hz = zeros(size(SE_hz_time_scaled,1),10);
    avg_tra_up_hz = zeros(size(SE_hz_time_scaled,1),1);avg_tra_down_hz = avg_tra_up_hz; SE_hz_avg_tra_mean = avg_tra_up_hz;
    avg_tra_hz(:,1) = avg_tra1in;avg_tra_hz(:,2) = avg_tra2in;avg_tra_hz(:,3) = avg_tra3in;avg_tra_hz(:,4) = avg_tra4in;
    avg_tra_hz(:,5) = avg_tra5in;avg_tra_hz(:,6) = avg_tra6in;avg_tra_hz(:,7) = avg_tra7in;avg_tra_hz(:,8) = avg_tra8in;
    avg_tra_hz(:,9) = avg_tra9in;avg_tra_hz(:,10) = avg_tra10in;
    for i = 1:size(SE_hz_time_scaled,1)
        SE_hz_avg_tra_mean(i) = mean(avg_tra_hz(i,:));
        avg_tra_up_hz(i) = mean(avg_tra_hz(i,:)) + std(avg_tra_hz(i,:))/sqrt(10); %input number of samples
        avg_tra_down_hz(i) = mean(avg_tra_hz(i,:)) - std(avg_tra_hz(i,:))/sqrt(10);
    end
    dumb_down_hz = avg_tra_down_hz;
    for p = 1: size(avg_tra_down_hz)
        dumb_down_hz(p) = avg_tra_down_hz(size(avg_tra_down_hz,1)+1-p);
    end
    SE_hz3_avg_tra = [avg_tra_up_hz;dumb_down_hz];
    SE_hz_time = [SE_hz_time_scaled;sort(SE_hz_time_scaled,'descend')];
    
    SE_hz_group_letter = [repmat('hz ',size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1)+size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1)+size(inM9,1)+size(inM10,1),1)];
end
%% One Group of 8
% if sample_num ==8
%     SE3_hz_group=[ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4));5 * ones(size(inM5));6 * ones(size(inM6));7 * ones(size(inM7));8 * ones(size(inM8))];
%     SE3_hz_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8];
%     SE3_hz_inMtotal = [inM1;inM2;inM3;inM4;inM5;inM6;inM7;inM8];

%     figure, boxplot(SE_hz_inMtotal,SE_hz_group)
%     figure, boxplot(SE_hz_maxtotal,SE_hz_group)
%     
%     SE3_hz_time_scaled = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4;time_scaled5;time_scaled6;time_scaled7;time_scaled8],'ascend');
%     SE3_hz_time_scaled = SE3_hz_time_scaled(8:size(SE3_hz_time_scaled));
%     net_count1in = interp1(time_scaled1,net_count1,SE3_hz_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE3_hz_time_scaled);
%     net_count3in = interp1(time_scaled3,net_count3,SE3_hz_time_scaled);net_count4in = interp1(time_scaled4,net_count4,SE3_hz_time_scaled);
%     net_count5in = interp1(time_scaled5,net_count5,SE3_hz_time_scaled);net_count6in = interp1(time_scaled6,net_count6,SE3_hz_time_scaled);
%     net_count7in = interp1(time_scaled7,net_count7,SE3_hz_time_scaled);net_count8in = interp1(time_scaled8,net_count8,SE3_hz_time_scaled);
%     count1in = interp1(time_scaled1,count1,SE3_hz_time_scaled);count2in = interp1(time_scaled2,count2,SE3_hz_time_scaled);
%     count3in = interp1(time_scaled3,count3,SE3_hz_time_scaled);count4in = interp1(time_scaled4,count4,SE3_hz_time_scaled);
%     count5in = interp1(time_scaled5,count5,SE3_hz_time_scaled);count6in = interp1(time_scaled6,count6,SE3_hz_time_scaled);
%     count7in = interp1(time_scaled7,count7,SE3_hz_time_scaled);count8in = interp1(time_scaled8,count8,SE3_hz_time_scaled);
%     
%     net_kinetic = zeros(size(SE3_hz_time_scaled,1),8);kinetic = zeros(size(SE3_hz_time_scaled,1),8);
%     net_kinetic_up = zeros(size(SE3_hz_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
%     kinetic_up = zeros(size(SE3_hz_time_scaled,1),1);kinetics_down = net_kinetic_up;
%     SE3_hz_net_kinetics_mean = net_kinetic_up;
%     SE3_hz_kinetics_mean = kinetic_up;
%     net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;net_kinetic(:,3) = net_count3in;net_kinetic(:,4) = net_count4in;
%     net_kinetic(:,5) = net_count5in;net_kinetic(:,6) = net_count6in;net_kinetic(:,7) = net_count7in;net_kinetic(:,8) = net_count8in;
%     kinetic(:,1) = count1in;kinetic(:,2) = count2in;kinetic(:,3) = count3in;kinetic(:,4) = count4in;
%     kinetic(:,5) = count5in;kinetic(:,6) = count6in;kinetic(:,7) = count7in;kinetic(:,8) = count8in;
%     for i = 1:size(SE3_hz_time_scaled,1)
%         SE3_hz_net_kinetics_mean(i) = mean(net_kinetic(i,:));
%         net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(8); %input number of samples
%         net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(8);
%         SE3_hz_kinetics_mean(i) = mean(kinetic(i,:));
%         kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(8); %input number of samples
%         kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(8);
%     end
%     dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
%     for p = 1: size(net_kinetics_down)
%         dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
%     end
%     for p = 1: size(kinetics_down)
%         dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
%     end
%     SE3_hz_net_kinetics = [net_kinetic_up;dumb_net_down];
%     SE3_hz_kinetics = [kinetic_up;dumb_down];
%     
%     avg_tra1in = interp1(time_scaled1,avg_tra1,SE3_hz_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE3_hz_time_scaled);
%     avg_tra3in = interp1(time_scaled3,avg_tra3,SE3_hz_time_scaled);avg_tra4in = interp1(time_scaled4,avg_tra4,SE3_hz_time_scaled);
%     avg_tra5in = interp1(time_scaled5,avg_tra5,SE3_hz_time_scaled);avg_tra6in = interp1(time_scaled6,avg_tra6,SE3_hz_time_scaled);
%     avg_tra7in = interp1(time_scaled7,avg_tra7,SE3_hz_time_scaled);avg_tra8in = interp1(time_scaled8,avg_tra8,SE3_hz_time_scaled);
%     avg_tra_hz = zeros(size(SE3_hz_time_scaled,1),8);
%     avg_tra_up_hz = zeros(size(SE3_hz_time_scaled,1),1);avg_tra_down_hz = avg_tra_up_hz; SE3_hz_avg_tra_mean = avg_tra_up_hz;
%     avg_tra_hz(:,1) = avg_tra1in;avg_tra_hz(:,2) = avg_tra2in;avg_tra_hz(:,3) = avg_tra3in;avg_tra_hz(:,4) = avg_tra4in;
%     avg_tra_hz(:,5) = avg_tra5in;avg_tra_hz(:,6) = avg_tra6in;avg_tra_hz(:,7) = avg_tra7in;avg_tra_hz(:,8) = avg_tra8in;
%     for i = 1:size(SE3_hz_time_scaled,1)
%         SE3_hz_avg_tra_mean(i) = mean(avg_tra_hz(i,:));
%         avg_tra_up_hz(i) = mean(avg_tra_hz(i,:)) + std(avg_tra_hz(i,:))/sqrt(8); %input number of samples
%         avg_tra_down_hz(i) = mean(avg_tra_hz(i,:)) - std(avg_tra_hz(i,:))/sqrt(8);
%     end
%     dumb_down_hz = avg_tra_down_hz;
%     for p = 1: size(avg_tra_down_hz)
%         dumb_down_hz(p) = avg_tra_down_hz(size(avg_tra_down_hz,1)+1-p);
%     end
%     SE3_hz_avg_tra = [avg_tra_up_hz;dumb_down_hz];
%     SE3_hz_time = [SE3_hz_time_scaled;sort(SE3_hz_time_scaled,'descend')];
%     
%     % SEpp7_minMS2_group_letter = repmat('SE PP7/SEmin MS2',size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1)+size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1),1);SE3_hz_group_letter = repmat('SE PP7/SEmin MS2',size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1)+size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1),1);
%     SE3_hz_group_letter = repmat('3UTR hz ',size(inM1,1)+size(inM2,1)+size(inM3,1)+size(inM4,1)+size(inM5,1)+size(inM6,1)+size(inM7,1)+size(inM8,1),1);
% end

%%
if sample_num == 2
    SE_endo_hz_nc13_group = [ones(size(inM1));2 * ones(size(inM2))];
    SE_endo_hz_nc13_maxtotal = [max_amp1;max_amp2];
    SE_endo_hz_nc13_inMtotal = [inM1;inM2];

    SE_endo_hz_nc13_time_initial = [t_init1;t_init2];
    SE_endo_hz_nc13_duration_trans = [d_trans1;d_trans2];

%     figure, boxplot(SE_het2_inMtotal,SE_endo_het_nc13_group)
    
    SE_endo_hz_nc13_time_scaled = sort([time_scaled1;time_scaled2],'ascend');
    SE_endo_hz_nc13_time_scaled = SE_endo_hz_nc13_time_scaled(2:size(SE_endo_hz_nc13_time_scaled)); %change depends on sample group size
    net_count1in = interp1(time_scaled1,net_count1,SE_endo_hz_nc13_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE_endo_hz_nc13_time_scaled);
    count1in = interp1(time_scaled1,count1,SE_endo_hz_nc13_time_scaled);count2in = interp1(time_scaled2,count2,SE_endo_hz_nc13_time_scaled);
    net_kinetic = zeros(size(SE_endo_hz_nc13_time_scaled,1),2);kinetic = zeros(size(SE_endo_hz_nc13_time_scaled,1),2);
    net_kinetic_up = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
    kinetic_up = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);kinetics_down = net_kinetic_up;
    SE_endo_hz_nc13_net_kinetics_mean = net_kinetic_up;
    SE_endo_hz_nc13_kinetics_mean = kinetic_up;
    net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;
    kinetic(:,1) = count1in;kinetic(:,2) = count2in;
    for i = 1:size(SE_endo_hz_nc13_time_scaled,1)
        SE_endo_hz_nc13_net_kinetics_mean(i) = mean(net_kinetic(i,:));
        net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(2); %input number of samples
        net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(2);
        SE_endo_hz_nc13_kinetics_mean(i) = mean(kinetic(i,:));
        kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(2); %input number of samples
        kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(2);
    end
    dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
    for p = 1: size(net_kinetics_down)
        dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
    end
    for p = 1: size(kinetics_down)
        dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
    end
    SE_endo_hz_nc13_net_kinetics = [net_kinetic_up;dumb_net_down];
    SE_endo_hz_nc13_kinetics = [kinetic_up;dumb_down];
    
    avg_tra1in = interp1(time_scaled1,avg_tra1,SE_endo_hz_nc13_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE_endo_hz_nc13_time_scaled);
    avg_tra_het = zeros(size(SE_endo_hz_nc13_time_scaled,1),2);
    avg_tra_up_het = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);avg_tra_down_het = avg_tra_up_het;
    SE_endo_hz_nc13_avg_tra_mean = avg_tra_up_het;
    avg_tra_het(:,1) = avg_tra1in;avg_tra_het(:,2) = avg_tra2in;
    for i = 1:size(SE_endo_hz_nc13_time_scaled,1)
        SE_endo_hz_nc13_avg_tra_mean(i) = mean(avg_tra_het(i,:));
        avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(2); %input number of samples
        avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(2);
    end
    dumb_net_down = avg_tra_down_het;
    for p = 1: size(avg_tra_down_het)
        dumb_net_down(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
    end
    SE_endo_hz_nc13_avg_tra = [avg_tra_up_het;dumb_net_down];
    SE_endo_hz_nc13_time = [SE_endo_hz_nc13_time_scaled;sort(SE_endo_hz_nc13_time_scaled,'descend')];
    
%     SE_het2_group_letter = repmat('HET',size(inM1,1)+size(inM2,1),1);
end
%%
if sample_num == 1
    SE_hetIII3_group = [ones(size(inM1))];
    SE_hetIII3_maxtotal = [max_amp1];
    SE_hetIII3_inMtotal = [inM1];
    
%     SE_het18_time_scaled = sort([time_scaled1],'ascend');
%     SE_het18_time_scaled = SE_het18_time_scaled(1:size(SE_het18_time_scaled)); %change depends on sample group size
%     net_count1in = interp1(time_scaled1,net_count1,SE_het18_time_scaled);
%     count1in = interp1(time_scaled1,count1,SE_het18_time_scaled);
%     net_kinetic = zeros(size(SE_het18_time_scaled,1),1);kinetic = zeros(size(SE_het18_time_scaled,1),1);
%     net_kinetic_up = zeros(size(SE_het18_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
%     kinetic_up = zeros(size(SE_het18_time_scaled,1),1);kinetics_down = net_kinetic_up;
%     SE_het18_net_kinetics_mean = net_kinetic_up;
%     SE_het18_kinetics_mean = kinetic_up;
%     net_kinetic(:,1) = net_count1in;
%     kinetic(:,1) = count1in;
%     for i = 1:size(SE_het18_time_scaled,1)
%         SE_het18_net_kinetics_mean(i) = mean(net_kinetic(i,:));
%         net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(1); %input number of samples
%         net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(1);
%         SE_het18_kinetics_mean(i) = mean(kinetic(i,:));
%         kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(1); %input number of samples
%         kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(1);
%     end
%     dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
%     for p = 1: size(net_kinetics_down)
%         dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
%     end
%     for p = 1: size(kinetics_down)
%         dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
%     end
%     SE_het18_net_kinetics = [net_kinetic_up;dumb_net_down];
%     SE_het18_kinetics = [kinetic_up;dumb_down];
%     
%     avg_tra1in = interp1(time_scaled1,avg_tra1,SE_het18_time_scaled);
%     avg_tra_het = zeros(size(SE_het18_time_scaled,1),1);
%     avg_tra_up_het = zeros(size(SE_het18_time_scaled,1),1);avg_tra_down_het = avg_tra_up_het;
%     SE_het18_avg_tra_mean = avg_tra_up_het;
%     avg_tra_het(:,1) = avg_tra1in;
%     for i = 1:size(SE_het18_time_scaled,1)
%         SE_het18_avg_tra_mean(i) = mean(avg_tra_het(i,:));
%         avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(1); %input number of samples
%         avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(1);
%     end
%     dumb_net_down = avg_tra_down_het;
%     for p = 1: size(avg_tra_down_het)
%         dumb_net_down(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
%     end
%     SE_het18_avg_tra = [avg_tra_up_het;dumb_net_down];
%     SE_het18_time = [SE_het18_time_scaled;sort(SE_het18_time_scaled,'descend')];
%     
%     SE_het18_group_letter = repmat('het0218',size(inM1,1),1);
end

%%
% 
% % %
% % if sample_num == 14
% %     Mm_total = [Mm1 Mm2 Mm3 Mm4 Mm5 Mm6 Mm7 Mm8 Mm9 Mm10 Mm11 Mm12 Mm13 Mm14];
% %     maxNtotal = [maxN1 maxN2 maxN3 maxN4 maxN5 maxN6 maxN7 maxN8 maxN9 maxN10 maxN11 maxN12 maxN13 maxN14];
% %     maxMtotal = [max_amp1;max_amp2;max_amp3;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8;max_amp9;max_amp10;max_amp11;max_amp12;max_amp13;max_amp14];
% % 
% %     grp1 = [ones(1, length(Mm1)) 2*ones(1,length(Mm2)) 3*ones(1,length(Mm3)) 4*ones(1,length(Mm4)) 5*ones(1,length(Mm5)) 6*ones(1,length(Mm6)) 7*ones(1,length(Mm7)) 8*ones(1,length(Mm8)) 9*ones(1,length(Mm9)) 10*ones(1,length(Mm10)) 11*ones(1,length(Mm11)) 12*ones(1,length(Mm12)) 13*ones(1,length(Mm13)) 14*ones(1,length(Mm14))];
% %     grp1 = grp1';
% %     figure
% %     boxplot(Mm_total,grp1,'Labels',{'het1','het2','het3','het4','hz_p1','hz_p2','hz_p3','hz_m1','hz_m2','hz_m3','hz_m4','hz_m5','hz_p4','hz_p5'})
% %     title('Pm')
% %     
% %     grp2 = [ones(1, length(maxN1)) 2*ones(1,length(maxN2)) 3*ones(1,length(maxN3)) 4*ones(1,length(maxN4)) 5*ones(1,length(maxN5)) 6*ones(1,length(maxN6)) 7*ones(1,length(maxN7)) 8*ones(1,length(maxN8)) 9*ones(1,length(maxN9)) 10*ones(1,length(maxN10)) 11*ones(1,length(maxN11)) 12*ones(1,length(maxN12)) 13*ones(1,length(maxN13)) 14*ones(1,length(maxN14))];
% %     grp2 = grp2';
% %     figure
% %     boxplot(maxNtotal,grp2,'Labels',{'het1','het2','het3','het4','hz_p1','hz_p2','hz_p3','hz_m1','hz_m2','hz_m3','hz_m4','hz_m5','hz_p4','hz_p5'})
% %     title('Nm') 
% %     
% %     grp3 = [ones(1, length(max_amp1)) 2*ones(1,length(max_amp2)) 3*ones(1,length(max_amp3)) 4*ones(1,length(max_amp4)) 5*ones(1,length(max_amp5)) 6*ones(1,length(max_amp6)) 7*ones(1,length(max_amp7)) 8*ones(1,length(max_amp8)) 9*ones(1, length(max_amp9)) 10*ones(1,length(max_amp10)) 11*ones(1,length(max_amp11)) 12*ones(1,length(max_amp12)) 13*ones(1,length(max_amp13)) 14*ones(1,length(max_amp14))];
% %     grp3 = grp3';
% %     figure
% %     boxplot(maxMtotal,grp3,'Labels',{'het1','het2','het3','het4','hz_p1','hz_p2','hz_p3','hz_m1','hz_m2','hz_m3','hz_m4','hz_m5','hz_p4','hz_p5'})
% %     title('maxP')
% %     
% %     grp1 = [ones(1, length(Mm_1)) 2*ones(1,length(Mm_2)) 3*ones(1,length(Mm_3)) 4*ones(1,length(Mm_4)) 5*ones(1,length(Mm_5)) 6*ones(1,length(Mm_6))];% 7*ones(1,length(Mm_7)) 8*ones(1,length(Mm_8))];
% %     grp1 = grp1';
% %     figure
% % %     boxplot(Mm_total,grp1,'Labels',{'het1','het2','het3','het4','hz1','hz2','hz3','hz4'})
% %     boxplot(Mm_total,grp1,'Labels',{'het12','het15','het18','hz9','hz15','hz17'})
% %     grp2 = [ones(1, length(maxN1)) 2*ones(1,length(maxN2)) 3*ones(1,length(maxN3)) 4*ones(1,length(maxN4)) 5*ones(1,length(maxN5)) 6*ones(1,length(maxN6))];% 7*ones(1,length(maxN7)) 8*ones(1,length(maxN8))];
% %     grp2 = grp2';
% %     grp3 = [ones(1, length(max_amp1)) 2*ones(1,length(max_amp2)) 3*ones(1,length(max_amp3)) 4*ones(1,length(max_amp4)) 5*ones(1,length(max_amp5)) 6*ones(1,length(max_amp6))];% 7*ones(1,length(maxN7)) 8*ones(1,length(maxN8))];
% %     grp3 = grp3';
% %     figure
% % %     boxplot(maxNtotal,grp2,'Labels',{'het1','het2','het3','het4','hz1','hz2','hz3','hz4'})
% %     boxplot(maxMtotal,grp3,'Labels',{'het12','het15','het18','hz9','hz15','hz17'})
% % end

% if sample_num == 4
% %     Mm_het1 = mean(Mm1);Mm_het2 = mean(Mm2);Mm_het3 = mean(Mm3);
% %     Mm_hz1= mean(Mm4);Mm_hz2 = mean(Mm5);Mm_hz3 = mean(Mm6);
% %     Mm_total = [Mm_het1 Mm_het2 Mm_het3 Mm_hz1 Mm_hz2 Mm_hz3];
%     inMtotal = [inM1;inM2;inM3;inM4];
% %     grp = [ones(1, length(Mm_het1)) 2*ones(1,length(Mm_het2)) 3*ones(1,length(Mm_het3)) 4*ones(1,length(Mm_hz1)) 5*ones(1,length(Mm_hz2)) 6*ones(1,length(Mm_hz3))];
% %     grp = grp';
%     grp = [ones(1, length(inM1)) 2*ones(1,length(inM2)) 3*ones(1,length(inM3)) 4*ones(1,length(inM4))]; % 5*ones(1,length(inM5)) 6*ones(1,length(inM6))
%     grp = grp';
% %     figure 
% %     boxplot(Mm_total,grp,'Labels',{'het12','het15','het18','hz9','hz15','hz17'})
%     figure 
%     boxplot(inMtotal,grp,'Labels',{'1','2','3','4'})
% %     boxplot(inMtotal,grp,'Labels',{'het1','het2','het3','hz1','hz2','hz3'})
% title('sna minimal enhancer, MS2 allele(III)/snaSEmin')
% ylabel('nascent mRNA production (a.u.)')
% end 

if sample_num == 6
    inMtotal = [inM1;inM2;inM3;inM4;inM5;inM6];
%     grp = [ones(1, length(Mm_het1)) 2*ones(1,length(Mm_het2)) 3*ones(1,length(Mm_het3)) 4*ones(1,length(Mm_hz1)) 5*ones(1,length(Mm_hz2)) 6*ones(1,length(Mm_hz3))];
%     grp = grp';
    grp = [ones(1, length(inM1)) 2*ones(1,length(inM2)) 3*ones(1,length(inM3)) 4*ones(1,length(inM4)) 5*ones(1,length(inM5)) 6*ones(1,length(inM6))];
    grp = grp';
    figure 
    boxplot(inMtotal,grp,'Labels',{'hz','het1','het2','het3','het4','het5'})
title('sna shadow enhancer, MS2 allele(III)')
ylabel('nascent mRNA production (a.u.)')
end 

%%
if sample_num == 8
    max_amptotal = [max_amp1;max_amp2;max_amp3;max_amp4;max_amp5;max_amp6;max_amp7;max_amp8];
    inMtotal = [inM1;inM2;inM3;inM4;inM5;inM6;inM7;inM8];
    grp = [ones(1, length(max_amp1)) 2*ones(1,length(max_amp2)) 3*ones(1,length(max_amp3)) 4*ones(1,length(max_amp4)) 5*ones(1,length(max_amp5)) 6*ones(1,length(max_amp6)) 7*ones(1,length(max_amp7)) 8*ones(1,length(max_amp8))];
    grp = grp';
    figure 
    boxplot(max_amptotal,grp,'Labels',{'hetz1','het2','het3','hz1','hz2','hz3','hz4','hz5'})
    title('sna shadow enhancer, MS2 allele(III)')
    ylabel('maximum amplitude (a.u.)')
    figure 
    boxplot(inMtotal,grp,'Labels',{'hetz1','het2','het3','hz1','hz2','hz3','hz4','hz5'})
    title('sna shadow enhancer, MS2 allele(III)')
    ylabel('nascent mRNA production (a.u.)')
end 

%%
% if sample_num == 3
% %     inMtotal = [inM1;inM2;inM3];
%     inMtotal = [max_amp1;max_amp2;max_amp3];
% %     grp = [ones(1, length(Mm_het1)) 2*ones(1,length(Mm_het2)) 3*ones(1,length(Mm_het3)) 4*ones(1,length(Mm_hz1)) 5*ones(1,length(Mm_hz2)) 6*ones(1,length(Mm_hz3))];
% %     grp = grp';
%     grp = [ones(1, length(inM1)) 2*ones(1,length(inM2)) 3*ones(1,length(inM3))];
%     grp = grp';
%     figure 
%     boxplot(inMtotal,grp,'Labels',{'1','2','3'})
%     title('sna shadow enhancer, MS2 allele(III) homozygous')
%     ylabel('RNA production (a.u.)')
% %     figure
% %     plot([0 time1],avg_tra1)
% %     hold on
% %     plot([0 time2],avg_tra2)
% %     hold on
% %     plot([0 time3],avg_tra3)
% ylabel('Signal Intensity');xlabel('Time')
% % title('Average Trajectory')
% % 
% % time_initial = [t_init1;t_init2;t_init3];
% % duration_trans = [d_trans1;d_trans2;d_trans3];
% end 
%%
if sample_num == 3
    SE_endo_hz_nc13_group = [ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3))];
    SE_endo_hz_nc13_maxtotal = [max_amp1;max_amp2;max_amp3];
    SE_endo_hz_nc13_inMtotal = [inM1;inM2;inM3];
    
    SE_endo_hz_nc13_time_initial = [t_init1;t_init2;t_init3];
    SE_endo_hz_nc13_duration_trans = [d_trans1;d_trans2;d_trans3];

    % figure, boxplot(SEmin_het_inMtotal,SEmin_het_group)
    % figure, boxplot(SEmin_het_maxtotal,SEmin_het_group)
    
    SE_endo_hz_nc13_time_scaled = sort([time_scaled1;time_scaled2;time_scaled3],'ascend');
    SE_endo_hz_nc13_time_scaled = SE_endo_hz_nc13_time_scaled(4:size(SE_endo_hz_nc13_time_scaled)); %change depends on sample group size
    net_count1in = interp1(time_scaled1,net_count1,SE_endo_hz_nc13_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE_endo_hz_nc13_time_scaled);
    net_count3in = interp1(time_scaled3,net_count3,SE_endo_hz_nc13_time_scaled);
    count1in = interp1(time_scaled1,count1,SE_endo_hz_nc13_time_scaled);count2in = interp1(time_scaled2,count2,SE_endo_hz_nc13_time_scaled);
    count3in = interp1(time_scaled3,count3,SE_endo_hz_nc13_time_scaled);
    net_kinetic = zeros(size(SE_endo_hz_nc13_time_scaled,1),3);kinetic = zeros(size(SE_endo_hz_nc13_time_scaled,1),3);
    net_kinetic_up = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
    kinetic_up = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);kinetics_down = net_kinetic_up;
    SE_endo_hz_nc13_net_kinetics_mean = net_kinetic_up;
    SE_endo_hz_nc13_kinetics_mean = kinetic_up;
    net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;net_kinetic(:,3) = net_count3in;
    kinetic(:,1) = count1in;kinetic(:,2) = count2in;kinetic(:,3) = count3in;
    for i = 1:size(SE_endo_hz_nc13_time_scaled,1)
        SE_endo_hz_nc13_net_kinetics_mean(i) = mean(net_kinetic(i,:));
        net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(3); %input number of samples
        net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(3);
        SE_endo_hz_nc13_kinetics_mean(i) = mean(kinetic(i,:));
        kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(3); %input number of samples
        kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(3);
    end
    dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
    for p = 1: size(net_kinetics_down)
        dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
    end
    for p = 1: size(kinetics_down)
        dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
    end
    SE_endo_hz_nc13_net_kinetics = [net_kinetic_up;dumb_net_down];
    SE_endo_hz_nc13_kinetics = [kinetic_up;dumb_down];
    
    avg_tra1in = interp1(time_scaled1,avg_tra1,SE_endo_hz_nc13_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE_endo_hz_nc13_time_scaled);
    avg_tra3in = interp1(time_scaled3,avg_tra3,SE_endo_hz_nc13_time_scaled);
    avg_tra_het = zeros(size(SE_endo_hz_nc13_time_scaled,1),3);
    avg_tra_up_het = zeros(size(SE_endo_hz_nc13_time_scaled,1),1);avg_tra_down_het = avg_tra_up_het;
    SE_endo_hz_nc13_avg_tra_mean = avg_tra_up_het;
    avg_tra_het(:,1) = avg_tra1in;avg_tra_het(:,2) = avg_tra2in;avg_tra_het(:,3) = avg_tra3in;
    for i = 1:size(SE_endo_hz_nc13_time_scaled,1)
        SE_endo_hz_nc13_avg_tra_mean(i) = mean(avg_tra_het(i,:));
        avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(3); %input number of samples
        avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(3);
    end
    dumb_net_down = avg_tra_down_het;
    for p = 1: size(avg_tra_down_het)
        dumb_net_down(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
    end
    SE_endo_hz_nc13_avg_tra = [avg_tra_up_het;dumb_net_down];
    SE_endo_hz_nc13_time = [SE_endo_hz_nc13_time_scaled;sort(SE_endo_hz_nc13_time_scaled,'descend')];
    
end
%%
if sample_num == 5
    SE_hz_p_group = [ones(size(inM1));2 * ones(size(inM2));3 * ones(size(inM3));4 * ones(size(inM4));5 * ones(size(inM5))];
    SE_hz_p_maxtotal = [max_amp1;max_amp2;max_amp3;max_amp4;max_amp5];
    SE_hz_p_inMtotal = [inM1;inM2;inM3;inM4;inM5];
    
    % figure, boxplot(SEmin_het_inMtotal,SEmin_het_group)
    % figure, boxplot(SEmin_het_maxtotal,SEmin_het_group)
    
    SE_hz_p_time_scaled = sort([time_scaled1;time_scaled2;time_scaled3;time_scaled4;time_scaled5],'ascend');
    SE_hz_p_time_scaled = SE_hz_p_time_scaled(5:size(SE_hz_p_time_scaled)); %change depends on sample group size
    net_count1in = interp1(time_scaled1,net_count1,SE_hz_p_time_scaled);net_count2in = interp1(time_scaled2,net_count2,SE_hz_p_time_scaled);
    net_count3in = interp1(time_scaled3,net_count3,SE_hz_p_time_scaled);net_count4in = interp1(time_scaled4,net_count4,SE_hz_p_time_scaled);
    net_count5in = interp1(time_scaled5,net_count5,SE_hz_p_time_scaled);
    count1in = interp1(time_scaled1,count1,SE_hz_p_time_scaled);count2in = interp1(time_scaled2,count2,SE_hz_p_time_scaled);
    count3in = interp1(time_scaled3,count3,SE_hz_p_time_scaled);count4in = interp1(time_scaled4,count4,SE_hz_p_time_scaled);
    count5in = interp1(time_scaled5,count5,SE_hz_p_time_scaled);
    net_kinetic = zeros(size(SE_hz_p_time_scaled,1),5);kinetic = zeros(size(SE_hz_p_time_scaled,1),5);
    net_kinetic_up = zeros(size(SE_hz_p_time_scaled,1),1);net_kinetics_down = net_kinetic_up;
    kinetic_up = zeros(size(SE_hz_p_time_scaled,1),1);kinetics_down = net_kinetic_up;
    SE_hz_p_net_kinetics_mean = net_kinetic_up;
    SE_hz_p_kinetics_mean = kinetic_up;
    net_kinetic(:,1) = net_count1in;net_kinetic(:,2) = net_count2in;net_kinetic(:,3) = net_count3in;net_kinetic(:,4) = net_count4in;net_kinetic(:,5) = net_count5in;
    kinetic(:,1) = count1in;kinetic(:,2) = count2in;kinetic(:,3) = count3in;kinetic(:,4) = count4in;kinetic(:,5) = count5in;
    for i = 1:size(SE_hz_p_time_scaled,1)
        SE_hz_p_net_kinetics_mean(i) = mean(net_kinetic(i,:));
        net_kinetic_up(i) = mean(net_kinetic(i,:)) + std(net_kinetic(i,:))/sqrt(5); %input number of samples
        net_kinetics_down(i) = mean(net_kinetic(i,:)) - std(net_kinetic(i,:))/sqrt(5);
        SE_hz_p_kinetics_mean(i) = mean(kinetic(i,:));
        kinetic_up(i) = mean(kinetic(i,:)) + std(kinetic(i,:))/sqrt(5); %input number of samples
        kinetics_down(i) = mean(kinetic(i,:)) - std(kinetic(i,:))/sqrt(5);
    end
    dumb_net_down = net_kinetics_down;dumb_down = kinetics_down;
    for p = 1: size(net_kinetics_down)
        dumb_net_down(p) = net_kinetics_down(size(net_kinetics_down,1)+1-p);
    end
    for p = 1: size(kinetics_down)
        dumb_down(p) = kinetics_down(size(kinetics_down,1)+1-p);
    end
    SE_hz_p_net_kinetics = [net_kinetic_up;dumb_net_down];
    SE_hz_p_kinetics = [kinetic_up;dumb_down];
    
    avg_tra1in = interp1(time_scaled1,avg_tra1,SE_hz_p_time_scaled);avg_tra2in = interp1(time_scaled2,avg_tra2,SE_hz_p_time_scaled);
    avg_tra3in = interp1(time_scaled3,avg_tra3,SE_hz_p_time_scaled);avg_tra4in = interp1(time_scaled4,avg_tra4,SE_hz_p_time_scaled);
    avg_tra5in = interp1(time_scaled5,avg_tra5,SE_hz_p_time_scaled);
    avg_tra_het = zeros(size(SE_hz_p_time_scaled,1),5);
    avg_tra_up_het = zeros(size(SE_hz_p_time_scaled,1),1);avg_tra_down_het = avg_tra_up_het;
    SE_hz_p_avg_tra_mean = avg_tra_up_het;
    avg_tra_het(:,1) = avg_tra1in;avg_tra_het(:,2) = avg_tra2in;avg_tra_het(:,3) = avg_tra3in;avg_tra_het(:,4) = avg_tra4in;avg_tra_het(:,5) = avg_tra5in;
    for i = 1:size(SE_hz_p_time_scaled,1)
        SE_hz_p_avg_tra_mean(i) = mean(avg_tra_het(i,:));
        avg_tra_up_het(i) = mean(avg_tra_het(i,:)) + std(avg_tra_het(i,:))/sqrt(5); %input number of samples
        avg_tra_down_het(i) = mean(avg_tra_het(i,:)) - std(avg_tra_het(i,:))/sqrt(5);
    end
    dumb_net_down = avg_tra_down_het;
    for p = 1: size(avg_tra_down_het)
        dumb_net_down(p) = avg_tra_down_het(size(avg_tra_down_het,1)+1-p);
    end
    SE_hz_p_avg_tra = [avg_tra_up_het;dumb_net_down];
    SE_hz_p_time = [SE_hz_p_time_scaled;sort(SE_hz_p_time_scaled,'descend')];
    
%     SE_hz_m_group_letter = repmat('SE hz nc13',size(inM1,1)+size(inM2,1)+size(inM3,1),1);
end


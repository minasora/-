% �ýű����ڲ��Բ��Ƚ�getMin0��getMin1��Ч��
% test�������ڲ��Բ��������
clc;clear;close;

% ��ʼ��
m = 50:50:500;% �˴������޸����룬����ͬ��ģ�ľ���
dist = [1,0.4,0.6,1.4];% �����޸���ֵ���������·���ͼ����2*2�õ��ģ����Ȳ��ɸ���

% ����ͼ��
for i = 1:4
    [t_r0,t_r1,c_r0,c_r1] = test(m,dist(i));
    
    figure(1);
    subplot(2,2,i)
    plot(m,t_r0,'o-',m,t_r1,'^-');
    xlabel('m');
    ylabel('average time');
    title(['��ͬά����m*n�������������㷨ƽ������ʱ�䣨n=',num2str(dist(i)),'m��']);
    legend('getMin0','getMin1','location','northwest');
    
    figure(2);
    subplot(2,2,i)
    plot(m,c_r0,'o-',m,c_r1,'^-');
    xlabel('m');
    ylabel('compare times');
    title(['��ͬά����m*n�������������㷨ƽ���Ƚϴ�����n=',num2str(dist(i)),'m��']);
    legend('getMin0','getMin1','location','northwest');
end

% ���Բ��������
function [t_result0,t_result1,c_result0,c_result1] = test(m,dist)

% ���첻ͬ��ģ������
n = round(m .* dist);
len = length(m);
% ��¼getMin0����ʱ��ľ���һ��Ϊͬһ����ά���²�ͬMonge���������ʱ��
t0 = zeros(len,20);
% ��¼getMin1����ʱ��ľ���һ��Ϊͬһ����ά���²�ͬMonge���������ʱ��
t1 = zeros(len,20);
% ��¼getMin0�Ƚϴ����ľ���һ��Ϊͬһ����ά���²�ͬMonge����ıȽϴ���
c0 = zeros(len,20);
% ��¼getMin1�Ƚϴ����ľ���һ��Ϊͬһ����ά���²�ͬMonge����ıȽϴ���
c1 = zeros(len,20);

% ���Բ�ͬ��ģ�������㷨�ļ���ʱ��
for i = 1:len
    for j = 1:20
        % ������ɸ�ά���µ�Monge����
        A = genMonge(m(i),n(i));
        % ��¼getMin0�ļ���ʱ����Ƚϴ���
        tic;[~,~,calc_times] = getMin0(A);toc;
        t0(i,j) = toc;
        c0(i,j) = calc_times;
        % ��¼getMin1�ļ���ʱ����Ƚϴ���
        tic;[~,~,calc_times] = getMin1(A);toc;
        t1(i,j) = toc;
        c1(i,j) = calc_times;
    end
end

% ���ά����������ƽ������ʱ��
t_result0 = mean(t0,2)';
t_result1 = mean(t1,2)';
% ���ά����������ƽ���Ƚϴ���
c_result0 = mean(c0,2)';
c_result1 = mean(c1,2)';
end

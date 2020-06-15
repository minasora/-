clear; clc; close all; % �������/�����д���/����ͼ��
% ����isMonge����
wiki_monge = [10,17,13,28,23;17,22,16,29,23;24,28,22,34,24;11,13,6,17,7;45,44,32,37,23;36,33,19,21,6;75,66,51,53,34];
wiki_flag = isMonge(wiki_monge);
fprintf('ά���ٿƵ�Monge�����������Խ��Ϊ��%d\n',wiki_flag);

% ����genMonge����
% ���Բ�ͬ��С������
m = 50:50:500;
n = round(repmat(m,3,1).*[1,1.4,0.6]');
num_m = length(m);
num_n_type = size(n,1);
num_sample = 20; % ÿ���ߴ����������10��
flag = zeros(num_m,num_sample,num_n_type); % ��ʼ���߼�ֵ����
for i = 1:num_n_type
    for j = 1:num_m
        for k = 1:num_sample
            temp = genMonge(m(j),n(i,j)); % ����Monge����
            flag(j,k,i) = isMonge(temp); % �ж����ɵ������Ƿ�ΪMonge����
        end
    end
end
fprintf('genMonge(m,n)�������ɵ������Ƿ�ȫ��ͨ����%d\n',all(flag,'all'));
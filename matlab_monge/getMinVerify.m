% �ýű����ڲ���getMin0,getMin1��ȷ��
clc;clear;close;

% ��ʼ��������Monge����
m = 50:50:500;
dist = 2;
len = length(m);
n = m - dist;

% ���Բ�ͬ��ģ�������㷨����ȷ��
for i = 1:len
    for j = 1:20
        % ������ɸ�ά���µ�Monge����
        A = genMonge(m(i),n(i));
        % ����getMin0��getMin1,�Լ�min����
        [a0,b0,~] = getMin0(A);
        [a1,b1,~] = getMin1(A);
        [a,b] = find(A == min(min(A)));
        if (a0 == a(1)) && (b0 == b(1))
            fprintf('getMin0�������ȷ\n');
        else
            fprintf('getMin0���������\n');
        end
        if (a1 == a(1)) && (b1 == b(1))
            fprintf('getMin1�������ȷ\n');
        else
            fprintf('getMin1���������\n');
        end
    end
end
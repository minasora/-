function [a,b,calc_times] = getMin0(A)
% [a,b,calc_times] = getMin0(A)
% ���ؾ���A����СԪ�ص���������
% ʵ��MATLAB���ú���min�����ݹٷ�˵�������ж����СԪ�أ�ֻ���ص�һ��Ԫ�ص���������

% ��ȡ����A������������
[m,n] = size(A); 

% ��ʼ������
min_val = A(1,1);
min_row = 1;
min_col = 1;
calc_times = 0;

% ����Ѱ����Сֵ
for i = 1:m
    for j = 1:n
       temp = A(i,j);
       if temp < min_val
          min_val = temp;
          min_row = i;
          min_col = j;
       end
    end
    calc_times = calc_times + n;
end

% ������СԪ��λ��
a = min_row;
b = min_col;
end


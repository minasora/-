function A = genMonge(m,n)
% Monge = genMonge(m,n)
% �������Ԫ��Ϊ��Ȼ����m*n��Monge����A

A_c1 = round(rand(m,1)*50); % ������ɾ���A�ĵ�һ��
rand_diff = round(rand(m,n)*30)-15; % ��������������еĲ�־���
sort_diff = sort(rand_diff,'descend'); % ����־���������
A = cumsum([A_c1,sort_diff],2);% �þ���A�ĵ�һ�м����ۻ���־���õ�Monge����A
if any(A < 0, 'all') % �������ɵľ���A���Ƿ���ڸ���
    A = A + abs(min(A,[],'all')) + round(rand(1,1)*10); % ������С�ĸ����ľ���ֵ��ʹ����A����Ԫ��Ϊ��Ȼ��
end
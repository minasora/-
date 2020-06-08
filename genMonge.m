function A = genMonge(m,n)
% Monge = genMonge(m,n)
% �������Ԫ��Ϊ��Ȼ����m*n��Monge����A

M = round(rand(m,1)*100); % ������ɾ���A�ĵ�һ��
rand_diff = round(rand(m,n-1)*50)-25; % ��������������еĲ�־���
sort_diff = sort(rand_diff,'descend'); % ����־���������
A = repmat(M,1,n) + [zeros(m,1),cumsum(sort_diff,2)]; % �þ���A�ĵ�һ�м����ۻ���־���õ�Monge����A
if any(A < 0, 'all') % �������ɵľ���A���Ƿ���ڸ���
    A = A + abs(min(A,[],'all')); % ������С�ĸ����ľ���ֵ��ʹ����A����Ԫ��Ϊ��Ȼ��
end
function flag = isMonge(A)
% flag = isMonge(A)
% �ж���������Ƿ�ΪMonge�������1��ʾ�ǣ�0��ʾ���ǡ�

diffA = diff(A,1,2); % ����Aÿ�������еĲ�־���
sort_diffA = sort(diffA,'descend'); % �Բ�־�����н�������
flag = all(diffA==sort_diffA,'all'); % ������A�����������еĲ���������ݼ�����˵������AΪMonge����
end
%��������Ӧ�Ⱥ���
%���������pop:��Ⱥ��fitvalue:��Ⱥ��Ӧ��
%���������bestindividual:��Ѹ��壬bestfit:�����Ӧ��ֵ
function [bestindividual,bestfit] = GA_best_indi(pop,fitvalue)
[px,py] = size(pop);
bestindividual = pop(1,:);
bestfit = fitvalue(1);
for i = 2:px
    if fitvalue(i)>bestfit
        bestindividual = pop(i,:);
        bestfit = fitvalue(i);
    end
end
%���ѡ���µĸ���
%���������pop��������Ⱥ��fit_value����Ӧ��ֵ
%���������newpopѡ���Ժ�Ķ�������Ⱥ
function newpop=selection(pop,fit_value)
pro_fit_value=fit_value/sum(fit_value);
cum_fit_value=cumsum(pro_fit_value);
%pop numbers
temp=sort(rand(size(pop,1),1));
newpop=[];
for i=1:size(pop,1)
    if i==1
         pop_num(i)=size(find(temp<=cum_fit_value(i)),1);
    else
        pop_num(i)=size(find((cum_fit_value(i-1)<temp)&(temp<=cum_fit_value(i))),1);
    end
    if pop_num(i)>0
            for j=1:pop_num(i)
            newpop=[newpop;pop(i,:)];
            end
    end
end
    
        


    

%������ת����ʮ���ƺ���
%�����������������Ⱥ���߽磬���볤��
%���������ʮ������ֵ
function pop_value=matrix_bin2dec(pop,Umax,Umin,encode_length)
[pop_que,pop_len]=size(pop);
for i =1:pop_len
    pop_temp(:,i)=pop(:,i).*2^(pop_len-i);
end
pop_dec=sum(pop_temp,2);
pop_value=pop_dec/(2^encode_length-1).*(Umax-Umin)+Umin;

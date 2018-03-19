%二进制转化成十进制函数
%输入变量：二进制种群，边界，编码长度
%输出变量：十进制数值
function pop_value=matrix_bin2dec(pop,Umax,Umin,encode_length)
[pop_que,pop_len]=size(pop);
for i =1:pop_len
    pop_temp(:,i)=pop(:,i).*2^(pop_len-i);
end
pop_dec=sum(pop_temp,2);
pop_value=pop_dec/(2^encode_length-1).*(Umax-Umin)+Umin;

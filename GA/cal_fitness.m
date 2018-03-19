%计算函数目标值
%输入变量：十制数值
%输出变量：目标函数值
function object_value=cal_fitness(x)
object_value=10*sin(5*x)+7*abs(x-5)+10;
%object_value=x.*x;

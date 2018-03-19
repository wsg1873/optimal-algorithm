%this is a gray convert to binary.
%binary is a data, '0001',data(1)=0
%we use the reverse quene
function x_bin=my_gray2bin(x_gray)
x_len=length(x_gray);
x_bin(1)=x_gray(1);
for i =1:x_len-1
    %bin2dec(x_bin(i)) x_bin(i) is bin,so we should convert to decimal 
    temp1=bin2dec(x_bin(i));
    temp2=bin2dec(x_gray(i+1));
    x_bin(i+1)=dec2bin(xor(temp1,temp2));
end
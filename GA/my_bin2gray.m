%this is a binary convert to gray.
%binary is a data, '0001',data(1)=0
%we use the reverse quene
function x_gray=my_bin2gray(x_bin)
x_len=length(x_bin);
for i =x_len:-1:2
    %bin2dec(x_bin(i)) isx_bin(i) is bin,so we should convert to decimal 
    x_gray(i)=dec2bin(xor(bin2dec(x_bin(i)),bin2dec(x_bin(i-1))));
end
x_gray(1)=x_bin(1);
    

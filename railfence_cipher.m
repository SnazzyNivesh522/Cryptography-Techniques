clc;
clear all;
close all;
prompt="Enter your message:";
X=input(prompt,'s');
n=length(X);
%encrypt
if (mod(n,2)==0)
    encrypt=reshape(X,2,[]);
    tr=transpose(encrypt);
    new_X=fliplr(reshape(tr,1,[]));
else
    X=[X 'z'];
    encrypt=reshape(X,2,[]);
    tr=transpose(encrypt);
    new_X=fliplr(reshape(tr,1,[]));
end
disp(encrypt);
disp(new_X);

%decrypt
flp=fliplr(new_X);
decrypt=reshape(new_X,[],2);
tr2=transpose(decrypt);
Z=reshape(tr2,1,[]);
disp(fliplr(Z));

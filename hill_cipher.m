clc;
clear all;
close all;
prompt="Enter your message:";
plaintext=input(prompt,'s');
l=length(plaintext);
key=[5 11;20 11];
lk=length(key);
%ENCRYPTION
if (mod(l,lk)~=0)
    plaintext=[plaintext 'z'*ones(1,1)];
end
pt=double(plaintext)-65;
rsh=reshape(pt,lk,[]);
C=key*rsh;
C1=mod(C,26);
C2=reshape(C1,1,[]);
cipher=char(C2+65);
cipher

%DECRYPTION
adj=mod(adjoint(key),26);
Kinv=mod(modinv(key,26)*adj,26);
ci=single(cipher)-65;
rsh=reshape(ci,lk,[]);
D=Kinv*rsh;
D1=mod(D,26);
D2=reshape(D1,1,[]);
decipher=char(D2+65);
decipher








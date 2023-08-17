function x=modinv(key,N)
[row,column]=size(key);
if row~=column
    error("key matrix is not square");
end
d=round(det(key));
if d<0
    d=mod(d,N);
end
if gcd(d,N)~=1
    error("Inverse of KEY does not exist")
end
x=1;
while 1
    if (mod(x*d,N)==1)
        break;
    else
        x=x+1;
    end

end
end
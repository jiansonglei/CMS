function freHash=cal_freHash(data)
dim=size(data);
d=dim(2);
n=length(unique(data));
keyset={};
valueset=zeros(1,n);
k=1;
for i=1:d
    vector=data(:,i);
    set=unique(vector);
    vec_n=length(set);
    for j=1:vec_n
        M=find(vector==set(j));
        feq=length(M);   
        keyset(k)={[num2str(i),'_',num2str(set(j))]};
        valueset(k)=feq;
        k=k+1;
    end
    
    
end
freHash=containers.Map(keyset,valueset);
%keys(freHash)
%values(freHash)
end
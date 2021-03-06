% Test factors

% Load data from generate_ferrors
clear; clc;
load jlndata; 
ind         = 132+(6:15); % "duplicate" series to remove    
data(:,ind) = []; 
names(ind)  = [];
xt          = data;

% Estimate factors
[e,fhat,lf,vf] = jln_factors(xt,20,2,2);
[e,ghat,lg,vg] = jln_factors(xt.^2,20,2,2);


jln_fhat = fhat;


[ic1,chat,fhat,eigval]  = jln_nbplog(xt,20,2,2);

icstar    = ic1;

[ehat,Fhat,lamhat,ve2]  = jln_pc(jln_standard(xt),icstar);




%%%%%%%
% from testnfac.m
clear; clc;

r=4;
N=100;
T=50;
randn('state',999);

e = randn(T,N);
f = randn(T,r);
lambda = randn(N,r);
x = f*lambda'+e;

kmax=10;
gnum = 2;
demean=2;
fprintf('Demean %d \n',demean);
disp('Determining number of factors');
fprintf('T= %d N= %d r = %d \n', size(x), r)


[nfac1, Chat, Fhat1, ev1] = jln_nbplog(x,kmax,gnum,demean);
[nfac, icval, Fhat, Lhat, eigval] = bninfocrit(x,kmax,gnum,demean);

for i=1:8
  disp([jln_nbplog(x, kmax, i, demean)]);
end 

for i=1:8
  disp([bninfocrit(x, kmax, i, demean)]);
end

bnicv = zeros(kmax,1);
for k = 1:kmax
    bnicv(k) = bnic(x, k, gnum, demean);
end

bnicmin = min(bnicv);
numfac = minind(bnicv);
    


[T, N] = size(x);


x = randn(4,3);
xx = x'*x;


[U, S, V] = svd(xx);
[E, D] = eigsort(xx);

%disp([U, E])
%disp([S, D])


mean(sum(x.*x /T))


test1 = jln_mlags(yt(:, i), py);
test2 = mlag(yt(:,i), py);



Year = 1959:1:2011;
Month = 1:1:12;
Day = 15;


t = datetime(Year,Month,Day,'Format','eeee, MMMM d, y');






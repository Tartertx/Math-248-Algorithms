n = 100000

p = 0.99;
k = 1:n;
geomSer = p.^k;
trueVal = 1/(1-p);
trueSer = trueVal.*ones(1,n);

figure
axis tight
plot(k,trueSer,'r-','LineWidth',2)
hold on
plot(k,cumsum(geomSer),'b-','LineWidth',2)
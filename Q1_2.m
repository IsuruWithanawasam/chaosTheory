clc;clear all;close all;

%x_n1=r.x_n*(1-x_n);

r=[1:0.001:4];

x_n=0.5;
x_n_ar=[];
ite=200;

for j=1:length(r)
    
    for i=1:ite
      x_n1=r(j)*x_n*(1-x_n);
      x_n= x_n1; 
    end
    x_n_ar(j)=x_n;
end

plot(r,x_n_ar,'.-');
xlabel('r');
ylabel('Population after 200 iterations');
    
  
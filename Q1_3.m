clc;clear all;close all;

ite=50;
r=3.6;
    
x_n2=(0.05:0.05:0.95);
x_n=x_n2(19)

x_n1_ar=[];
for i=1:ite
  x_n1=r*x_n*(1-x_n);
  x_n1_ar(i)=x_n1;
  x_n= x_n1; 
end    
plot(x_n1_ar,'.-');
hold on;
xlabel('Number of iterations');
ylabel('Polpulation');
    
  
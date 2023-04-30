clc;clear all;close all;

%x_n1=r.x_n*(1-x_n);

r_a=[0.5,1.0,2.0,3.0,3.5,3.55,3.6,3.7,3.8,3.9,3.95,3.99,3.999,3.9999,4,4.1,4.2,4.5,5];

ite=200
iteray=1:1:200
r=r_a(16)
    
x_n=0.5;
x_n1_ar=[];
for i=1:ite
  x_n1=r*x_n*(1-x_n);
  x_n1_ar(i)=x_n1;
  x_n= x_n1; 
end    
plot(iteray,x_n1_ar);
hold on;
xlabel('Number of iterations');
ylabel('Polpulation');
    
 x_n1_ar 
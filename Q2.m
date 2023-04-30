clc;clear all;close all;

% Define the initial conditions and time range
v_c0 = [1, 0, 0];
tspan = [0, 100];


% Use the Runge-Kutta method to solve the equations
[t,v_c] = ode45(@(t,v_c) chua(t, v_c), tspan, v_c0);

% Store the value of one state variable at the final time step
vc1=v_c(:,1);
vc2=v_c(:,2);
iL=v_c(:,3);

% Plot the bifurcation diagram
figure(1);
plot(vc1,vc2);
xlabel('V_{c1}');
ylabel('V_{c2}');

figure(2);
plot(vc1,iL);
xlabel('V_{c1}')
ylabel('i_L')

figure(3);
plot(vc2,iL);
xlabel('V_{c2}');
ylabel('i_L');

figure(4);
plot3(vc1,vc2,iL);
xlabel('V_{c1}');
ylabel('V_{c2}');
zlabel('i_L');

figure(5);
plot(t,vc1);
xlabel('t');
ylabel('V_{c1}');

figure(6);
plot(t,vc2);
xlabel('t');
ylabel('V_{c2}');

figure(7);
plot(t,iL);
xlabel('t');
ylabel('i_L');

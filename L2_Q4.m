close, clear, clc;
c = 2*(rand-0.5);
k = 6*rand-1;
xd1 = 5;
lamb = 1;
phi = 0.1;
K = 200;

tf = 10;
t_step = 1e-3;
sim('L2_Q4_Sim.slx');

figure(1), set(gcf,'color','white');
plot(t,x1,'k',t,x2,'r'), grid on, legend('x_{1}','x_{2}');
ylabel('Amplitude'), xlabel('Time [s]'), title('System States');

figure(2), set(gcf,'color','white');
plot(x1,x2,'k'), grid on;
ylabel('x_{2}'), xlabel('x_{1}'), title('State Space');

figure(3), set(gcf,'color','white');
plot(t,s,'k'), grid on;
ylabel('Amplitude'), xlabel('Time [s]'), title('Sliding Surface (s)');
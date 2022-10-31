close, clear, clc;
ts = 1;
Mp = 0.15;

K1 = 8 / ts;
K0 = (4/ts)^2 + (4*pi/(ts*log(Mp)))^2;
xd1 = 5;

tf = 3;
t_step = 1e-3;
sim('L2_Q2_Sim.slx');

figure(1); set(gcf,'color','white');
plot(t,x1,'k',t,x2,'r',t,z1,'g'), grid on, legend('x_{1}','x_{2}','z_{1}');
ylabel('Amplitude'), xlabel('Time [s]'), title('System States');


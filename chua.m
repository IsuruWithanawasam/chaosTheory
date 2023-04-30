% Define the Chua's circuit model equations as a function
function dv_c = chua(t, v_c)
    G=0.7; C1=(1/9); C2=1; L=(1/7);
    dv_c = zeros(3,1);
    dv_c(1) = (G*(v_c(2) - v_c(1)) - h(v_c(1)))/C1;
    dv_c(2) = (G*(v_c(1) - v_c(2)) + v_c(3))/C2;
    dv_c(3) = -(1/L)*v_c(2);
end

function y = h(v_c)
    m0=-0.5; m1=-0.8; Bp=1; v_R=v_c;
    y=m0*v_R+(m1-m0)*(abs(v_R+Bp)-abs(v_R-Bp))/2;
end
% Dane 3:
R1_3 = 156e3;
R2_3 = 260e3;
R3_3 = 4e3;
C_3 = 0;

[w1_3,w2_3,H_3,N3,D3,cN3,cD3] = ftransfer(R1_3,R2_3,R3_3,C_3);
chart(cN3,cD3);

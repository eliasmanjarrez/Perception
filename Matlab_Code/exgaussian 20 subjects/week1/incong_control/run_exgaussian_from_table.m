z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,1:1);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','B1:B3');
incong_CONTROL1_1_epdf=[xx,yy]; 
save incong_CONTROL1_1_epdf.txt -ascii incong_CONTROL1_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,2:2);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','C1:C3');
incong_CONTROL2_1_epdf=[xx,yy]; 
save incong_CONTROL2_1_epdf.txt -ascii incong_CONTROL2_1_epdf; 

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,3:3);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','D1:D3');
incong_CONTROL3_1_epdf=[xx,yy]; 
save incong_CONTROL3_1_epdf.txt -ascii incong_CONTROL3_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,4:4);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','E1:E3');
incong_CONTROL4_1_epdf=[xx,yy]; 
save incong_CONTROL4_1_epdf.txt -ascii incong_CONTROL4_1_epdf;
 
z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,5:5);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','F1:F3');
incong_CONTROL5_1_epdf=[xx,yy]; 
save incong_CONTROL5_1_epdf.txt -ascii incong_CONTROL5_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,6:6);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','G1:G3');
incong_CONTROL6_1_epdf=[xx,yy]; 
save incong_CONTROL6_1_epdf.txt -ascii incong_CONTROL6_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,7:7);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','H1:H3');
incong_CONTROL7_1_epdf=[xx,yy]; 
save incong_CONTROL7_1_epdf.txt -ascii incong_CONTROL7_1_epdf;


z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,9:9);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','J1:J3');
incong_CONTROL9_1_epdf=[xx,yy]; 
save incong_CONTROL9_1_epdf.txt -ascii incong_CONTROL9_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,10:10);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','K1:K3');
incong_CONTROL10_1_epdf=[xx,yy]; 
save incong_CONTROL10_1_epdf.txt -ascii incong_CONTROL10_1_epdf;

%Los datos del sujeto 11 muestran error para calcular el fit exgaussian por
%un número, pero se soluciona agregando un número
z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,11:11);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','L1:L3');
incong_CONTROL11_1_epdf=[xx,yy]; 
save incong_CONTROL11_1_epdf.txt -ascii incong_CONTROL11_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,12:12);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','M1:M3');
incong_CONTROL12_1_epdf=[xx,yy]; 
save incong_CONTROL12_1_epdf.txt -ascii incong_CONTROL12_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,13:13);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','N1:N3');
incong_CONTROL13_1_epdf=[xx,yy]; 
save incong_CONTROL13_1_epdf.txt -ascii incong_CONTROL13_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,14:14);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','O1:O3');
incong_CONTROL14_1_epdf=[xx,yy]; 
save incong_CONTROL14_1_epdf.txt -ascii incong_CONTROL14_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,16:16);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','Q1:Q3');
incong_CONTROL16_1_epdf=[xx,yy]; 
save incong_CONTROL16_1_epdf.txt -ascii incong_CONTROL16_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,17:17);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','R1:R3');
incong_CONTROL17_1_epdf=[xx,yy]; 
save incong_CONTROL17_1_epdf.txt -ascii incong_CONTROL17_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,18:18);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','S1:S3');
incong_CONTROL18_1_epdf=[xx,yy]; 
save incong_CONTROL18_1_epdf.txt -ascii incong_CONTROL18_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,20:20);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','U1:U3');
incong_CONTROL20_1_epdf=[xx,yy]; 
save incong_CONTROL20_1_epdf.txt -ascii incong_CONTROL20_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,21:21);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','V1:V3');
incong_CONTROL21_1_epdf=[xx,yy]; 
save incong_CONTROL21_1_epdf.txt -ascii incong_CONTROL21_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,22:22);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','W1:W3');
incong_CONTROL22_1_epdf=[xx,yy]; 
save incong_CONTROL22_1_epdf.txt -ascii incong_CONTROL22_1_epdf;

z=readtable('CONTROL_incongruent.xlsx');
zz=z(1:420,23:23);
x=table2array(zz);
exgaussianfit; 
xlswrite('analyzed_data.xlsx', analyzed_data, 'Hoja1','X1:X3');
incong_CONTROL23_1_epdf=[xx,yy]; 
save incong_CONTROL23_1_epdf.txt -ascii incong_CONTROL23_1_epdf;


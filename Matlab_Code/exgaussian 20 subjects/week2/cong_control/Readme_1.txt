"run_exgaussian_from_table.m" calculates the ex-gaussian parameters
and generate the ex-gaussian graphs for each subject
Elias Manjarrez

The primary analysis code is: "run_exgaussian_from_table.m."
which analyzes data contained in the file: "control_congruent.xlsx."
This input file contains the RT reaction time values in milliseconds in the
following order:
1: subject 1 Col B in the file "control_congruent.xlsx."
2: subject 2 Col C in the file "control_congruent.xlsx."
3: subject 3 Col D in the file "control_congruent.xlsx."
4: subject 4 Col E in the file "control_congruent.xlsx."
5: subject 5 Col F in the file "control_congruent.xlsx."
6: subject 6 Col G in the file "control_congruent.xlsx."
7: subject 7 Col H in the file "control_congruent.xlsx."
8: subject 9 Col J in the file "control_congruent.xlsx."
9: subject 10 Col K in the file "control_congruent.xlsx."
10: subject 11 Col L in the file "control_congruent.xlsx."
11: subject 12 Col M in the file "control_congruent.xlsx."
12: subject 13 Col N in the file "control_congruent.xlsx."
13: subject 14 Col O in the file "control_congruent.xlsx."
14: subject 16 Col Q in the file "control_congruent.xlsx."
15: subject 17 Col R in the file "control_congruent.xlsx."
16: subject 18 Col S in the file "control_congruent.xlsx."
17: subject 20 Col U in the file "control_congruent.xlsx."
18: subject 21 Col V in the file "control_congruent.xlsx."
19: subject 22 Col W in the file "control_congruent.xlsx."
20: subject 23 Col X in the file "control_congruent.xlsx."

The output of this code is the Excel file: "analyzed_data.xlsx." 
This output excel file contains in each column the ex-Gaussian
data for each subject, and the rows are the exgaussian parameters
in the following order: 
row 1= sigma
row 2 = tau
row 3 = mu
We manually exported data from "analyzed_data.xlsx" to files termed: "s1.txt, ...,s20.txt,
which are employed to obtain the similarity index matrix.
s1.txt corresponds to subject 1 Col B in file "control_congruent.xlsx."
s2.txt corresponds to subject 2 Col C in file "control_congruent.xlsx."
s3.txt corresponds to subject 3 Col D in file "control_congruent.xlsx."
s4.txt corresponds to subject 4 Col E in file "control_congruent.xlsx."
s5.txt corresponds to subject 5 Col F in file "control_congruent.xlsx."
s6.txt corresponds to subject 6 Col G in file "control_congruent.xlsx."
s7.txt corresponds to subject 7 Col H in file "control_congruent.xlsx."
s8.txt corresponds to subject 9 Col J in file "control_congruent.xlsx."
s9.txt corresponds to subject 10 Col K in file "control_congruent.xlsx."
s10.txt corresponds to subject 11 Col L in file "control_congruent.xlsx."
s11.txt corresponds to subject 12 Col M in file "control_congruent.xlsx."
s12.txt corresponds to subject 13 Col N in file "control_congruent.xlsx."
s13.txt corresponds to subject 14 Col O in file "control_congruent.xlsx."
s14.txt corresponds to subject 16 Col Q in file "control_congruent.xlsx."
s15.txt corresponds to subject 17 Col R in file "control_congruent.xlsx."
s16.txt corresponds to subject 18 Col S in file "control_congruent.xlsx."
s17.txt corresponds to subject 20 Col U in file "control_congruent.xlsx."
s18.txt corresponds to subject 21 Col V in file "control_congruent.xlsx."
s19.txt corresponds to subject 22 Col W in file "control_congruent.xlsx."
s20.txt corresponds to subject 23 Col X in file "control_congruent.xlsx."

An additional output consists of a series of 20 files termed:
"cong_CONTROL1_1_epdf.txt,...,cong_CONTROL1_20_epdf.txt.
These files contain the fitted ex-gaussian functions.

Note:
The primary analysis code "run_exgaussian_from_table.m" we wrote requires the following codes (from Tobias Johansson): exit.m, fmincon.m, and exgaussianfit.m. These codes help fit the ex-Gaussian distribution.


We analyzed 20 subjects (two weeks) for the first article.
Number of congruent trials per week (7 days)= 420 RT.
Number of incongruent trials per week (7 days)= 420 RT of 1260 RT.
We analyzed an equal number of congruent and incongruent trials to compare two groups of equal size correctly.

We have:
Congru 60 RT per day
Incongru 180 RT per day


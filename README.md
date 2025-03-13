## Raw RT Reaction Rime Data, Stroop_Test_Web_sjPsych, and Matlab code of the article:
# "Ex-Gaussian vector metric and similarity index applied to reaction time analysis."
### Elias Manjarrez et al., Perception, 2025

#### Instructions:
The folder Stroop_Test_Web_sjPsych shares the Web-based Stroop test that we developed. We employed
the jsPsych library, which is a powerful JavaScript framework for developing Web-based
behavioral experiments (de Leeuw et al., 2023).
 
The folder *"RT Reaction Time Raw Data"* includes the reaction time values in milliseconds.
This folder includes the folders *"RT Congruent Week1 and Week2"* and *"RT Incongruent Week1 and Week2"*
The Excel file *"control_congruent.xlsx"* contains the RT values for congruent stimuli for both weeks 1 and 2.
The Excel file *"control_icongruent.xlsx"* contains the RT values for incongruent stimuli for weeks 1 and 2.
The files *"Week 1 is from row 1 to row 420.txt"* and *"Week 2 is from row 840 to row 1260"* explain how the data is organized.

#### Crucial first step:
The function "fmincon.m" must be downloaded from the directory: Matlab R20XXb /toobox /shared /optimlib
where XX is the year of the version of the Matlab installed in your computer. For instance, XX=23 is the version R2023b
such function fmincon.m must be placed in the same directory where you run the code.
We included the file "fmincon.m" for 2023R in the folder "Required Matlab function for Matlab 2023R version."
For our software we are employing the free software "exfit.m" elaborated by Tobias Johansson:

**Reference:**
Johansson T (2023) exgfit - Fit ExGaussian distribution to data. 
(https://www.mathworks.com/matlabcentral/fileexchange/70225-exgfit-fit-exgaussian-distribution-to-data),
MATLAB Central File Exchange.

#### Matlab code:
The folder *Matlab_Code* includes:
The *"exgaussian20subjects"* folder contains two files (week 1 and week 2).
The folder *"week1"* contains the files *"cong_control*" and *"incong_control"*.
The folder *"week2"* contains the files *"cong_control"* and *"incong_control"*.
Within each file is a file called *"readme_1.txt"* with instructions
on calculating the ex-gaussian parameters and the fitted ex-gaussian functions.

The *"similarity20subjects"* folder contains two folders
(control_congruent_2_points and control_incongruent_2_points).
These folders contain the Matlab code to calculate the similarity index.
Within each folder is the file *"readme_2.txt"* with instructions
on calculating the similarity index matrix.

We also include code to validate the software developed to calculate the similarity matrix index.
Folder *"Validation of the Similarity Code with identical data."*
*"run_non_zero_similaritites.m"*

#### Citation:
If you use this Matlab program, please cite the following published article:
*Citation will be added soon.*

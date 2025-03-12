"cosine_similarity_mo_missing_data_two_points.m" calculates the similarity index matrix.
Elias Manjarrez

This code reads the files s1.txt, s2.txt,..., and s20.txt, which contain two rows with three columns.
The first row shows the ex-gaussian parameters for week 1 in the following order (sigma,tau,mu).
The second row shows the ex-gaussian parameters for week 2 in the following order (sigma,tau,mu).

This code generates these outputs:
1) "similarity_output.txt" displays the upper triangular part of
    the similarity index matrix in one column. These values can be employed to plot a histogram.
2) "non_zero_similarities_control_congruent.txt", which displays in one column all similarity index values excluding zeros 
    (two triangles of the similarity index matrix) 
3) "similarities_control_congruent.txt," which is the 20x20 array of similarity index values 
     (two triangles of the similarity index matrix). These data contain repeated upper and lower triangular parts, so we do not use this file for the histogram.
4) A 3D graph with all the ex-gaussian vectors
5) "all_sets.txt," which contains all the 20 ex-Gaussian vectors shown in the 3D graph. 
6) A similarity index matrix in colors

Note:
Data in the file "all_sets.txt" in this file are organized in three columns and 40 rows, as follows:

sigma tau mu  (for week 1 subject 1)
sigma tau mu  (for week 2 subject 1)

sigma tau mu  (for week 1 subject 2)
sigma tau mu  (for week 2 subject 2)

... up to

sigma tau mu  (for week 1 subject 20)
sigma tau mu  (for week 2 subject 20)

Note:
We manually obtained the files s1.txt,..., and s20.txt from the first output file, "analyzed_data.xlsx." This is an Excel file containing the data for each subject in each column (as explained in "Readme1.txt"). Briefly, the rows are the exgaussian parameters in the following order: (sigma, tau, mu). The files termed "s1.txt, ..., and s20.txt" were employed to obtain the similarity index matrix.




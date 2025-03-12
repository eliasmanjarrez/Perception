% Define the number of subjects
num_subjects = 20;

% Initialize the similarity index matrix
similarity_matrix = zeros(num_subjects);

% Loop over all pairs of subjects
for i = 1:num_subjects
    for j = i+1:num_subjects
        
        % Load the sets of three points for the two subjects
        set1 = load(sprintf('s%d.txt', i));
        set2 = load(sprintf('s%d.txt', j));
        
        % Calculate the vectors between the three points in each set
        v1_set1 = set1(2,:) - set1(1,:);
        v2_set1 = set1(3,:) - set1(2,:);
        v3_set1 = set1(3,:) - set1(1,:);
        v1_set2 = set2(2,:) - set2(1,:);
        v2_set2 = set2(3,:) - set2(2,:);
        v3_set2 = set2(3,:) - set2(1,:);
        
        % Normalize the vectors
        v1_set1_norm = v1_set1 / norm(v1_set1);
        v2_set1_norm = v2_set1 / norm(v2_set1);
        v3_set1_norm = v3_set1 / norm(v3_set1);
        v1_set2_norm = v1_set2 / norm(v1_set2);
        v2_set2_norm = v2_set2 / norm(v2_set2);
        v3_set2_norm = v3_set2 / norm(v3_set2);
        
        % Calculate the cosine similarity between the three pairs of vectors
        similarity_1 = dot(v1_set1_norm, v1_set2_norm) / (norm(v1_set1_norm) * norm(v1_set2_norm));
        similarity_2 = dot(v2_set1_norm, v2_set2_norm) / (norm(v2_set1_norm) * norm(v2_set2_norm));
        similarity_3 = dot(v3_set1_norm, v3_set2_norm) / (norm(v3_set1_norm) * norm(v3_set2_norm));
        
        % Take the average of the cosine similarities to get the overall similarity index
        similarity_index = (similarity_1 + similarity_2 + similarity_3) / 3;
        
        % Store the similarity index in the similarity index matrix
        similarity_matrix(i,j) = similarity_index;
        similarity_matrix(j,i) = similarity_index;
    end
end

% Calculate the grand average of similarity index and p-value of statistical significance
non_zero_similarities = similarity_matrix(similarity_matrix ~= 0);
similarities = similarity_matrix;
average_similarity = mean(similarities);
average_non_zero_similarities = mean(non_zero_similarities);
grand_average_similarity = mean(average_similarity);
grand_average_non_zero_similarity = mean(average_non_zero_similarities);
std_of_grand_average_similarity = std(average_similarity);
std_of_grand_average_non_zero_similarity = std(non_zero_similarities);
%[h, p] = ttest(similarities, 0.1, 'Tail', 'right'); %aqui se pone el umbral de similarity contra el que se calcula el valor p; como ejemplo está 0.1
[h, p] = ttest(similarities, 0);
P_value_of_grand_average = mean(p);


% Plot the sets of three points in a 3D graph with lines of different colors
%figure;
%hold on
%for i = 1:num_subjects
%    set = load(sprintf('s%d.txt', i));
%    plot3(set(:,1), set(:,2), set(:,3), '-', 'Color', [(i-1)/(num_subjects-1), 0, 1-(i-1)/(num_subjects-1)], 'LineWidth', 2);
%end

% Define the colors to be used
colors = [0 0 1; 1 1 0; 0.5 0.5 0.5; 0 1 1; 0 1 0; 1 0.5 0; 0.5 0.25 0; 1 0.75 0.8; 0.5 0 0.5; 0 0 0; 1 0 0];

% Plot the sets of three points in a 3D graph with lines of different colors
figure;
hold on
for i = 1:num_subjects
    set = load(sprintf('s%d.txt', i));
    plot3(set(:,1), set(:,2), set(:,3), '-', 'Color', colors(mod(i-1, size(colors,1))+1,:), 'LineWidth', 2);
end

% Initialize the matrix to store all sets of three points
all_sets = [];

% Loop over all subjects and append their sets of three points to the matrix
for i = 1:num_subjects
    set = load(sprintf('s%d.txt', i));
    set3d = [set(:,1), set(:,2), set(:,3)];
    all_sets = [all_sets; set3d];
end
% Save the matrix to a file
save('all_sets.txt', 'all_sets', '-ascii');


% Label the axes and set the title
xlabel('sigma (ms)');
ylabel('tau (ms)');
zlabel('mu (ms)');
title('Sets of Three Points for 20 Subjects in 3D Space');

% Set the view angle
view(3);
% Add a legend with the subject numbers
legend_strings = cell(1, num_subjects);
for i = 1:num_subjects
    legend_strings{i} = sprintf('Subject %d', i);
end
legend(legend_strings);

% Display the figure
figure;
imagesc(similarity_matrix, [-1, 1]);
colormap(flipud(jet)); % Use a color map from blue to red
colorbar;

% Label the axes and set the title
xlabel('Subject Number');
ylabel('Subject Number');
title('Similarity Index Matrix for 20 Subjects');

% Display the grand average of similarity index and p-value of statistical significance
fprintf('Grand Average of Similarity Index: %f\n', grand_average_similarity);
fprintf('Grand Average of SD of Similarity Index: %f\n', std_of_grand_average_similarity);
fprintf('P-Value of Statistical Significance: %f\n', P_value_of_grand_average);

% Display the grand average of non_zero_similarity index and p-value of statistical significance
fprintf('Grand Average of non-zero_similarity Index: %f\n', grand_average_non_zero_similarity);
fprintf('Grand Average of SD of non_zero_similarity Index: %f\n', std_of_grand_average_non_zero_similarity);
fprintf('P-Value of Statistical Significance: %f\n', P_value_of_grand_average);

hold off
figure
%histogram(similarities)
histogram(non_zero_similarities)
title('Histogram of similarity index for 20 subjects');
xlabel('Similarity index');
ylabel('Counts');

save similarities_control_congruent.txt similarities -ascii
save non_zero_similarities_control_congruent.txt non_zero_similarities -ascii

% Display the figure



% cosine_similarity_no_missing_data_two_points.m
% Elias Manjarrez 
% (Matlab code for article "Ex-Gaussian vector metric 
% and similarity index applied to reaction time analysis")

% Define the number of subjects
num_subjects = 20;

% Initialize the similarity index matrix
similarity_matrix = zeros(num_subjects);

% Loop over all pairs of subjects
for i = 1:num_subjects
    for j = i+1:num_subjects
        
      % Load the sets of two points for the two subjects
        set1 = load(sprintf('s%d.txt', i));
        set2 = load(sprintf('s%d.txt', j));
        
        % Calculate the vectors between the two points in each set
        v1_set1 = set1(2,:) - set1(1,:);
        v1_set2 = set2(2,:) - set2(1,:);
        
        % Normalize the vectors
        v1_set1_norm = v1_set1 / norm(v1_set1);
        v1_set2_norm = v1_set2 / norm(v1_set2);
        
        % Calculate the cosine similarity between the two vectors
        similarity_index = dot(v1_set1_norm, v1_set2_norm) / (norm(v1_set1_norm) * norm(v1_set2_norm));
        
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
title('Sets of Two Points for 20 Subjects in 3D Space (Congruent)');

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
title('Similarity Index Matrix for 20 Subjects (Congruent)');

% Display the grand average of non_zero_similarity index and p-value of statistical significance
fprintf('Grand Average of non-zero_similarity Index: %f\n', grand_average_non_zero_similarity);
fprintf('Grand Average of SD of non_zero_similarity Index: %f\n', std_of_grand_average_non_zero_similarity);

hold off
figure
%histogram(similarities)
histogram(non_zero_similarities)
title('Histogram of similarity index for 20 subjects (Congruent)');
xlabel('Similarity index');
ylabel('Counts');

save similarities_control_congruent.txt similarities -ascii
save non_zero_similarities_control_congruent.txt non_zero_similarities -ascii

% Display the figure

% Extract the upper triangular part of the similarity matrix, excluding zeros
upper_similarity = similarity_matrix(triu(similarity_matrix, 1) ~= 0);

% Save the upper similarity values to a file
dlmwrite('similarity_output.txt', upper_similarity, 'delimiter', ' ');

% Display a message indicating the successful export
disp('Ex-Gaussian vectors in 3D have been exported to all_sets.txt')
disp('Upper half of the similarity matrix (excluding zeros) has been exported to similarity_output.txt');





data = readtable('F:\exp6\input.txt');
x = data.Var1; 
y = data.Var2; 


coeff_y_on_x = polyfit(x, y, 1);
a1 = coeff_y_on_x(2);
b1 = coeff_y_on_x(1);


coeff_x_on_y = polyfit(y, x, 1);
a2 = coeff_x_on_y(2);
b2 = coeff_x_on_y(1);


r = -sqrt(b1 * b2);


fileID = fopen('F:\exp6\output.txt','w');
fprintf(fileID, 'a1: %f\nb1: %f\na2: %f\nb2: %f\nr: %f\n', a1, b1, a2, b2, r);
fclose(fileID);


disp(['a1: ', num2str(a1)]);
disp(['b1: ', num2str(b1)]);
disp(['a2: ', num2str(a2)]);
disp(['b2: ', num2str(b2)]);
disp(['r: ', num2str(r)]);


figure;
scatter(x, y, 'filled');
hold on;

plot(x, a1 + b1*x, '-r', 'LineWidth', 2);

plot(a2 + b2*y, y, '-b', 'LineWidth', 2);
xlabel('X values');
ylabel('Y values');
legend('Data Points', 'Regression Line (Y on X)', 'Regression Line (X on Y)', 'Location', 'best');
title('Linear Regression and Data Points');


text_x_position = min(x) + (max(x) - min(x)) * 0.05;
text_y_position_y_on_x = min(y) + (max(y) - min(y)) * 0.9; 
text_y_position_x_on_y = min(y) + (max(y) - min(y)) * 0.85; 
text(text_x_position, text_y_position_y_on_x, ['y = ' num2str(a1, '%.2f') ' + ' num2str(b1, '%.2f') 'x'], 'Color', 'red');
text(text_x_position, text_y_position_x_on_y, ['x = ' num2str(a2, '%.2f') ' + ' num2str(b2, '%.2f') 'y'], 'Color', 'blue');

hold off;

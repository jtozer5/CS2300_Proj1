data = dlmread('Amatrix');

row = data(1);
col = data(2);
fprintf('data: ')
disp(data);
fprintf('rows: ');
fprintf('%d\n', row);
fprintf('columns: ')
fprintf('%d\n', col);

matrixA = zeros(rows, col);
% added a i variable that counts through and switched the (r, c) to (c, r) in line 17
i = 3;
for c = 1:col
    for r = 1:row
        matrixA(c, r) = data(i);
        i = i + 1;
    end
end
disp(matrixA);
writematrix(matrixA, 'CS2300P1atozerwillson.outA', 'FileType', 'Text');

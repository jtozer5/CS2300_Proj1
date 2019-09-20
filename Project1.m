dataA = dlmread('Amatrix');
dataB = dlmread('Bmatrix');

rowA = dataA(1);
colA = dataA(2);

rowB = dataB(1);
colB = dataB(2);


matrixA = zeros(rowA, colA);
% added a i variable that counts through and switched the (r, c) to (c, r) in line 17
i = 3;
for c = 1:colA
    for r = 1:rowA
        matrixA(c, r) = dataA(i);
        i = i + 1;
    end
end
fprintf('A matrix: \n')
disp(matrixA);
writematrix(matrixA, 'CS2300P1atozerwillson.outA', 'FileType', 'Text');

matrixB = zeros(rowB, colB);
% added a i variable that counts through and switched the (r, c) to (c, r) in line 17
i = 3;
for c = 1:colB
    for r = 1:rowB
        matrixB(c, r) = dataB(i);
        i = i + 1;
    end
end
fprintf('B matrix \n')
disp(matrixB);
writematrix(matrixB, 'CS2300P1atozerwillson.outB', 'FileType', 'Text');

matrixC = matrixA * 5;
matrixC = matrixC-matrixB;

fprintf('5A-B matrix: \n');
disp(matrixC);
writematrix(matrixC, 'CS2300P1atozerwillson.calc', 'FileType', 'Text');

matrixCTrans = matrixC.';
fprintf('5A-B Transposed: \n');
disp(matrixCTrans);
writematrix(matrixCTrans, 'CS2300P1atozerwillson.trans', 'FileType', 'Text');


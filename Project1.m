%{
Josh Tozer & Nathan Willson
CS 2300 0012
Project 1
Sat Sep 21, 2019 at 11:59 pm
This project reads the matrix A and matrix B data and outputs the following data:
1. Writes matrix A to a file named “CS2300P1atozerwillson.outA”.
2. Write matrix B to a file named “CS2300P1atozerwillson.outB” and to stdout.
3. Calculate 5A – B using the A and B matrices above. Write this result to 
“CS2300P1atozerwillson.calc".
4. Write the transpose of the result in part 3 (just above) to a file 
“CS2300P1atozerwillson.trans”.
%}

dataA = dlmread('Amatrix');
dataB = dlmread('Bmatrix');

rowA = dataA(1);
colA = dataA(2);

rowB = dataB(1);
colB = dataB(2);


matrixA = zeros(rowA, colA);

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


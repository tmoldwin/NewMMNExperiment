X = load('MMNFZNO3.dat');
A = load('MMNLMNO3.dat');
X = [X A];
K = 3;
idxs= [];
for n = 1:100
    idx = kmeans(X,K);
    idxs = [idxs idx]
end

idxs

rowCnt = size(idxs, 1)
columnCnt = size(idxs,2)
matches = zeros(rowCnt, rowCnt); 
for i = 1:rowCnt
    for j = 1:rowCnt
        for k = 1:columnCnt
            if idxs(i, k) == idxs(j,k)
                matches(i,j) = matches(i,j) + 1;
            end
        end
    end
end
matches
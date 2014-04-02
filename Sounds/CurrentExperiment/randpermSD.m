function mat = randpermSD(stdcnts, devcnts, separation); %%standMatrix and dev Matrix are matrices of patterns
numStands = length(stdcnts);
numDevs = length(devcnts);
mat = [];
soundVec = [];
codeVec = [];
%%add standards
for n = 1:numStands
    temp = n .* ones(1,stdcnts(n));
    mat = [mat temp];
end
%%add deviants
for n = 1:numDevs
    temp = n+numStands.* ones(1,devcnts(n));
    mat = [mat temp];
end
%% randomly permute
mat = mat(:,randperm(size(mat,2)));
%%fix invalid placements
for n = 1:length(mat)
    n2 = n; %first check if present placement is kosher
    while(checkValidSwap(mat, n, n2, numStands, separation)==0)
        n2 = ceil(length(mat).*rand());
    end
    mat = swap(mat, n, n2);
end
end

function isClean = checkLocationClean(n, numStands, separation, mat)
isClean = 1;
before = mat(eP(n-separation): eL(n-1,mat));
after = mat(eP(n+1):eL(n+separation,mat));
if((sum(after > numStands) > 0 )|| (sum(before > numStands) > 0))
    isClean = 0;
end
end

function isValid = checkValidSwap(mat, n1, n2, numStands, separation)
isValid = 1;
if mat(n1) > numStands %%if n1 is a deviant
    isValid = checkLocationClean(n2, numStands, separation, mat);
end
if mat(n2) > numStands %%if n1 is a deviant
    isValid = checkLocationClean(n1, numStands, separation, mat);
end
end

function mat = swap(mat,n,r)
num = mat(n);
mat(n) = mat(r);
mat(r) = num;
end

%ensure that index is positive, otherwise assume 1
function out = eP(in)
if(in > 1)
    out = in;
else out = 1;
end
end

%ensure index is less than length of matrix
function out = eL(in, mat)
if(in < length(mat))
    out = in;
else out = length(mat);
end
end
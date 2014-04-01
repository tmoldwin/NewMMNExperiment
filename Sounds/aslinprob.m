x = 0.3660
y = 0.1340
a = ones(1,y * 1000);
b = ones(1, y * 1000) * 2;
c = ones(1, x * 1000) * 3;
d = ones (1, x * 1000) * 4;

    
% a = ones(1,450);
% b = ones(1, 450) * 2;
% c = ones(1, 900) * 3;
% d = ones (1, 900) * 4;

all = [a b c d];
for n = 1:length(all)
    num = all(n);
    r = ceil(length(all).*rand());
    all(n) = all(r);
    all(r) = num;
end


count34 = findstr([3 4], all);
size(count34)
count43 = findstr([4 3], all);
size(count43)
count1 = findstr([1], all);
size(count1)
count2 = findstr([2], all);
size(count1)
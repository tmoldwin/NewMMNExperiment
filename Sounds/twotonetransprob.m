p1 = [1 2]
p2 = [3 4]
p3 = [2 1]
p4 = [2 3]
p5 = [4 1]
p6 = [4 3]

all = [p1;p2;p3;p4;p5;p6]

res = []
for n = 1:100000
    randy = ceil(rand()*6);
    res = [res all(randy)];
end

for n = 1:size(all,1)
    ct = 0;
    pattern = all(n,:);
    for i = 1:length(res)-1
        if(res(i) == pattern(1) && res(i+1) == pattern(2))
            ct = ct + 1;
            i = i + 1;
        end
    end
     ct
end
        
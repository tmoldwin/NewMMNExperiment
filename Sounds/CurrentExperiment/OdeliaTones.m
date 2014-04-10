s1	= [92 88 86];
% % s2	= [92 88 86];
% s1 = [85 91 89];
s2 = [85 91 89];

IB	= [82 84 87 90];

% p1 = [s1 IB(1)];
% p2 = [s1 IB(2)];
% p3 = [s1 IB(3)];
% p4 = [s1 IB(4)];
% p5 = [s2 IB(1)];
% p6 = [s2 IB(2)];
% p7 = [s2 IB(3)];
% p8 = [s2 IB(4)];

soundMap = java.util.HashMap();

%between deviants
n = 1;
devCt = 0;
for i = 1:4
    for j = 1:4
        if(i ~= j)
        soundMap.put(n-devCt, [s1 IB(i) IB(j)]);
        soundMap.put(n-devCt + 12, [s2 IB(i) IB(j)]);
        elseif(i == j)
            soundMap.put(24+i, [s1 IB(i) IB(j)]);
            soundMap.put(24+i+4, [s2 IB(i) IB(j)]);
            devCt = devCt + 1;
        end
        n = n + 1; 
    end
end

%%within deviants
d1	= [s1(1) s1(2) s1(2)];
d2	= [s2(1) s2(2) s2(2)];
soundMap.put(33, d1);
soundMap.put(34, d2);

codeMap = java.util.HashMap
for n = 1:soundMap.keySet().size();
    a = soundMap.get(n)
    codeMap.put(n, a);
end

stdNums = ones(1,24) * 50;
devNums = ones(1,10) * 10;
devNums(7:10) = 40 * ones(1,4)
devNums = [];

supermat = []
for(i = 1:8)
    %%sounds for diffstructure"
    mat = randpermSD(stdNums, devNums, 2);
    soundVec = [];
    codeVec = [];
    for n = 1:length(mat)
        soundVec = [soundVec soundMap.get(mat(n))'];
        code = codeMap.get(mat(n))'
        if (n > 1)
            code(1) = ((codeVec(end))) * 10 + code(1);
        end            
        codeVec = [codeVec code];
    end
    midigen(soundVec, 0.25)
    name = strcat(strcat('Odelia', num2str(i), '.txt'))
    %writeStimFile(soundVec, codeVec, name);
    end
    

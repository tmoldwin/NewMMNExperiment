s1	= [92 88 86];
s2	= [92 88 86];
%s2	= [85 91 89];

IB	= [82 84 87 90];

p1 = [s1 IB(1)];
p2 = [s1 IB(2)];
p3 = [s1 IB(3)];
p4 = [s1 IB(4)];
p5 = [s2 IB(1)];
p6 = [s2 IB(2)];
p7 = [s2 IB(3)];
p8 = [s2 IB(4)];

d1	= [s1(1) s1(2) s1(2)];
d2	= [s2(1) s2(2) s2(2)];
d3 = [s1 IB(1) IB(1)]
d4 = [s1 IB(2) IB(2)]
d5 = [s1 IB(3) IB(3)]
d6 = [s1 IB(4) IB(4)]
d7 = [s2 IB(1) IB(1)]
d8 = [s2 IB(2) IB(2)]
d9 = [s2 IB(3) IB(3)]
d10= [s2 IB(4) IB(4)]



supermat = []
for(i = 1:8)
    %%sounds for diffstructure"
    soundMap = java.util.HashMap();
    soundMap.put(1,p1);
    soundMap.put(2,p2);
    soundMap.put(3,p3);
    soundMap.put(4,p4);
    soundMap.put(5,p5);
    soundMap.put(6,p6);
    soundMap.put(7,p7);
    soundMap.put(8,p8);
    soundMap.put(9,d1);
    soundMap.put(10,d2);
    soundMap.put(11,d3);
    soundMap.put(12,d4);
    soundMap.put(13,d5);
    soundMap.put(14,d6);
    soundMap.put(15,d7);
    soundMap.put(16,d8);
    soundMap.put(17,d9);
    soundMap.put(18,d10);


    codeMap = java.util.HashMap();
    codeMap.put(1,p1);
    codeMap.put(2,p2);
    codeMap.put(3,p3);
    codeMap.put(4,p4);
    codeMap.put(5,p5);
    codeMap.put(6,p6);
    codeMap.put(7,p7);
    codeMap.put(8,p8);
    codeMap.put(9,d1);
    codeMap.put(10,d2);
    codeMap.put(11,d3);
    codeMap.put(12,d4);
    codeMap.put(13,d5);
    codeMap.put(14,d6);
    codeMap.put(15,d7);
    codeMap.put(16,d8);
    codeMap.put(17,d9);
    codeMap.put(18,d10);
    mat = randpermSD([50, 50, 50, 50, 50, 50, 50, 50], [10,10,10,10,10,10,10,10,10,10], 2);
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
    

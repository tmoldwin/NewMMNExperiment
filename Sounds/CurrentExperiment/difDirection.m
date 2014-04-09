p1	= [81	74	77];
p2	= [79	80	83];
p3	= [81	74	72];	
p4	= [79	80	78];
p5	= [81	74	77	75];
p6	= [79	80	83	85];


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

    codeMap = java.util.HashMap();
    code1 = [1 2 3];
    code2 = [4 5 6];
    code3 = [1 2 7];
    code4 = [4 5 8];
    code5 = [1 2 3 9];
    code6 = [4 5 6 10];
    codeMap.put(1,code1);
    codeMap.put(2,code2);
    codeMap.put(3,code3);
    codeMap.put(4,code4);
    codeMap.put(5,code5);
    codeMap.put(6,code6);
    mat = randpermSD([150, 150], [27, 27, 22, 22], 2);
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
    name = strcat(strcat('difDirection', num2str(i), '.txt'))
    %writeStimFile(soundVec, codeVec, name);
    end
    

function [mat, soundVec, codeVec] = RandPermTest()
for(i = 1:6)
    p1 = [57 65 61];
    p2 = [55 63 59];
    p3 = [p1(1) p1(2) p1(2)];
    p4 = [p2(1) p2(2) p2(2)];
    p5 = [p1(1) p1(2) p1(3) p1(3)];
    p6 = [p2(1) p2(2) p2(3) p2(3)];

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

    [mat, soundVec, codeVec] = randpermSD(2, 4, [250, 250], [20, 20, 20, 20], 2, soundMap, codeMap);
    strfind(mat, [3 3])
    strfind(mat, [4 4])
    strfind(mat, [5 5])
    strfind(mat, [6 6])
    name = strcat(strcat('SameStructure', num2str(i), '.txt'))
    writeStimFile(soundVec, codeVec, name);
    end
end

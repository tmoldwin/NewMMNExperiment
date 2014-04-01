function [ output_args ] = diffStructure( input_args )
%DIFFSTRUCTURE Summary of this function goes here
%   Detailed explanation goes here

p1 = [86 81	83];
p2 = [82 87	84];

p3 = [p1(1) p1(2) p1(2)];

p4 = [p2(1) p2(2) p2(2)];

p5 = [p1(1) p1(2) p1(3) p1(3)];

p6 = [p2(1) p2(2) p2(3) p2(3)];

s1prob = .20;
s2prob = .40;
d1prob = .55;
d2prob = .70;
d3prob = .85;
d4prob = 1;

dur = 0.25;
good = 0;
while(good == 0)
    allcodes = [];
    for i = 1:6
        stimvec = [];
        codevec = [];
        prevstand = 0;
        for n = 1:380
            X = rand();
            pattern = [];
            if X < s1prob || (prevstand <= 2 && X < 0.5)
                pattern = p1;
                code = [1 2 3];
                prevstand = prevstand + 1;
            elseif X < s2prob || (prevstand <= 2 && X < 1)
                pattern = p2;
                code = [4 5 6];
                prevstand = prevstand + 1;
            elseif X < d1prob && prevstand > 2
                pattern = p3;
                code = [1 2 7]
                prevstand = 0;
            elseif X < d2prob && prevstand > 2
                pattern = p4;
                code = [4 5 8];
                prevstand = 0;
            elseif X < d3prob && prevstand > 2
                pattern = p5;
                code = [1 2 3 9];
                prevstand = 0;
            elseif X < d4prob && prevstand > 2
                pattern = p6;
                code = [4 5 6 10];
                prevstand = 0;
            end
            stimvec = [stimvec pattern];
            codevec = [codevec code];
            midigen(pattern, dur);
        end
        allcodes = [allcodes codevec];
        name = strcat(strcat('DiffStructure', num2str(i), '.txt'))
        writeStimFile(stimvec, codevec, name);
    end;
    Std1 = size(strfind(allcodes, [3 4])) + size(strfind(allcodes, ([3 1])))
    Std2 = size(strfind(allcodes, [6 4])) + size(strfind(allcodes, ([6 1])))   
    A = sum(allcodes == 7)
    B = sum(allcodes == 8)
    C = sum(allcodes == 9)
    D = sum(allcodes == 10)
    Aratio = A /(Std1(2)+C)
    Bratio = B /(Std2(2)+D)  
    Cratio = C / Std1(2)
    Dratio = D / Std2(2)
    3*(A + B) + 4*(C + D) + 3*(Std1(2) + Std2(2))
    if(abs(Aratio-Cratio) < 0.01 && abs(Bratio-Dratio)<0.01 && abs(Aratio-Bratio) < 0.01 && abs(Cratio-Dratio)<0.01)
        good = 1;
    end        
    length(allcodes)
end

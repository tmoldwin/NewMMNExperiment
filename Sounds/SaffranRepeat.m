p1 = [57 64 61];

p2 = [55 62 59];

p3 = [p1(1) p1(2) p1(2)];

p4 = [p2(1) p2(2) p2(2)];
	
p5 = [p1(1) p1(2) p1(3) p1(3)];

p6 = [p2(1) p2(2) p2(3) p2(3)];

dur = 0.25

stimvec = []
codevec = []

prevstand = 0;
for n = 1:1000
    X = rand();
    pattern = []
    if X < 0.4 || (prevstand <= 2 && X < 0.5)
        pattern = p1;
        code = [1 2 3];
        prevstand = prevstand + 1;
    elseif X < 0.8 || (prevstand <= 2 && X < 1)
        pattern = p2;
        code = [4 5 6];
        prevstand = prevstand + 1;
    elseif X < 0.85 && prevstand > 2
        pattern = p3;
        code = [1 2 7];
        prevstand = 0;
    elseif X < 0.9 && prevstand > 2
        pattern = p4;
        code = [4 5 8];
        prevstand = 0;
    elseif X < 0.95 && prevstand > 2
        pattern = p5;
        code = [1 2 3 9];
        prevstand = 0;
    elseif X < 1 && prevstand > 2
        pattern = p6;
        code = [4 5 6 10];
        prevstand = 0;
    end
        stimvec = [stimvec pattern];
        codevec = [codevec code];
        %midigen(pattern, dur);
end

writeStimFile(stimvec, codevec, 'SameStructure.txt')
    
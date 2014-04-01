% p1 = 'tudaroe';
% p2 = 'pigola';
% d1 = 'tudava';
% d2 = 'piguva';
% ibd = 'va';

p1 = 'pabiku';
p2 = 'tibudoe';
d1 = 'pabibi';
d2 = 'tibubu';
d3 = 'pabikuku';
d4 = 'tibudoedoe';

s1prob = .20;
s2prob = .40;
d1prob = .55;
d2prob = .70;
d3prob = .85;
d4prob = 1;

good = 0;
while(good == 0)
allcodes = [];
for i = 1:6
    s = '';
    codevec = [];
    stimvec = [];
    prevstand = 0;
    for n = 1:380
        r =  rand();
        if r < s1prob || (prevstand <=2 && r < 0.5)
            s = strcat(s,p1);
            code = [1 2 3];
            stim = [1 2 3];
            prevstand = prevstand+1;
        elseif r < s2prob || (prevstand <=2 && r < 1)
            s = strcat(s,p2);
            code = [4 5 6];
            stim = [4 5 6];
            prevstand = prevstand+1;
        elseif r < d1prob
            s = strcat(s,d1);
            code = [1 2 7];
            stim = [1 2 2];
            prevstand = 0;
        elseif r < d2prob
            s = strcat(s,d2);
            code = [4 5 8];
            stim = [4 5 5];
            prevstand = 0;
        elseif r < d3prob
            s = strcat(s,d3);
            code = [1 2 3 9];
            stim = [1 2 3 3];
            prevstand = 0;
        elseif r < d4prob
            s = strcat(s,d4);
            code = [4 5 6 10];
            stim = [4 5 6 6];
            prevstand = 0;
        end
        codevec = [codevec code];
        stimvec = [stimvec stim];
    end
    s
    allcodes = [allcodes codevec];
    name = strcat(strcat('Syllables', num2str(i), '.txt'));
    writeStimFile(stimvec, codevec, name);
end
%     Std1 = size(strfind(allcodes, [3 4])) + size(strfind(allcodes, ([3 1])))
%     Std2 = size(strfind(allcodes, [6 4])) + size(strfind(allcodes, ([6 1])))   
%     A = sum(allcodes == 7)
%     B = sum(allcodes == 8)
%     C = sum(allcodes == 9)
%     D = sum(allcodes == 10)
%     Aratio = A /(Std1(2)+C)
%     Bratio = B /(Std2(2)+D)  
%     Cratio = C / Std1(2)
%     Dratio = D / Std2(2)
%     3*(A + B) + 4*(C + D) + 3*(Std1(2) + Std2(2))
%     if(abs(Aratio-Cratio) < 0.01 && abs(Bratio-Dratio)<0.01 && abs(Aratio-Bratio) < 0.01 && abs(Cratio-Dratio)<0.01)
%         good = 1;
%     end        
%     length(allcodes)
end
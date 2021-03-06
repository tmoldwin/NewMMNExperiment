p1 = [70	50	63];
p2 = [65	85	72];
p1dw = [70	50	71];
p2dw =[65	85	80];
ibd = 78

% Standard and Deviant Patterns
% patterns = [p1; p1dw; p2; p2dw];
% for n = 1:size(patterns,1)
%     pattern = patterns(n,:)
%     y=sin(pattern(1)*pi*t);
%     sound(y);
% 
%     y=sin(pattern(2)*pi*t);
%     sound(y);
% 
%     y=sin(pattern(3)*pi*t);
%     sound(y);
%     pause;
% end

%Sequence with deviants
prevdev = 0;
prev2dev = 0;
for n=1:500
    prev2dev = prevdev;
    random = rand();
    if(random <0.4 && prevdev == 0 || random <0.5 && (prevdev == 1 || prev2dev ==1))
        pattern = p1;
        word = 'p1'
        prevdev = 0;
    elseif(random <0.8 && prevdev == 0 || random < 1 && (prevdev == 1 || prev2dev ==1))
        pattern = p2;
        word = 'p2'
        prevdev = 0;
    elseif random < 0.85 && prevdev == 0 && prev2dev == 0
        pattern = p1dw;
        word = 'p1dw'
        prevdev = 1;
    elseif random < 0.9 && prevdev == 0 && prev2dev == 0
        pattern = p2dw;
        word = 'p2dw'
        prevdev = 1;
    elseif random < 1 && prevdev == 0 && prev2dev == 0
        pattern = ibd;
        word = 'ibd'
        prevdev = 1;
    end
    
    midigen(pattern(1), 0.25);
    if(length(pattern) == 3)
        midigen(pattern(2), 0.25);
        midigen(pattern(3), 0.25);
    end
end
% 
% %Sequence without deviants
% for n = 1:1000;
%     if rand() <0.5
%         pattern = p1
%     else
%         pattern = p2
%     end
%     soundgen(pattern(1), 0.25);
%     soundgen(pattern(2), 0.25);
%     soundgen(pattern(3), 0.25);
% end
% 
% p1 = [70	50	63]
% p2 = [65	85	72]
% p3 = [70	50	71]
% p4 = [65	85	80]
% p5 = [78]
% stem([0, p1,p3,p2,p4,p1,p5,p2 , 0])

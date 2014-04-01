
dev1 = 81;
dev2 = 90;
dev3 = 88;

p1 = [86 81	83];
p2 = [89 90	84];



%%Standard Patterns Example
% pattern = p1
% y=sin(pattern(1)*2*pi*t);
% sound(y);
% 
% y=sin(pattern(2)*2*pi*t);
% sound(y);
% 
% y=sin(pattern(3)*2*pi*t);
% sound(y);
%%End of standard pattern example

dev = dev3; % Change the deviant for each condition
for n = 1:500
    if(rand()<=0.5)
        pattern = p1;
        word = 'p1'
    else
        pattern = p2;
        word = 'p2'
    end

   soundgen(pattern(1), 0.25);
   soundgen(pattern(2), 0.25);

    if (rand()<0.1)
        tone3 = dev;
        word = 'dw'
    else
        tone3 = pattern(3);
    end

    y=sin(tone3*pi*t);
    sound(y);

    if (rand()<0.1)
        soundgen(dev, 0.25);
        word = 'db'
       
    end

end


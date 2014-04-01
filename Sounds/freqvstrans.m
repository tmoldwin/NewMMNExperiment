
p1 = [440, 770, 600];
p2 = [440, 770, 330];


t=linspace(0,1,2000);

for n = 1:500
    if(rand()<=0.5)
        pattern = p1
    else
        pattern = p2
    end

    y=sin(pattern(1)*pi*t);
    sound(y);

    y=sin(pattern(2)*pi*t);
    sound(y);

    y=sin(pattern(3)*pi*t);
    sound(y);
end
% pattern = p2
% t=linspace(0,4,2000);
% y=sin(pattern(1)*2*pi*t);
% sound(y,10000);
%
% t=linspace(0,4,2000);
% y=sin(pattern(2)*2*pi*t);
% sound(y,10000);
dev = 880.0;
dev = 1479.98;
dev = 1318.51;

p1 = [1174.66, 880.0, 987.767];
p2 = [1396.91,  1479.98, 1046.50];
%p1
pattern = p2
t=linspace(0,4,2500);
y=sin(pattern(1)*2*pi*t);
sound(y,10000);

t=linspace(0,4,2500);
y=sin(pattern(2)*2*pi*t);
sound(y,10000);

t=linspace(0,4,2500);
y=sin(pattern(3)*2*pi*t);
sound(y,10000);


%p1d
pattern = p2
t=linspace(0,4,2500);
y=sin(pattern(1)*2*pi*t);
sound(y,10000);

t=linspace(0,4,2500);
y=sin(pattern(2)*2*pi*t);
sound(y,10000);

t=linspace(0,4,2500);
y=sin(pattern(3)/2*2*pi*t);
sound(y,10000);
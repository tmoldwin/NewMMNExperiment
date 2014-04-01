p1 = [86 81	83];
p2 = [82 87	84];

p3 = [p1(1) p1(2) p1(2)];

p4 = [p2(1) p2(2) p2(2)];
	
p5 = [p1(1) p1(2) p1(3) p1(3)];

p6 = [p2(1) p2(2) p2(3) p2(3)];




% p1 = [57 65 61];
% 
% p2 = [55 63 59];
% 
% p3 = [p1(1) p1(2) p1(2)];
% 
% p4 = [p2(1) p2(2) p2(2)];
% 	
% p5 = [p1(1) p1(2) p1(3) p1(3)];
% 
p6 = [p2(1) p2(2) p2(3) p2(3)];

y = [p1 p3 p5 p2 p4 p6 p1];

figure;
scatter(1:length(y), y, 'o') % No line specifier in the LineSpec => no line
% axis([0 25 50 70])
axis([0 25 80 90])

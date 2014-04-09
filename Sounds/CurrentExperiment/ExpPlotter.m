
%DiffCond
% p1 = [86 81	83];
% p2 = [82 87	84];
% 
% p3 = [p1(1) p1(2) p1(2)];
% 
% p4 = [p2(1) p2(2) p2(2)];
% 	
% p5 = [p1(1) p1(2) p1(3) p1(3)];
% 
% p6 = [p2(1) p2(2) p2(3) p2(3)];

%DifDirection
p1	= [81	74	77]	
p2	= [79	80	83];	
p3	= [81	74	72];	
p4	= [79	80	78];
p5	= [81	74	77	75];
p6	= [79	80	83	85];




% p1 = [57 65 61];
% 
% p2 = [55 63 59];
% 
% p3 = [p1(1) p1(2) p1(2)];
% 
% p4 = [p2(1) p2(2) p2(2)];
% 	
% p5 = [p1(1) p1(2) p1(3) p1(3)];
% % 
% p6 = [p2(1) p2(2) p2(3) p2(3)];

y = [p1 p3 p5 p2 p4 p6];

figure;
h = scatter(1:length(y), y, 'b', 'filled') % No line specifier in the LineSpec => no line
hChildren = get(h, 'Children');
set(hChildren, 'Markersize', 20)

hold on
devs = [6 10 16 20]
devArr(6) = y(6);
devArr(10) = y(10);
devArr(16) = y(16);
devArr(20) = y(20);

h = scatter(1:length(y), devArr, 'r', 'filled');
hChildren = get(h, 'Children');
set(hChildren, 'Markersize', 20);

hx = graph2d.constantline(3.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(6.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(9.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(10.5, 'LineStyle',':', 'Color',[.7 .7 .7],'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(13.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(16.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(19.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');

% axis([0 25 50 70])
axis([0 21 70 88])

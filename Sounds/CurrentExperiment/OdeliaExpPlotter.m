p1	= [92	83	86];

p2	= [85	91	89];

p3	= [92	83	83];

p4	= [85	91	91];

ib = [82 84 87 90];


y = [p1 0 p3 0 p2 0 p4 0 p1 0 0 p2]

figure;
h1 = scatter(1:length(y), y, 'b', 'filled') % No line specifier in the LineSpec => no line
hChildren = get(h1, 'Children');
set(hChildren, 'Markersize', 20)

hold on
ibArr = zeros(1,length(y));
ibArr(4) = ib(3);
ibArr(8) = ib(1);
ibArr(12) = ib(4);
ibArr(16) = ib(2);
ibArr(20) = ib(4);
ibArr(21) = ib(4);
h2 = scatter(1:length(y), ibArr, 'g', 'filled');
hChildren = get(h2, 'Children');
set(hChildren, 'Markersize', 20);

hold on
devArr = zeros(1,length(y));
devArr(7) = y(7);
devArr(15) = y(15);
devArr(17) = ibArr(17);
devArr(21) = ib(4);
h3 = scatter(1:length(y), devArr, 'r', 'filled');
hChildren = get(h3, 'Children');
set(hChildren, 'Markersize', 20);



hx = graph2d.constantline(3.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(4.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(7.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(8.5, 'LineStyle',':', 'Color',[.7 .7 .7],'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(11.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(12.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(15.5, 'LineStyle',':', 'Color',[.7 .7 .7],'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(16.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(19.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');
hx = graph2d.constantline(21.5, 'LineStyle',':', 'Color',[.7 .7 .7], 'LineWidth', 2);
changedependvar(hx,'x');


% axis([0 25 50 70])
axis([0 26 80 93])
set(gca,'XTick', (1:length(y)));
xlabel('Time (250ms)');
set(gca, 'YTick', min(y)-1:max(y)+3);
ylabel('Pitch (MIDI)');
title('Patterns with Roving IB');

legend('standard pattern', 'IB', 'deviant', 'Location', 'SouthEast')

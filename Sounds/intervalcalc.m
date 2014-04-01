intervals = {'A3', 'A3#', 'B3', 'C3', 'C#3', 'D3', 'Eb3', 'F3', 'F#3', 'G3', 'G#3', 'A4', 'A#4', 'B4', 'C4', 'C#4', 'D4', 'Eb4', 'F4', 'F#4', 'G4', 'G#4', 'A5', 'A#5', 'B5', 'C5', 'C#5', 'D5', 'Eb5', 'F5', 'F#5', 'G5', 'G#5'}

root1 = 16
root2 = 18
p1 = root1 + [0, 17, 4]
p2 = root2 - [0, 17, 4]

p1dw = p1 + [0 0 8]
p2dw = p2 + [0 0 8];
p1db = p1 + [8 0 0];
p2db = p2 + [8 0 0];

p1Notes = [intervals(p1(1)), intervals(p1(2)), intervals(p1(3))]
p2Notes = [intervals(p2(1)), intervals(p2(2)), intervals(p2(3))]

p1dwNotes = [intervals(p1dw(1)), intervals(p1dw(2)), intervals(p1dw(3))]
p2dwNotes = [intervals(p2dw(1)), intervals(p2dw(2)), intervals(p2dw(3))]

p1dbNotes = [intervals(p1db(1)), intervals(p1db(2)), intervals(p1db(3))]
p2dbNotes = [intervals(p2db(1)), intervals(p2db(2)), intervals(p2db(3))]


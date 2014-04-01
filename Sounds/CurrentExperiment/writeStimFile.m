function [ output_args ] = writeStimFile( stimVector, codeVector, file )

num2str(stimVector');
num2str(codeVector');
fid = fopen(file,'w');%# Open the file
if fid ~= -1
    matrix = [codeVector; stimVector]';
    dlmwrite(file, matrix, '-append',...  %# Print the matrix
        'delimiter','\t',...
        'newline','pc');
    fclose('all');                     %# Close the file
end

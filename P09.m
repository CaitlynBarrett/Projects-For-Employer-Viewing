% -----------------------------------------------
% Program Number: P09
%
% Submitted By: Caitlyn Barrett
%
% Credit to:
%
% Submitted On: February 28, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% -------------------------------------------

clear;
clc;

%{
Prompt the user for the length and width of the plot in meters. Also prompt
the user for the diameter of the lawnmower in inches. Validate all user
input.
%}
PL = input('Length of plot (meters): ');
while PL <= 0
    PL = input('Length of plot (meters): ');
end
PW = input('Width of plot (meters): ');
while PW <= 0 || PW > PL
    PW = input('Width of plot (meters): ');
end
DL = input('Lawnmower diameter (inches): ');
while DL <= 0
    DL = input('Lawnmower diameter (inches): ');
end

%{
Convert lawnmower diameter from inches to meters.
%}
MC = 0.0254;
DL = MC*DL;

%{
Determine the number of swipes required to mow the rectangular-shaped plot 
of grass using the length-wise approach.
%}
LA = PW/DL;
LA = ceil(LA);

%{
Determine the number of swipes required to mow the rectangular-shaped plot 
of grass using the width-wise approach.
%}
WA = PL/DL;
WA = ceil(WA);

%{
Set up the table that will display the results so that the user can compare
the different approaches.
%}
Ta1 = 'Mow Diameter';
Ta2 = 'Length-wise';
Ta3 = 'Width-wise';
Ta4 = 'Diagonal-wise';
Ta5 = 'Alpha';
Ta6 = '(m)';
Ta7 = 'Swipe Count';
D1 = '--------------';
U = char(176);
fprintf('\n');
fprintf('%18s%18s%18s%18s\n',Ta1,Ta2,Ta3,Ta4);
fprintf('%18s%18s%18s%18s%18s\n',Ta6,Ta7,Ta7,Ta7,Ta5);
fprintf('%18s%18s%18s%18s%18s\n',D1,D1,D1,D1,D1);

%{
Determine the number of swipes required to mow the rectangular-shaped plot 
of grass using the diagonal approach. As the angle changes, print each
calculation in the table.
%}
AG = 0.5;
while AG <= 89.5
    A = cosd(AG)*PW;
    B = sind(AG)*PL;
    DA = (A+B)/DL;
    DA = ceil(DA);
    fprintf('%18.4f%18d%18d%18d%17.2f%s\n',DL,LA,WA,DA,AG,U);
    AG = AG+.5;
end
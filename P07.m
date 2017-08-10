% Program Number: P07
%
% Submitted By: Caitlyn Barrett
%
% Credit to:
%
% Submitted On: February 14, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% -------------------------------------------

clear;
clc;

%{
Obtain a positive value from the user.
%}
N=0;

while N<=0
    N = input('Value? ');
end

%{
Use the Bissection Method to compute the square root of the number provided
by the user.  
%}
Min = 0;
Max = N;
Change = 1;
k = 1;
FirstGuess = (Min+Max)/2;
fprintf('%d:\t%.10f\n',k,FirstGuess);

while Change>(.000001)&&k<500
    k = k+1;
    FirstGuess = (Min+Max)/2;
    if (FirstGuess^2)<N
        Min=FirstGuess;
    elseif (FirstGuess^2)>N
        Max=FirstGuess;
    end
    NewGuess = (Min+Max)/2;
    Change = abs(NewGuess-FirstGuess);
    
    %{
    Display all intermediate values
    %}
    fprintf('%d:\t%.10f\n',k,NewGuess);
end

%{
Display the final result on a new line.
%}
fprintf('\n');
fprintf('The square root of %.2f is %.10f\n\n',N,NewGuess);
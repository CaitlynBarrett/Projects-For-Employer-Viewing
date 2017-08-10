% -----------------------------------------------
% Program Number: P04
%
% Submitted By: Caitlyn Barrett
%
% Credit to: 
%
% Submitted On: February 2, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% ------------------------------------------- 

clear;
clc;

%{
Create a menu. 
%}
fprintf('Please choose from this menu:\n\n');
fprintf('1.\tCompute the sqare root of any positive integer!\n');
fprintf('2.\tGenerate a set of five random integers between 0 and 100!\n');
fprintf('3.\tSee what time it is!\n');
fprintf('4.\tDetermine whether or not a number is divisible by 3!\n');
fprintf('5.\tExit the program.\n\n');

%{
Ask user to select a choice.
%}
Choice = input('Your choice (1-5)? ');

%{
Process the menu.
%}
switch Choice
  
    case {1}
        V1 = input('You chose option 1!\nPress ENTER to continue...');
        Num1 = input('Please enter any positive integer: ');
        if Num1>=0
            Num2 = sqrt(Num1);
            fprintf('The square root of %d is %.2f.\n',Num1,Num2);
        else fprintf('That is not a positive number, please try again.\n');
        end
    
    case {2}
        V2 = input('You chose option 2!\nPress ENTER to continue...');
        Num3 = randi([0,100]);
        Num4 = randi([0,100]);
        Num5 = randi([0,100]);
        Num6 = randi([0,100]);
        Num7 = randi([0,100]);
        fprintf('Here are five random integers between 0 and 100: %d, %d, %d, %d, %d\n',Num3,Num4,Num5,Num6,Num7);
    
    case {3}
        V3 = input('You chose option 3!\nPress ENTER to continue...');
        Time = clock;
        fprintf('The current time is %.0f:%.0f\n',Time(1,4),Time(1,5));
        
    case {4}
        V4 = input('You chose option 4!\nPress ENTER to continue...');
        Q = input('Please provide an integer: ');
        X = mod(Q,3);
        if  X==0;
        fprintf('%d is divisible by 3!\n',Q);
        else fprintf('%d is not divisible by 3.\n',Q);
        end
    
    case {5}
    
    otherwise
        fprintf('This is not one of the choices! Please try again and select a choice between 1 and 5.\n');
    
end
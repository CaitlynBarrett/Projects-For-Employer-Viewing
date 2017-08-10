% -----------------------------------------------
% Program Number: P02
%
% Submitted By: Caitlyn Barrett
%
% Credit to: Gus Galarnyk
%
% Submitted On: January 23, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% -------------------------------------------

clear;
clc;

%{
Make variables for every rocket attribute, even the original dimensions.
%}
Length_original=149.16;
Diameter_original=12.17;
Radius_original=Diameter_original/2;
Mass_original=1100000;

%{
Assuming the SRB is a perfect cylinder, determine the volume of the 
boosters.
%}
Volume_original=pi*(Radius_original)^2*Length_original;

%{
Determine the density of the propellant using the booster's volume. This 
density will be constant for all configurations.
%}
Density=Mass_original/Volume_original;

%{
Collect a string of input from the user for the descriptive name of the new
dimensions, such as My New SRB Design, or something else.
%}
Descriptive_name=input('What would you like to name your dimensions? ','s');

%{
Collect input from the user to get new values for the length and diameter, 
which must be in feet.
%}
Diameter_new=input('What is the diameter of the booster (in feet)? ');
Radius_new=Diameter_new/2;
Length_new=input('What is the length of the booster (in feet)? ');

%{
Using the user's new dimensions, compute the volume of the new booster.
%}
Volume_new=pi*(Radius_new)^2*Length_new;

%{
Using the new booster's volume, determine the mass of propellant that would
be required.
%}
Mass_new=Density*Volume_new;

%{
Make variables for conversion factors (1 pound -> 0.453592 kg).
%}
Conversion_kilograms=0.453592;
Final_answer=Mass_new*Conversion_kilograms;

%{
When the final results are computed, use fprintf() with appropriate 
placeholders to display in the command window the computed results so that 
it follows this pattern: The revised SRB structure named "My New SRB 
Design" has a length of 250.00 feet and a diameter of 37.00 feet, and 
requires 7746043 kg of propellant.
%}
fprintf('\n');
fprintf('The revised SRB structure named "%0.2s" \n',Descriptive_name);
fprintf('has a length of %0.2f feet and a diameter of %0.2f feet, \n',Length_new,Diameter_new);
fprintf('and requires %0.2f kg of propellant.\n',Final_answer);
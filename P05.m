% -----------------------------------------------
% Program Number: P05
%
% Submitted By: Caitlyn Barrett
%
% Credit to: Gus Galarnyk
%
% Submitted On: February 10, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% -------------------------------------------

clear;
clc;

repeat = 'y';

while repeat=='y'||repeat=='Y'
    clear;

    %{
    Make variables for every rocket attribute, even the original dimensions.
    %}
    Length_original = 149.16;
    Diameter_original = 12.17;
    Radius_original = Diameter_original/2;
    Mass_original = 1100000;

    %{
    Assuming the SRB is a perfect cylinder, determine the volume of the 
    boosters.
    %}
    Volume_original = pi*(Radius_original)^2*Length_original;

    %{
    Determine the density of the propellant using the booster's volume. This 
    density will be constant for all configurations.
    %}
    Density = Mass_original/Volume_original;

    %{
    Collect input from the user to get new values for the length and diameter, 
    which must be in feet. If the user puts in legitimate values continue with
    the rest of the program; otherwise, repeatedly ask the user for the value 
    again until s/he provides a positive value.
    %}
    Diameter_new = input('What is the diameter of the booster (in feet)? ');
        while Diameter_new <= 0
            Diameter_new = input('What is the diameter of the booster (in feet)? ');
        end
    Radius_new = Diameter_new/2;
    Length_new = input('What is the length of the booster (in feet)? ');
        while Length_new <= 0
            Length_new = input('What is the length of the booster (in feet)? ');
        end

    %{
    Collect a string of input from the user for the descriptive name of the
    new dimensions, such as My New SRB Design, or something else.
    %}
    Descriptive_name = input('What would you like to name your dimensions? ','s');

    %{
    Using the user's new dimensions, compute the volume of the new booster.
    %}
    Volume_new = pi*(Radius_new)^2*Length_new;

    %{
    Using the new booster's volume, determine the mass of propellant that 
    would be required.
    %}
    Mass_new = Density*Volume_new;

    %{
    Make variables for conversion factors (1 pound = 0.453592 kg).
    %}
    Conversion_kilograms = 0.453592;
    Kilograms_original = Mass_original*Conversion_kilograms;
    Kilograms_new = Mass_new*Conversion_kilograms;

    %{
    Set up variables for table.
    %}
    Ta1 = 'Original Values';
    Ta2 = 'Length';
    Ta3 = 'Diameter';
    Ta4 = 'Propellant (lb)';
    Ta5 = 'Propellant (kg)';
    D1 = '---------------';
    D2 = '-----------------';
    U1 = ' feet';
    U2 = ' lb';
    U3 = ' kg';
    
    %{
    Display final results in a table.
    %}
    fprintf('\n');
    fprintf('\t\t%-10s\t\t%20s\n',Ta1,Descriptive_name);
    fprintf('\t\t%10s\t\t%20s\n',D1,D2);
    fprintf('%-13s\t%10.2f%s\t%20.2f%s\n',Ta2,Length_original,U1,Length_new,U1);
    fprintf('%-13s\t%10.2f%s\t%20.2f%s\n',Ta3,Diameter_original,U1,Diameter_new,U1);
    fprintf('%-13s\t%10.0f%s\t%20.0f%s\n',Ta4,Mass_original,U2,Mass_new,U2);
    fprintf('%-13s\t%10.0f%s\t%20.0f%s\n\n',Ta5,Kilograms_original,U3,Kilograms_new,U3);
    
    %{
    Ask the user whether they want to repeat the program.
    %}
    repeat = input('Would you like to repeat the calculations? ','s');
    clc;
end

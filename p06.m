% Program Number: P06
%
% Submitted By: Caitlyn Barrett
%
% Credit to: Dylan Gramza
%
% Submitted On: February 12, 2015
%
% By submitting this program with my name,
% I affirm that the creation and modification
% of this program is primarily my own work.
% -------------------------------------------

clear;
clc;

Choice=1;

while Choice~=5
    %{
    Create a main menu. 
    %}
    fprintf('Please choose:\n');
    fprintf('1.\tIf you like soccer, select this option!\n');
    fprintf('2.\tIf you like baseball, select this option!\n');
    fprintf('3.\tIf you like basketball, select this option!\n');
    fprintf('4.\tIf you like hockey, select this option!\n');
    fprintf('5.\tExit the program\n');
    
    %{
    Ask user to select a choice.
    %}
    Choice = input('Your choice (1-5)? ');
    fprintf('\n');

    %{
    Process the main menu.
    %}
    switch Choice
    
    %{
    Lead the user to a secondary menu.  
    %}
    case 1
        while Choice~=5
            clc;
            fprintf('Please choose:\n');
            fprintf('1.\tIs Lionel Messi your favorite player?\n');
            fprintf('2.\tIs Cristiano Ronaldo your favorite player?\n');
            fprintf('3.\tIs Arjen Robben your favorite player?\n');
            fprintf('4.\tIs Luis Suarez your favorite player?\n');
            fprintf('5.\tReturn to main menu\n');
            Choice = input('Your choice (1-5)? ');
            fprintf('\n');
            
            %{
            Process the secondary menu.
            %}
            switch Choice
                case 1
                    fprintf('Lionel Messi is a great player who plays for the national team of Argentina.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 2
                    fprintf('Cristiano Ronaldo is a great player who plays for the national team of Portugal.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 3
                    fprintf('Arjen Robben is a great player who plays for the national team of Netherlands.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 4
                    fprintf('Luis Suarez is a great player who plays for the national team of Uruguay.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 5
                    clc;
                otherwise
                    clc;
                    fprintf('Please enter a valid choice.\n');   
            end
        end
        Choice = 0;
        
    %{
    Lead the user to a secondary menu.  
    %}    
    case 2
        while Choice~=5
            clc;
            fprintf('Please choose:\n');
            fprintf('1.\tIs Mike Trout your favorite player?\n');
            fprintf('2.\tIs Clayton Kershaw your favorite player?\n');
            fprintf('3.\tIs Andrew McCutchen your favorite player?\n');
            fprintf('4.\tIs Felix Hernandez your favorite player?\n');
            fprintf('5.\tReturn to main menu\n');
            Choice = input('Your choice (1-5)? ');
            fprintf('\n');
            
            %{
            Process the secondary menu.
            %}
            switch Choice
                case 1
                    fprintf('Mike Trout is a great player who plays for the Los Angeles Angels of Anaheim.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 2
                    fprintf('Claytona Kershaw is a great player who plays for the Los Angeles Dodgers.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 3
                    fprintf('Andrew McCutchen is a great player who plays for the Pittsburgh Pirates.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 4
                    fprintf('Felix Hernandez is a great player who plays for the Seattle Mariners.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 5
                    clc;
                otherwise
                    clc;
                    fprintf('Please enter a valid choice.\n');
            end
        end
        Choice = 0;
        
    %{
    Lead the user to a secondary menu.  
    %}    
    case 3
        while Choice~=5
            clc;
            fprintf('Please choose:\n');
            fprintf('1.\tIs Lebron James your favorite player?\n');
            fprintf('2.\tIs Chris Paul your favorite player?\n');
            fprintf('3.\tIs Anthony Davis your favorite player?\n');
            fprintf('4.\tIs Russell Westbrook your favorite player?\n');
            fprintf('5.\tReturn to main menu\n');
            Choice = input('Your choice (1-5)? ');
            fprintf('\n');
            
            %{
            Process the secondary menu.
            %}
            switch Choice
                case 1
                    fprintf('Lebron James is a great player who plays for the Cleveland Cavaliers.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 2
                    fprintf('Chris Paul is a great player who plays for the Los Angeles Clippers.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 3
                    fprintf('Anthony Davis is a great player who plays for the New Orleans Pelicans.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 4
                    fprintf('Russell Westbrook is a great player who plays for the Oklahoma City Thunder.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 5
                    clc;
                otherwise
                    clc;
                    fprintf('Please enter a valid choice.\n');
            end
        end
        Choice = 0;
        
    %{
    Lead the user to a secondary menu.  
    %}    
    case 4
        while Choice~=5
            clc;
            fprintf('Please choose:\n');
            fprintf('1.\tIs Patrick Kane your favorite player?\n');
            fprintf('2.\tIs Tyler Seguin your favorite player?\n');
            fprintf('3.\tIs Jakub Voracek your favorite player?\n');
            fprintf('4.\tIs Nicklas Backstrom your favorite player?\n');
            fprintf('5.\tReturn to main menu\n');
            Choice = input('Your choice (1-5)? ');
            fprintf('\n');
            
            %{
            Process the secondary menu.
            %}
            switch Choice
                case 1
                    fprintf('Patrick Kane is a great player who plays for the Chicago Blackhawks.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 2
                    fprintf('Tyler Seguin is a great player who plays for the Dallas Stars.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 3
                    fprintf('Jakub Voracek is a great player who plays for the Philadelphia Flyers.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 4
                    fprintf('Nicklas Backstrom is a great player who plays for the Washington Capitals.\n');
                    Return1 = input('Press ENTER to continue...');
                    clc;
                case 5
                    clc;
                otherwise
                    clc;
                    fprintf('Please enter a valid choice.\n');
            end
        end
        Choice = 0;
        
    %{
    Allow the user to exit the program.
    %}
    case 5
        clc;
    
    %{
    Trap the user within the main menu until they provide a correct choice.
    %}
    otherwise
        clc;
        fprintf('Please enter a valid choice.\n');
        Choice = 0;
        
    end
end
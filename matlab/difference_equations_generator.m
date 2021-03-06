clear; clc; close all
syms s z time_step
syms this__parameter__K
syms this__parameter__T
syms this__parameter__Ti
syms this__parameter__Td
syms this__parameter__Tn
syms this__parameter__Tv
syms this__parameter__D
syms this__parameter__omega



element_name = 'Controller: P element';
G_s = this__parameter__K;
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PT1 element';
G_s = this__parameter__K / (2* time_step * s + 1);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: I element';
G_s = 1 / (this__parameter__Ti * s);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: D element';
G_s = this__parameter__Td * s;
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: DT1 element';
G_s = (this__parameter__Td * s) / (1 + 10 * this__parameter__Td * s);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PI element';
G_s = this__parameter__K * (1 + 1 / (this__parameter__Tn * s));
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PD element';
G_s = this__parameter__K * (1 + this__parameter__Tv * s);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PDT1 element';
G_s = this__parameter__K * (1 + (this__parameter__Tv * s) / (1 + 10 * this__parameter__Tv * s));
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PID element';
G_s = this__parameter__K * (1 + 1 / (this__parameter__Tn * s) + this__parameter__Tv * s);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'Controller: PIDT1 element';
G_s = this__parameter__K * (1 + 1 / (this__parameter__Tn * s) + (this__parameter__Tv * s) / (1 + 10 * this__parameter__Tv * s));
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'e', 'u', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'e', 'u', 'forwards'))
disp(' ')

element_name = 'System: PT0 element';
G_s = this__parameter__K / (3 * time_step * s + 1);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'y', 'x', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'forwards'))
disp(' ')

element_name = 'System: PT1 element';
G_s = this__parameter__K / (this__parameter__T * s + 1);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'y', 'x', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'forwards'))
disp(' ')

element_name = 'System: PT2 element';
G_s = ((this__parameter__K * this__parameter__omega^2) / ...
    (s^2 + 2*this__parameter__D*this__parameter__omega*s + this__parameter__omega^2));
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'y', 'x', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'y', 'x', 'forwards'))
disp(' ')

element_name = 'Measuring element: PT1 element';
G_s = this__parameter__K / (this__parameter__T * s + 1);
disp([element_name, ': '])
disp('Tustin:')
disp(get_difference_equation(G_s, 'x', 'x_m', 'tustin'))
disp('Backwards:')
disp(get_difference_equation(G_s, 'x', 'x_m', 'backwards'))
disp('Forwards:')
disp(get_difference_equation(G_s, 'x', 'x_m', 'forwards'))
disp(' ')


function diff_eq = get_difference_equation(G_s, input_variable, output_variable, algorithm)
    % The transfer function (symbolic) is given.
    syms s z time_step
    % z-Transformation.
    if strcmp(algorithm,'tustin')
        G_z = subs(G_s, s, (2 * (z - 1)) / (time_step * (z + 1)));
    elseif strcmp(algorithm, 'backwards')
        G_z = subs(G_s, s, (z - 1) / (z * time_step));
    elseif strcmp(algorithm, 'forwards')
        G_z = subs(G_s, s, (z - 1) / (time_step));
    end
    % Simplify the equation.
    G_z = simplifyFraction(G_z, 'Expand', true);
    % Get the coefficients of the numerator and denominator.
    [num, den] = numden(G_z);
    num_coeffs = coeffs(num, z, 'All');
    den_coeffs = coeffs(den, z, 'All');
    % The coefficients are ordered from the highest to
    % the lowest degree. Get a_n for further calculation.
    a_n = den_coeffs(1);

    % The degree of the numerator polynomial must not be greater 
    % than the denominator polynomial.
    m = length(num_coeffs) - 1;
    n = length(den_coeffs) - 1;
    if (m > n)
        disp('Error: degree numerator > degree denominator.')
        %return
    end

    % Create the difference equation step by step.
    diff_eq = 'u_0 = ';
    % At first calculate the input part.                     
    for i = m:-1:0                                          %#ok<*AGROW>
        if (i == n)
            diff_eq = [diff_eq, 'e_0 * ('];
        else
            diff_eq = [diff_eq, 'e_', num2str(i-n), ' * ('];
        end
        diff_eq = [diff_eq, char(num_coeffs(m+1-i) / a_n)];
        diff_eq = [diff_eq, ')'];
        if (i > 0)
            diff_eq = [diff_eq, ' + '];
        end
    end
    % Calculate the output part.
    for i = n-1:-1:0
        diff_eq = [diff_eq, ' - u_', num2str(i-n), ' * (']; 
        diff_eq = [diff_eq, char(den_coeffs(n+1-i) / a_n)];
        diff_eq = [diff_eq, ')'];
    end
    diff_eq = [diff_eq, ';'];
    % Replace variables to fit into the javascript code.
    diff_eq = strrep(diff_eq, '__', '.');
    % Replace input and output variables.
    diff_eq = strrep(diff_eq, 'u_0', ['data_current.', output_variable]);
    diff_eq = strrep(diff_eq, 'u_-1', ['data_last.', output_variable]);
    diff_eq = strrep(diff_eq, 'u_-2', ['data_pre_last.', output_variable]);
    diff_eq = strrep(diff_eq, 'e_0', ['data_current.', input_variable]);
    diff_eq = strrep(diff_eq, 'e_-1', ['data_last.', input_variable]);
    diff_eq = strrep(diff_eq, 'e_-2', ['data_pre_last.', input_variable]);
end
function [] = sawtooth_fourier_func(number_of_terms)
% Creates a plot of the fourier transform of a gapped, positive y-axis
% sawtooth wave. 
% Credit: Auburn University ECE for the initial function which this was
% built off.

    clc, syms n x
    
    L = pi;
    N_TERMS = number_of_terms;

    a0 = 1/4;

    % Plugging the coefficient values in the Fourier Series
    f = 0;
    for n = 1:N_TERMS
        an = (1/((L*n)^2)) * (((-1)^n) - 1);
        bn = (-1/((L*n))) * ((-1)^n); 
        f = f+ (an*cos(L*n*x) + bn*sin(L*n*x));
    end

    f_approx = (a0)+ f;

    ezplot(f_approx, [-10,10])

    title('Fourier Series Approximation')
    xlabel('x')
    ylabel('F(x) approximated')
end


function [] = pulse_fourier_func(number_of_terms)
% Creates a plot of the fourier transform of a pulse train.
% Credit: Auburn University ECE for the initial function which this was
% built off.
    clc, syms n x
    
    L = pi;
    N_TERMS = number_of_terms;

    a0 = 1/2;
    % Plugging the coefficient values in the Fourier Series
    f = 0;
    for n = 1:N_TERMS
        an = (1/(n*L)) * sin(n * L);
        bn = (1/(n*L)) * (1 - (cos(L * n))) 
        f = f+ (an*cos(L*n*x) + bn*sin(L*n*x));
    end

    f_approx = (a0)+ f;
    ezplot(f_approx, [-10,10])
    title('Fourier Series Approximation')
    xlabel('x')
    ylabel('F(x) approximated')
end

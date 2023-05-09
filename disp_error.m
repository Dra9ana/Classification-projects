function disp_error(e1, e2, err1,err2)
A = [err1, err2; e1, e2];
T = array2table(A);
T.Properties.VariableNames(1:2) = {'greska prvog reda','greska drugog reda'};
T.Properties.RowNames(1:2) = {'pravi podaci','teorijski'};
disp(T)
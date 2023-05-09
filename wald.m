function [na,nb] = wald(eps1,eps2, M11, M12, M21, M22, S11, S12, S21,S22)
i1 = 0;
i2 = 0;
sum1 = 0;
sum2 = 0;

const11 = 1/(2*pi)/(det(S11)^0.5);
const12 = 1/(2*pi)/(det(S12)^0.5);
const21 = 1/(2*pi)/(det(S21)^0.5);
const22 = 1/(2*pi)/(det(S22)^0.5);

a = -log((1-eps1)./eps2);
b = -log((eps2)./(1-eps1));
while(i1<10 || i2<10)
    Sm = 0;
    j = 0;
    while (1)
        if((Sm == 0) || ((Sm>a) && (Sm <b)))
            j = j+1;
            X = rand(2,1)*17-5;

            f11 = const11*exp(-0.5*(X-M11)'*inv(S11)*(X-M11));
            f12 = const12*exp(-0.5*(X-M12)'*inv(S12)*(X-M12));
            f21 = const21*exp(-0.5*(X-M21)'*inv(S21)*(X-M21));
            f22 = const22*exp(-0.5*(X-M22)'*inv(S22)*(X-M22));

            f1_curr = 0.5*f11+0.5*f12;
            f2_curr = 0.6*f21+0.4*f22;

            Sm = Sm-log(f1_curr/f2_curr);
        elseif(Sm<a)
             i1 = i1+1;
             sum1 = sum1+j;
             break;
        else
             i2 = i2+1;
             sum2 = sum2+j;
             break;

        end
    end
end

    
na = sum1/i1;
nb = sum2/i2;
end
function [V, v0] = LinearClassifier(K1_test,K1_train, K2_test, K2_train,...
                                label1, label2, x1,x2, fig_id)
M1 = mean(K1_train, 2);
M2 = mean(K2_train, 2);
S1 = cov(K1_train');
S2 = cov(K2_train');

i = 1;

v0_vec = zeros(1,101);

s_vec = 0:0.01:1;
for s = s_vec
    V = inv(s*S1+(1-s)*S2)*(M2-M1);
    y1 = V'*K1_train;
    y2 = V'*K2_train;
    Nerr_min = 10^6;
    vmin = 0;
    y=sort([y1, y2]);
    
    for j=1:length(y)-1
        v0=-(y(j)+y(j+1))/2;
        Nerr = sum(y1>-v0) + sum(y2<-v0);
        if(Nerr<Nerr_min)
            Nerr_min = Nerr;
            vmin = v0;
        end
    end

    v0_vec(i) = vmin;
    i = i+1;
end
Neps = 10^6;
for i = 1:length(s_vec)
    V = inv(s_vec(i)*S1+(1-s_vec(i))*S2)*(M2-M1);
    y1_curr = V'*K1_test;
    y2_curr = V'*K2_test;
    Neps_curr = sum(y1_curr>-v0_vec(i)) + sum(y2_curr<-v0_vec(i));
    if(Neps_curr<Neps)
        Neps = Neps_curr;
        V_curr = V;
        v0 = v0_vec(i);
    end
    
end
V = V_curr;
[X1,X2] = meshgrid(x1,x2);
h = V(1)*X1+V(2)*X2+v0;

figure(fig_id)
plot(K1_test(1,:), K1_test(2,:), 'b*');
hold on;
plot(K1_train(1,:), K1_train(2,:), 'b*');
hold on;
plot(K2_test(1,:), K2_test(2,:),'rx');
hold on;
plot(K2_train(1,:), K2_train(2,:),'rx');
hold on;
contour(x1,x2,h,[0,0],'k');
xlabel('obelezje 1')
ylabel('obelezje 2');
legend(['K' num2str(label1) 'test'], ['K' num2str(label1) 'train'],...
    ['K' num2str(label2) 'test'],['K' num2str(label2) 'train'],...
    'Classification line')
title(['Linearni klasifikator za klase ' num2str(label1) ' and ' num2str(label2)] )
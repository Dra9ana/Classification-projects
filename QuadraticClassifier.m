function [V,v0] = QuadraticClassifier(K1, K2, G)
N = 350;
Z = [[-ones(1,N), ones(1,N)];...
    [-K1(1,:).^2,K2(1,:).^2]; ...%x1^2
    [-K1(2,:).^2,K2(2,:).^2];...%x2^2
    [-K1(1,:).*(K1(2,:)),K2(1,:).*(K2(2,:))];...%x1*x2
    [-K1(1,:),K2(1,:)];%x1
     [-K1(2,:),K2(2,:)]%x2
    ];
W = inv(Z*Z')*Z*G;
v0 = W(1);
V = W(2:end);
function [clusters, iter] = MLEclustering(K,C, clusters,max_error)
q_prev = zeros(C,length(K));
q = zeros(C,length(K));
M = zeros(2,length(K));
S = zeros(2,2,length(K));
fgv = zeros(C, length(K));
P = zeros(C,1);
for i = 1:C
    M(:,i) = mean(K(:,clusters == i),2);
    S(:,:,i) = cov(K(:, clusters == i)');
    fgv(i,:) = 1/(2*pi)/sqrt(det(S(:,:,i)))*...
        exp(-0.5.*diag(((K-M(:,i))')*inv(S(:,:,i))*(K-M(:,i)))');
    P(i) = 1/C;
end
iter = 0;
while(1)
    for i = 1:C
        q(i,:) = P(i)*fgv(i,:)./sum(fgv.*P,1);
        P(i) = mean(q(i,:),2);
        M(:,i) = mean(q(i,:).*K,2)/P(i);
        for j = 1:length(K)
            S(:,:,i) = S(:,:,i)+q(i,j)*((K(:,j)-M(:,i))*(K(:,j)-M(:,i))')/P(i);
        end
        S(:,:,i) = S(:,:,i)/length(K);
        fgv(i,:) = 1/(2*pi)/sqrt(det(S(:,:,i)))*...
        exp(-0.5.*diag((K-M(:,i))'*inv(S(:,:,i))*(K-M(:,i)))');
        q(i,:) = fgv(i,:)./sum(fgv,1);    
    end
    if(max(abs(q_prev - q))<=max_error)
        break;
    end
    q_prev = q;
    iter = iter+1;
    for j = 1:length(K)
         [nebitno,clusters(j)] = max(q(:,j));
    end
end
end 
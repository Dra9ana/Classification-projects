function [final_clustering, final_l] = NormalDecomposition(K,C,clusters, lmax)
%% initial clusterization
P = zeros(1,C);
M = zeros(2,C);
S = zeros(2,2,C);
%% calculating change in J
l = 0;
while(l<lmax)   
    %% calculating current means 
    for i = 1:C
        P(i) = sum(clusters == i)/length(clusters);
        M(:,i) = mean(K(:, clusters == i),2);
        S(:,:,i) = cov(K(:, clusters ==i)');
    end
    change = false;
    for i = 1:length(K)
        X = K(:,i);
        id = clusters(i);
        min_dist = -log(P(id))+0.5*log(det(S(:,:,id)))+0.5*(X-M(:,id))'*inv(S(:,:,id))*(X-M(:,id));

        for j = unique(clusters)
            if(j ~= id)
                dist = -log(P(j))+0.5*log(det(S(:,:,j)))+0.5*(X-M(:,j))'*inv(S(:,:,j))*(X-M(:,j));
                if(dist<min_dist)
                    min_dist = dist;
                    clusters(i) = j;
                    change = true;
                end
            end
        end
    end
    if(change == false)
        break;
    end
    l = l+1;
end

final_clustering = clusters;
final_l = l;
end

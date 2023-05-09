function res = features(img, C)
res = zeros(C,1);
% preprocessing
img_hsv = rgb2hsv(img);
img_h = img_hsv(:,:,1);
img_t = (img_h>0.04) & (img_h<0.12);
se = strel("rectangle",[3 3]);
img_t = imdilate(img_t,se);
BW = edge(img_t);
edge_ids = find(BW==1);
rows = mod(edge_ids,200);
cols = (edge_ids-rows)/200+1;
[cnt_cols, unique_cols] = hist(cols, unique(cols));

% % area of hand
% res(1) = sum(sum(img_t));
% % sum of edges relative to size of hand
% res(2) =  sum(sum(BW))/sum(sum(img_t));
% % max width of hand (paper should have bigger values for this feature)
% res(3) = min((max(rows)-min(rows))+(max(cols)-min(cols)));
% % maximum distance from hand to end of matrix
% res(4) = max(max(200-max(rows),min(rows))+max(min(cols), 300 - max(cols)));

% area of hand
res(1) = sum(sum(img_t));
% sum of edges relative to size of hand
res(2) = sum(sum(BW))/sum(sum(img_t));
% max width of hand 
res(3) = min((max(rows)-min(rows))+(max(cols)-min(cols)));
% sum of pixels in columns which consists of more than 2 pixels -> fingers
res(4) = sum(cnt_cols(cnt_cols>2));
% max distance between finger pixels
res(5) = max(unique_cols(cnt_cols>2))-min(unique_cols(cnt_cols>2));

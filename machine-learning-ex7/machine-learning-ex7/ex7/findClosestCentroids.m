function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% zero initialize for returned data .
idx = zeros(size(X,1), 1);

x_data = X ( :,1)  ; % this to sperate x_features 
y_data = X ( :,2)  ; % this to sperate y_features 

% sperate the centers 
x_center = centroids (:,1) ; 
y_center = centroids (:,2) ; 

d = zeros(3,1);

temp = [] ; % we don't need to the value of min distance so we will not return it 

for i=1:300 ,
  % calculating the distances 
  d(1) = sqrt( (x_data(i) - x_center(1)).^2 + (y_data(i) - y_center(1) ).^2 ) ; 
  d(2) = sqrt( (x_data(i) - x_center(2)).^2 + (y_data(i) - y_center(2) ).^2 ) ;
  d(3) = sqrt( (x_data(i) - x_center(3)).^2 + (y_data(i) - y_center(3) ).^2 ) ;
% find min distance  
 [temp ,idx(i)]= min(d) ;
endfor



end


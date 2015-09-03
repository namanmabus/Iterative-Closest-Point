function [ TR,TT,source ] = Iterativeclosestpoint( model,source,ErrVal )
%Iterative closest point function with model data and source data as input
%as well as the maximum accepted error between model and source data.
%Translational matrix, Rotation Matrix and new source data after rotation
%and translation as output.

m=size(model,1);  %Dimension of model data
M=size(model,2);  %Number of points of model data
N=size(source,2); %Number of points of the source data

TR=eye(m);  %Rotation Matrix initalized as a unit vector
TT=zeros(m,1); % Translational Matrix initialized with all elements equal to zero

vi=zeros(size(source,2)); % Variable for indexing and mapping the closest points in model to the source
Err1=100; % Initializing Error variable for error between the model and the source
while 1   % while loop will run untill the error is sufficiently low as defined by ErrVal
    for i=1:1:N   % Function for finding the closest point in model corresponding to each point in the source.
    minval=9e99;
    for j=1:1:M
        val=norm(source(:,i)-model(:,j));
                    if val<minval
                        minval=val;
                        vi(i)=j; % Index of the closest point is stored in vi
                    end
    end
    end

Cs=mean(source,2); % Centroid of Source data
Cm=mean(model,2);  % Centroid of Model Data
source1=zeros(size(source,1),size(source,2)); % New variable source1 is defined
p1=zeros(size(source,1),size(source,2)); % New variable p1 is defined
for i=1:1:N
    source1(:,i)=source(:,i)-Cs; % Source1 is the value of the source after removing centroid of the source from it.
    p1(:,i)=model(:,vi(i))-Cm;  % p1 is the value of the closest model points to source after removing centroid of the model from it.
end

H=source1*p1'; % Defined a matrix H for getting its Singular value decomposition
[U,D,V]=svd(H); % Singular value decomposition of H

R=V*U';  % Rotation Matrix R
T=Cm-R*Cs; % Translational Vector T

% Building the Transformation
TR=R*TR;
TT=R*TT+T;

source=R*source; % Transforming the source dataset with the Rotation matrix

% Transforming the source dataset with Translational vector
for i=1:1:m
        source(i,:)=source(i,:)+T(i);
end

% calculating the error between the model and the source
Err=0;
for i=1:1:N
    Err=Err+norm(model(:,vi(i))-source(:,i));
end

% if the error is less that the defined threshold then break otherwise continue the loop
if abs(Err1-Err/N)<ErrVal
    break;
else
    Err1=Err/N;
end
end

end


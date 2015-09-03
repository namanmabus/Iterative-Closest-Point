clc;
clear all;


fprintf('Loading and Visualizing 2D Line Data ...\n')
load('2D_Line.mat');

figure();
plot(model(1,:),model(2,:),'r.',source(1,:),source(2,:),'b.'), axis equal
title('Original data points (blue) and model points (red)')

fprintf('Program paused. Press enter to apply Iterative Closest Point Algorithm\n');
pause;

[ TR,TT,source ] = Iterativeclosestpoint( model,source,0.0001 );

figure();
plot(model(1,:),model(2,:),'r.',source(1,:),source(2,:),'b.'), hold on, axis equal
title('Original data points (blue) and model points (red)')

clear all;
fprintf('Program paused. Press enter to Load 2D Line Noise Data\n');
pause;
close all;
fprintf('Loading and Visualizing 2D Line Noise Data ...\n')
load('2D_Line_Noise.mat');

figure();
plot(model(1,:),model(2,:),'r.',source(1,:),source(2,:),'b.'), axis equal
title('Original data points (blue) and model points (red)')

fprintf('Program paused. Press enter to apply Iterative Closest Point Algorithm\n');
pause;

[ TR,TT,source ] = Iterativeclosestpoint( model,source,0.0001 );

figure();
plot(model(1,:),model(2,:),'r.',source(1,:),source(2,:),'b.'), hold on, axis equal
title('Original data points (blue) and model points (red)')

clear all;

fprintf('Program paused. Press enter to Load 3D Cat Data\n');
pause;
close all;
fprintf('Loading and Visualizing 3D Cat Data ...\n')
load('3D_Cat.mat');

figure();
plot3(model(1,:),model(2,:),model(3,:),'r.',source(1,:),source(2,:),source(3,:),'b.'), hold on, axis equal
plot3([1 1 0],[0 1 1],[0 0 0],'r-',[1 1],[1 1],[0 1],'r-','LineWidth',2)
title('Original data points (blue) and model points (red)')

fprintf('Program paused. Press enter to apply Iterative Closest Point Algorithm\n');
pause;

[ TR,TT,source ] = Iterativeclosestpoint( model,source,0.0001 );

figure();
plot3(model(1,:),model(2,:),model(3,:),'r.',source(1,:),source(2,:),source(3,:),'b.'), hold on, axis equal
plot3([1 1 0],[0 1 1],[0 0 0],'r-',[1 1],[1 1],[0 1],'r-','LineWidth',2)
title('Original data points (blue) and model points (red)')



clear all;

fprintf('Program paused. Press enter to Load 3D Cat Noise Data\n');
pause;
close all;
fprintf('Loading and Visualizing 3D Cat Noise Data ...\n')
load('3D_Cat_Noise.mat');

figure();
plot3(model(1,:),model(2,:),model(3,:),'r.',source(1,:),source(2,:),source(3,:),'b.'), hold on, axis equal
plot3([1 1 0],[0 1 1],[0 0 0],'r-',[1 1],[1 1],[0 1],'r-','LineWidth',2)
title('Original data points (blue) and model points (red)')

fprintf('Program paused. Press enter to apply Iterative Closest Point Algorithm\n');
pause;

[ TR,TT,source ] = Iterativeclosestpoint( model,source,0.0001 );

figure();
plot3(model(1,:),model(2,:),model(3,:),'r.',source(1,:),source(2,:),source(3,:),'b.'), hold on, axis equal
plot3([1 1 0],[0 1 1],[0 0 0],'r-',[1 1],[1 1],[0 1],'r-','LineWidth',2)
title('Original data points (blue) and model points (red)')

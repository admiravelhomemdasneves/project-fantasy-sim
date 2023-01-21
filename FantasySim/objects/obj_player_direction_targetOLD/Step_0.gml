/// @description Insert description here
// You can write your code in this editor

xAxis = obj_playerOLD.x;
yAxis = obj_playerOLD.y;
xTarget = global.mouseX;
yTarget = global.mouseY;
depth = -y;

x = xAxis + lengthdir_x(distanceToPlayer, point_direction(xAxis,yAxis,xTarget,yTarget));
y = yAxis + lengthdir_y(distanceToPlayer, point_direction(xAxis,yAxis,xTarget,yTarget));

image_angle = point_direction(xAxis,yAxis,xTarget,yTarget);
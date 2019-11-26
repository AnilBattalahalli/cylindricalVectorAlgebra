% Proving that div(curl(A)) = 0
pkg load symbolic
syms x y z r theta
A = [r^2 cos(theta) z];
disp("Vector Field is:\n")
disp(A)
disp("\n\n")
disp("Divergence of curl for the following vector field is:\n")
o = divcyl(curlcyl(A,x,y,z,r,theta),x,y,z,r,theta);
disp(o)

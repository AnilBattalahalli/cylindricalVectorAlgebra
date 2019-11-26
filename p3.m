% Proving that curl(grad(A)) = [0 0 0] in cylinrical coordinate system
pkg load symbolic
syms x y z r theta
A = (r*sin(theta))-1+z;
disp("Scalar Field is:\n")
disp(A)
disp("\n\nCurl of Gradient of a scalar field is:")
o = curlcyl(gradcyl(A,x,y,z,r,theta),x,y,z,r,theta);
disp(o)

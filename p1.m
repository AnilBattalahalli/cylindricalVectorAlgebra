% testing distributive property of curl in cylindrical coordinate system:wq
pkg load symbolic
syms x y z r theta;
a = [r*cos(theta) 0 z];
b = [r*sin(theta) 0 z];
c = a+b;
disp("\n\n\nVector Field A is:\n")
disp(a)
disp("\n\n\nVector Field B is:\n")
disp(b)
disp("\n\n")
disp("Addition of the vector fields is\n")
disp(c)
lhs = curlcyl(a,x,y,z,r,theta)+curlcyl(b,x,y,z,r,theta);
rhs = curlcyl(c,x,y,z,r,theta);
disp("LHS is:\n")
disp(lhs)
disp("RHS is:\n")
disp(rhs)
disp("\n\n\n\n")
disp("Value of LHS and RHS at the point [r,theta,z]=[1,2,3] is:")
l = subs(lhs,[r,theta,z],[1,2,3]);
r = subs(rhs,[r,theta,z],[1,2,3]);
vpa(l,5)
vpa(r,5)

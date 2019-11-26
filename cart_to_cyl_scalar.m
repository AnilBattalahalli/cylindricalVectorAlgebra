function fo = cart_to_cyl_scalar(f,x,y,z,r,theta)
	fo = simplify(subs(f,[x,y,z],[r*cos(theta),r*sin(theta),z]));

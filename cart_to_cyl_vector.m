function fo = cart_to_cyl_vector(f,x,y,z,r,theta)
	ax_cyl = simplify(subs(f(1),[x,y,z],[r*cos(theta),r*sin(theta),z]));
	ay_cyl = simplify(subs(f(2),[x,y,z],[r*cos(theta),r*sin(theta),z]));
	az_cyl = simplify(subs(f(3),[x,y,z],[r*cos(theta),r*sin(theta),z]));
	ar = (ax_cyl*cos(theta))+(ay_cyl*sin(theta));
	atheta = (-1*ax_cyl*sin(theta))+(ay_cyl*cos(theta));
	az = az_cyl;
	fo = [ar atheta az];

function fo = cyl_to_cart_scalar(f,x,y,z,r,theta)
	fo = simplify(subs(f,[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));

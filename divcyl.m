function fo = divcyl(f,x,y,z,r,theta)
	f_cart = cyl_to_cart_vector(f,x,y,z,r,theta);
	f_div = divergence(f_cart,[x,y,z]);
	fo = cart_to_cyl_scalar(f_div,x,y,z,r,theta);

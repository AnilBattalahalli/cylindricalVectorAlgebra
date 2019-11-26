function fo = gradcyl(f,x,y,z,r,theta)
	fcart = cyl_to_cart_scalar(f,x,y,z,r,theta);
	fg_cart = gradient(fcart,[x,y,z]);
	fo = cart_to_cyl_vector(fg_cart,x,y,z,r,theta);

function fo = curlcyl(f,x,y,z,r,theta)
	f_cart = cyl_to_cart_vector(f,x,y,z,r,theta);
	f_curl = curl(f_cart,[x,y,z]);
	fo = cart_to_cyl_vector(f_curl,x,y,z,r,theta);
	

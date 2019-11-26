function fo = lapcyl(f,x,y,z,r,theta)
	f_car = cyl_to_cart_scalar(f,x,y,z,r,theta);
	f_lap = laplacian(f_car,[x,y,z]);
	fo = cart_to_cyl_scalar(f_lap,x,y,z,r,theta);

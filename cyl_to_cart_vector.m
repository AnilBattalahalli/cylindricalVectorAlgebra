function fo = cyl_to_cart_vector(f,x,y,z,r,theta)
	ar_car = simplify(subs(f(1),[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));
	atheta_car = simplify(subs(f(2),[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));
	az_car = simplify(subs(f(3),[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));
	ax = simplify(subs((ar_car*cos(theta))+(-1*atheta_car*sin(theta)),[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));
	ay = simplify(subs((ar_car*sin(theta))+(atheta_car*cos(theta)),[r,theta,z],[sqrt((x^2)+(y^2)),atan(y/x),z]));
	az = az_car;
	fo = [ax ay az];

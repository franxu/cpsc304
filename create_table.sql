
CREATE TABLE customer(
	c_name char(30),
	destination char(50),
	payment_status int,
	c_number int,
	s_date date,
	e_date date,
	PRIMARY KEY(c_number));
	
CREATE TABLE pack(
	price int,
	p_id int,
	has_flight int,
	has_hotel int,
	has_rental int,
	c_number int,
	PRIMARY KEY (p_id, c_number),
	FOREIGN KEY (c_number) REFERENCES customer);
	
CREATE TABLE travel_agent(
	e_id int,
	e_name char(30),
	PRIMARY KEY(e_id));
	
CREATE TABLE airline(
	a_name char(30),
	a_id char(2),
	PRIMARY KEY(a_id));

CREATE TABLE flight(
	availability int,
	f_code int,
	f_source char(50),
	f_destination char(50),
	f_time int,
	a_id char(2),
	PRIMARY KEY (f_code),
	FOREIGN KEY (a_id) REFERENCES airline);
	
CREATE TABLE hotel(
	h_name char(30),
	h_address char(50),
	PRIMARY KEY (h_address));
	
CREATE TABLE room(
	s_date date,
	e_date date,
	availability int,
	r_size int,
	r_num int,
	h_address char(50),
	PRIMARY KEY (r_num),
	FOREIGN KEY (h_address) REFERENCES hotel);
	
CREATE TABLE rental(
	r_name char(30),
	r_address char(50),
	PRIMARY KEY (r_address));
	
CREATE TABLE car(
	l_number varchar (10),
	availability int,
	s_date date,
	e_date date,
	c_type char(10),
	r_address char(50),
	PRIMARY KEY (l_number),
	FOREIGN KEY (r_address) REFERENCES rental);
	

	

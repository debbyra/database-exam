-- REGISTRATION NUMBER 031 / 222041

-- Question 7.iii.
CREATE TABLE actors (a_id bigint PRIMARY KEY NOT NULL,
					 a_name varchar (59) NOT NULL,
					 a_age int);

CREATE TABLE directors (d_id bigint PRIMARY KEY NOT NULL,
						d_name varchar (59) NOT NULL,
						address varchar(59));

CREATE TABLE tv_series (ser_id bigint PRIMARY KEY NOT NULL,
						ser_name varchar (255) NOT NULL,
						d_id bigint,
						no_ep int NOT NULL,
						a_id bigint,
						transmission_stat varchar (59),
						FOREIGN KEY (d_id) REFERENCES directors (d_id),
						FOREIGN KEY (a_id) REFERENCES actors (a_id));
						
CREATE TABLE tv_company (id bigint PRIMARY KEY NOT NULL,
						 ser_id bigint,
						 a_id bigint,
						 d_id bigint,
						 FOREIGN KEY (ser_id) REFERENCES tv_series(ser_id),
						 FOREIGN KEY (a_id) REFERENCES actors(a_id),
						 FOREIGN KEY(d_id) REFERENCES directors(d_id));

CREATE TABLE episodes (ep_id bigint PRIMARY KEY NOT NULL,
					   d_id bigint,
					   ser_id bigint,
					   FOREIGN KEY (d_id) REFERENCES directors(d_id),
					   FOREIGN KEY (ser_id) REFERENCES tv_series(ser_id));












						
						
						
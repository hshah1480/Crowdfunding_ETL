
-- Create table for contacts data.
CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL
);

-- Create table for category data.
CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(50)NOT NULL
);


-- Create table for subcategory data.
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(50) NOT NULL	
);

--Create table for campaign data.
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(100) NOT NULL,
	description TEXT NOT NULL,
	goal NUMERIC(10,2) NOT NULL,
	pledged NUMERIC(10,2) NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);




	
 DROP TABLE campaign
 CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(10)   NOT NULL,
    description text   NOT NULL,
    goal numeric(10,2)   NOT NULL,
    pledge numeric(10,2)   NOT NULL,
    outcome varchar(50)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(10)   NOT NULL,
    currency varchar(10)   NOT NULL,
    launched_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(10)   NOT NULL,
    subcategory_id varchar(10)   NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES Contact(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
     
);

DROP TABLE Contact
CREATE TABLE Contact (
    contact_id int   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    email VARCHAR(100)   NOT NULL,
    PRIMARY KEY (contact_id)
     
);

DROP TABLE category
CREATE TABLE category (
    category_id varchar(10)   NOT NULL,
    category varchar(30)   NOT NULL,
    PRIMARY KEY (category_id)
     
);

DROP TABLE subcategory
CREATE TABLE subcategory (
    subcategry_id varchar(10)   NOT NULL,
    subcategory varchar(30)   NOT NULL,
    PRIMARY KEY (subcategry_id)
);

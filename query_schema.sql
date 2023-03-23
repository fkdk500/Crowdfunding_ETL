
--Create contact table
DROP TABLE contacts
CREATE TABLE "contacts" (
    contact_id int   NOT NULL,
    first_name varchar(30)   NOT NULL,
    last_name varchar(30)   NOT NULL,
    email VARCHAR(50)   NOT NULL,
    PRIMARY KEY (contact_id)
          
);

--Create category table
DROP TABLE category
CREATE TABLE "category" (
    category_id varchar(10)   NOT NULL,
    category varchar(30)   NOT NULL,
    PRIMARY KEY (category_id)
     
);

--Create subcategory table
DROP TABLE subcategory
CREATE TABLE "subcategory" (
    subcategory_id varchar(10)   NOT NULL,
    subcategory varchar(30)   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

--Create campaign table
DROP TABLE campaign
CREATE TABLE "campaign" (
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(15) NOT NULL,
    description text NOT NULL,
    goal float NOT NULL,
    pledge float NOT NULL,
    outcome varchar(50) NOT NULL,
    backers_count int NOT NULL,
    country varchar(10) NOT NULL,
    currency varchar(10) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(10) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
     
);

--view the table
select * from contacts

--view the table
select * from category

--view the table
select * from subcategory

--view the table
select * from campaign

select campaign.country,category.category,campaign.outcome
from campaign
inner join category ON
campaign.category_id=category.category_id
where outcome='successful'
group by campaign.country,category.category,campaign.outcome
ORDER by campaign.country DESC;

select campaign.country, count(*) as "Successful_Count"
from campaign
where outcome='successful'
group by campaign.country
ORDER by "Successful_Count" DESC;

select 


contact
--
contact_id int PK
first_name VARCHAR(30)
last_name VARCHAR(30)
email VARCHAR(30)

category
--
category_id VARCHAR(10) PK
category VARCHAR(30)

subcategory
--
subcategory_id VARCHAR(10) PK
subcategory VARCHAR(30)

campaign
--
cf_id int  PK
contact_id int FK >- contact.contact_id
company_name VARCHAR(20)
description text 
goal numeric
pledge numeric
outcome VARCHAR(50)
backers_count int
country VARCHAR(15)
currency VARCHAR(10)
launched_date date
end_date date
category_id VARCHAR(10) FK >- category.category_id
subcategory_id VARCHAR(10) FK >- subcategory.subcategory_id


-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Category" (
    "category" name   NOT NULL,
    "category_id" name   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory" name   NOT NULL,
    "subcategory_id" name   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" name   NOT NULL,
    "description" name   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" name   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" name   NOT NULL,
    "currency" name   NOT NULL,
    "launch_date" timestamp   NOT NULL,
    "end_date" timestamp   NOT NULL,
    "staff_pick" boolean   NOT NULL,
    "spotlight" boolean   NOT NULL,
    "category_and_sub-category" name   NOT NULL,
    "category_id" name   NOT NULL,
    "subcategory_id" name   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" int   NOT NULL,
    "first_name" name   NOT NULL,
    "last_name" name   NOT NULL,
    "email" name   NOT NULL
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contact" ADD CONSTRAINT "fk_Contact_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");


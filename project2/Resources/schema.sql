-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Category" (
    "category" string   NOT NULL,
    "category_id" string   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory" string   NOT NULL,
    "subcategory_id" string   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory"
     )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" object   NOT NULL,
    "description" object   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" flaot   NOT NULL,
    "outcome" object   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" object   NOT NULL,
    "currency" object   NOT NULL,
    "launch_date" datetime   NOT NULL,
    "end_date" datetime   NOT NULL,
    "staff_pick" bool   NOT NULL,
    "spotlight" bool   NOT NULL,
    "category_and_sub-category" object   NOT NULL,
    "category_id" object   NOT NULL,
    "subcategory_id" object   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

CREATE TABLE "Contact" (
    "contact_id" int   NOT NULL,
    "first_name" object   NOT NULL,
    "last_name" object   NOT NULL,
    "email" object   NOT NULL
);

ALTER TABLE "Category" ADD CONSTRAINT "fk_Category_category_id" FOREIGN KEY("category_id")
REFERENCES "Campaign" ("category_id");

ALTER TABLE "Subcategory" ADD CONSTRAINT "fk_Subcategory_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "Campaign" ("subcategory_id");

ALTER TABLE "Contact" ADD CONSTRAINT "fk_Contact_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Campaign" ("contact_id");


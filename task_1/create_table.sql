CREATE TABLE "police_depart" (
	"crime_id" INTEGER PRIMARY KEY, 
	"original_crime_type_name" TEXT,
	"report_date" TIMESTAMP,
	"call_date" TIMESTAMP,
	"offense_date" TIMESTAMP,
	"call_time" TIME,
	"call_date_time" TIMESTAMP,
	"disposition" TEXT, 
	"adress" TEXT,
	"city" TEXT,
	"state" TEXT,
	"agency_id" INTEGER,
	"adress_type" TEXT,
	"common_location" TEXT
);
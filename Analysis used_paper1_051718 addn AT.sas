libname net 'C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Site data\A - healthcare social service edit';

 
%macro importall (a,b);
proc import out = &a
datafile = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Site data\A - healthcare social service edit\&b"
dbms = xlsx replace;
getnames = yes;
run;
%mend importall;

%importall (Bountiful, Bountiful_Table1_WorkTogether edit.xlsx);
%importall (CarsonCity, CarsonCity_Table1_WorkTogether edit.xlsx);
%importall (Elyria, elyria_Table1_WorkTogether edit.xlsx);
%importall (Greensboro, Greensboro_Table1_WorkTogether edit.xlsx);
%importall (Jeffersonville, Jeffersonville_Table1_WorkTogether edit.xlsx);
%importall (Joliet, Joliet_Table1_WorkTogether edit.xlsx);
%importall (Kissimmee, Kissimmee_Table1_WorkTogether edit.xlsx);
%importall (Lakewood, Lakewood_Table1_WorkTogether edit.xlsx);
%importall (Lancaster, Lancaster_Table1_WorkTogether edit.xlsx);
%importall (Newburyport, Newburyport_Table1_WorkTogether edit.xlsx);
%importall (Oshkosh, Oshkosh_Table1_WorkTogether edit.xlsx);
%importall (Patchogue, Patchogue_Table1_WorkTogether edit.xlsx);
%importall (Pocatello, Pocatello_Table1_WorkTogether edit.xlsx);
%importall (Pontiac, Pontiac_Table1_WorkTogether edit.xlsx);
%importall (Robbinsdale, Robbinsdale_Table1_WorkTogether edit.xlsx);
%importall (SLO, San Luis Obispo_Table1_WorkTogether edit.xlsx);
%importall (Schenectady, Schenectady_Table1_WorkTogether edit.xlsx);
%importall (Springfield, Springfield_Table1_WorkTogether edit.xlsx);
%importall (Summit, Summit_Table1_WorkTogether edit.xlsx);
%importall (Vallejo, Vallejo_Table1_WorkTogether edit.xlsx);


data net.bountiful (keep = org_num n_healthcare n_socialservices);
set Bountiful;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5);
run;

data net.carsoncity (keep = org_num n_healthcare n_socialservices);
set CarsonCity;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8);
run;

data net.elyria (keep = org_num n_healthcare n_socialservices);
set elyria;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5,Healthcare_6, Healthcare_7);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4);
run;

data net.greensboro (keep = org_num n_healthcare n_socialservices);
set Greensboro;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9, Social_Services_10, Social_Services_11, Social_Services_12, Social_Services_13, Social_Services_14, Social_Services_15, Social_Services_16);
run;

data net.jeffersonville (keep = org_num n_healthcare n_socialservices);
set Jeffersonville;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9, Social_Services_10, Social_Services_11, Social_Services_12);
run;

data net.joliet (keep = org_num n_healthcare n_socialservices);
set Joliet;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6, Healthcare_7);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9);
run;

data net.kissimmee (keep = org_num n_healthcare n_socialservices);
set kissimmee;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6, Healthcare_7, Healthcare_8);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6);
run;

data net.lakewood (keep = org_num n_healthcare n_socialservices);
set lakewood;
n_healthcare =  sum(Healthcare, Healthcare_1);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6);
run;

data net.lancaster (keep = org_num n_healthcare n_socialservices);
set lancaster;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9, Social_Services_10, Social_Services_11, Social_Services_12, Social_Services_13, Social_Services_14, Social_Services_15, Social_Services_16);
run;

data net.newburyport (keep = org_num n_healthcare n_socialservices);
set newburyport;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9);
run;


data net.oshkosh(keep = org_num n_healthcare n_socialservices);
set oshkosh;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6);
run;


data net.patchogue (keep = org_num n_healthcare n_socialservices);
set patchogue;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4);
run;

data net.pocatello (keep = org_num n_healthcare n_socialservices);
set pocatello;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9);
run;

data net.pontiac (keep = org_num n_healthcare n_socialservices);
set Pontiac;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6, Healthcare_7, Healthcare_8);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9, Social_Services_10);
run;

data net.robbinsdale (keep = org_num n_healthcare n_socialservices);
set Robbinsdale;
n_healthcare = sum(Healthcare, Healthcare_1);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8);
run;

data net.schenectady (keep = org_num n_healthcare n_socialservices);
set Schenectady;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4,Healthcare_5, Healthcare_6, Healthcare_7);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4);
run;

data net.slo (keep = org_num n_healthcare n_socialservices);
set slo;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4, Healthcare_5, Healthcare_6, Healthcare_7);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9);
run;

data net.springfield (keep = org_num n_healthcare n_socialservices);
set springfield;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6, Social_Services_7, Social_Services_8, Social_Services_9, Social_Services_10);
run;


data net.summit (keep = org_num n_healthcare n_socialservices);
set summit;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4, Healthcare_5, Healthcare_6);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2);
run;

data net.vallejo (keep = org_num n_healthcare n_socialservices);
set vallejo;
n_healthcare = sum(Healthcare, Healthcare_1, Healthcare_2, Healthcare_3, Healthcare_4);
n_socialservices = sum(Social_Services, Social_Services_1, Social_Services_2, Social_Services_3, Social_Services_4, Social_Services_5, Social_Services_6);
run;


data net.new_all;
	merge net.bountiful net.carsoncity net.elyria net.greensboro net.jeffersonville net.joliet net.kissimmee
	      net.lakewood net.lancaster net.newburyport net.oshkosh net.patchogue net.pocatello net.pontiac net.robbinsdale
		  net.schenectady net.slo net.springfield net.summit net.vallejo;
	by org_num;
run;
	
proc export 
data = net.new_all
outfile = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Site data\A - healthcare social service edit\Sum_051718"
dbms = xlsx
replace;
run;

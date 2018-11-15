/*PART C of Partnerships and Performance Survey Data Extraction and Analyses*/
/*NOV 7 2017*/


*DATA STEPS
1) Have to import every dataset across 20 HSAs, 
2) Keep the 15 Part C questions from 20 HSAs
3) Rename the questions in each HSA if they have different numbers;


libname annabel 'C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Part C';

/*Bountiful UT*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Bountiful UT\Bountiful.xls"
	OUT = annabel.bountiful (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;
proc sort data=annabel.bountiful;
by org_num;
run;

/*Carson City NV*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Carson City NV\CARSON CITY -Survey_September 21 2017.xlsx"
	OUT = annabel.carsoncity (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;
proc sort data=annabel.carsoncity;
by org_num;
run;

/*Elyria OH*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Elyria OH\Elyria Oct 2017.xls"
	OUT = annabel.elyria (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;
proc sort data=annabel.elyria;
by org_num;
run;

/*Greensboro NC*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Greensboro NC\Greensboro September 2017.xls"
	OUT = annabel.greensboro (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;
proc sort data=annabel.greensboro;
by org_num;
run;

/*Jeffersonville IN*/

proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Jeffersonville IN\Jeffersonville Nov 2017.xlsx"
	OUT = annabel.jeffersonville (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.jeffersonville;
by org_num;
run;

/*Joliet IL*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Joliet IL\Joliet Oct 2017.xlsx"
	OUT = annabel.joliet (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.joliet;
by org_num;
run;

/*Kissimmee FL*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Kissimmee FL\Kissimmee Oct 2017.xls"
	OUT = annabel.kissimmee (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.kissimmee;
by org_num;
run;


/*Lakewood NJ*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Lakewood NJ\Lakewood Oct 2017.xlsx"
	OUT = annabel.lakewood (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.lakewood;
by org_num;
run;

/*Lancaster PA*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Lancaster PA\Lancaster Oct 2017.xls"
	OUT = annabel.lancaster (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.lancaster;
by org_num;
run;

proc contents data=annabel.lancaster;
run;

/*Newburyport MA*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Newburyport MA\Newburyport Sept 2017.xls"
	OUT = annabel.newburyport (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.newburyport;
by org_num;
run;

/*Oshkosh WI*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Oshkosh WI\Oshkosh Oct 2017.xls"
	OUT = annabel.oshkosh (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.oshkosh;
by org_num;
run;

/*Patchogue NY*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Patchogue NY\Patchogue Oct 2017.xls"
	OUT = annabel.patchogue (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.patchogue;
by org_num;
run;


/*Pocatello ID*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Pocatello ID\Pocatello Jan 2018.xls"
	OUT = annabel.pocatello (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.pocatello;
by org_num;
run;

/*Pontiac MI*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Pontiac MI\Pontiac Jan 2018 - delete 2009 repeat.xls"
	OUT = annabel.pontiac (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.pontiac;
by org_num;
run;

/*Robbinsdale MN*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Robbinsdale MN\Robbinsdale Oct 2017.xls"
	OUT = annabel.robbinsdale (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.robbinsdale;
by org_num;
run;

/*San Luis Obispo CA*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\San Luis Obispo CA\SLO October 2017.xls"
	OUT = annabel.slo (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.slo;
by org_num;
run;

/*Schenectady NY*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Schenectady NY\Schenectady Nov 2017.xlsx"
	OUT = annabel.schenectady (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.schenectady;
by org_num;
run;


/*Springfield OR*/

proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Springfield OR\Springfield_deleted 611 repeat.xlsx"
	OUT = annabel.springfield (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.springfield;
by org_num;
run;

/*Summit NJ*/
proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Summit NJ\Summit Oct 2017.xls"
	OUT = annabel.summit (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.summit;
by org_num;
run;

/*Vallejo CA*/

proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Vallejo CA\Vallejo Oct 2017.xls"
	OUT = annabel.vallejo (keep=org_num Q6_1 Q6_2 Q6_3 Q7_9 Q7_11 Q7_12 Q7_13 Q7_14 Q7_15 Q7_16 Q7_17 Q7_18 Q7_19 Q7_20 Q7_21)
	DBMS = xls
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=annabel.vallejo;
by org_num;
run;

/*
proc datasets lib=annabel memtype=data;
   modify bountiful carsoncity elyria greensboro jeffersonville
		  joliet kissimmee lakewood lancaster newburyport
		  oshkosh patchogue pocatello pontiac robbinsdale
	      schenectady slo springfield summit vallejo;
     attrib _all_ label= ' ';
     attrib _all_ format=;
	 attrib _all_ informat=;
run;*/

/* proc merge*/
data all_c;
length Q6_1 $50. q6_2 $50. q6_3 $50.; 
length q7_9 $23. q7_11 $23. q7_12 $23 q7_13 $23. q7_14 $23. q7_15 $23. q7_16 $23. 
		q7_17 $23. q7_18 $23. q7_19 $23. q7_20 $23. q7_21 $23.; 
	merge annabel.bountiful annabel.carsoncity annabel.elyria annabel.greensboro annabel.jeffersonville
		  annabel.joliet annabel.kissimmee annabel.lakewood annabel.lancaster annabel.newburyport
		  annabel.oshkosh annabel.patchogue annabel.pocatello annabel.pontiac annabel.robbinsdale
	      annabel.schenectady annabel.slo annabel.springfield annabel.summit annabel.vallejo;
	by org_num;
	if org_num=9999 then delete;
	rename org_num=org;
run;

proc contents data=all_c;
run;

/* Note: there were originally duplicates for org_num 611, 1107, 1505, 2004, 2009 and 2016. */
proc freq data=all_c;
tables org;
run;

data partc_012318;
set all_c;
if q6_1="Weekly or more" then Q6_coal=5;
	else if q6_1="Monthly" then Q6_coal=4;
	else if q6_1="Every few months" then q6_coal=5;
	else if q6_1="Annually" then q6_coal=4;
    else if find (q6_1, 'Less' , 'i') then q6_coal=1; /*Added this search string for "less than once per year" since it was not parsing properly*/
if q6_2="Weekly or more" then Q6_comm=5;
	else if q6_2="Monthly" then Q6_comm=4;
	else if q6_2="Every few months" then q6_comm=5;
	else if q6_2="Annually" then q6_comm=4;
	else if find (q6_2, 'Less' , 'i') then q6_comm=1;
if q6_3="Weekly or more" then Q6_data=5;
	else if q6_3="Monthly" then Q6_data=4;
	else if q6_3="Every few months" then q6_data=5;
	else if q6_3="Annually" then q6_data=4;
	else if find (q6_3, 'Less' , 'i')  then q6_data=1;

if q7_9="Strongly agree" then Q7a=5;
	else if q7_9="Agree" then Q7a=4;
	else if q7_9="Neutral" then Q7a=3;
	else if q7_9="Disagree" then Q7a=2;
	else if q7_9="Strongly disagree" then Q7a=1;
if q7_11="Strongly agree" then Q7b=5;
	else if q7_11="Agree" then Q7b=4;
	else if q7_11="Neutral" then Q7b=3;
	else if q7_11="Disagree" then Q7b=2;
	else if q7_11="Strongly disagree" then Q7b=1;
if q7_12="Strongly agree" then Q7c=1;
	else if q7_12="Agree" then Q7c=2;
	else if q7_12="Neutral" then Q7c=3;
	else if q7_12="Disagree" then Q7c=4;
	else if q7_12="Strongly disagree" then Q7c=5;
if q7_13="Strongly agree" then Q7d=5;
	else if q7_13="Agree" then Q7d=4;
	else if q7_13="Neutral" then Q7d=3;
	else if q7_13="Disagree" then Q7d=2;
	else if q7_13="Strongly disagree" then Q7d=1;
if q7_14="Strongly agree" then Q7e=1;
	else if q7_14="Agree" then Q7e=2;
	else if q7_14="Neutral" then Q7e=3;
	else if q7_14="Disagree" then Q7e=4;
	else if q7_14="Strongly disagree" then Q7e=5;
if q7_15="Strongly agree" then Q7f=5;
	else if q7_9="Agree" then Q7f=4;
	else if q7_9="Neutral" then Q7f=3;
	else if q7_9="Disagree" then Q7f=2;
	else if q7_9="Strongly disagree" then Q7f=1;
if q7_16="Strongly agree" then Q7g=5;
	else if q7_16="Agree" then Q7g=4;
	else if q7_16="Neutral" then Q7g=3;
	else if q7_16="Disagree" then Q7g=2;
	else if q7_16="Strongly disagree" then Q7g=1;
if q7_17="Strongly agree" then Q7h=5;
	else if q7_17="Agree" then Q7h=4;
	else if q7_17="Neutral" then Q7h=3;
	else if q7_17="Disagree" then Q7h=2;
	else if q7_17="Strongly disagree" then Q7h=1;
if q7_18="Strongly agree" then Q7i=5;
	else if q7_18="Agree" then Q7i=4;
	else if q7_18="Neutral" then Q7i=3;
	else if q7_18="Disagree" then Q7i=2;
	else if q7_18="Strongly disagree" then Q7i=1;
if q7_19="Strongly agree" then Q7j=5;
	else if q7_19="Agree" then Q7j=4;
	else if q7_19="Neutral" then Q7j=3;
	else if q7_19="Disagree" then Q7j=2;
	else if q7_19="Strongly disagree" then Q7j=1;
if q7_20="Strongly agree" then Q7k=5;
	else if q7_20="Agree" then Q7k=4;
	else if q7_20="Neutral" then Q7k=3;
	else if q7_20="Disagree" then Q7k=2;
	else if q7_20="Strongly disagree" then Q7k=1;
if q7_21="Strongly agree" then Q7l=1;
	else if q7_21="Agree" then Q7l=2;
	else if q7_21="Neutral" then Q7l=3;
	else if q7_21="Disagree" then Q7l=4;
	else if q7_21="Strongly disagree" then Q7l=5;

Resp_surv="yes";

run;

proc freq data=partc_012318;
	tables org*q6_1*Q6_coal
		   org*q6_2*Q6_comm
		   org*q6_3*q6_data
		   / list missing;
run;

proc import
	DATAFILE = "C:\Users\alb47\Box Sync\CMWF Achieving Value 2017\Data Analysis\Blank responses_1-10-18.xlsx"
	OUT = blanks
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc sort data=blanks;
by org;
run;
proc sort data=net.partc_012318;
by org;
run;

data partc1;
merge net.partc_012318 blanks;
by org;
run;
data partc2;
set partc1;
if no_responses_at_all=1 then resp_surv="no";
run;

proc freq data=partc2;
tables hsa_name*resp_surv;
run;

proc import
	DATAFILE = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Qualtrics Codebook_02.05.18.xlsx"
	OUT = codebook
	DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
run;

proc export data=codebook outfile= "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\w descriptives\codebook.dta";
run;

data codebook1;
set codebook;
if org=. then delete;
run;

proc sort data=codebook1;
by org;
run;
proc sort data=partc2;
by org;
run;

data net.codebook_partc_012318;
merge codebook1 partc2;
by org;
if hsa_num=1 or hsa_num=2 or hsa_num=4 or hsa_num=5 or hsa_num=6 or hsa_num=8 or hsa_num=11 or hsa_num=13 or hsa_num=15 or hsa_num=16 or hsa_num=17 or hsa_num=18 then performance="high";
if hsa_num=3 or hsa_num=7 or hsa_num=9 or hsa_num=10 or hsa_num=12 or hsa_num=14 or hsa_num=19 or hsa_num=20 then performance="low";
length surv_resp $3;
if resp_surv="no" or resp_surv=" " then surv_resp="no";
else if resp_surv ne " " then surv_resp="yes";
drop site resp_surv org_type__SAS_renaming_ write_in_1 respondent_name_1_id_1 write_in_2 respondent_name_2_id_2 write_in_3 respondent_name_id write_in_4 respondent_name_id_1 write_in_5 respondent_name_id_2 write_in_6 respondent_name_id_3;
run;



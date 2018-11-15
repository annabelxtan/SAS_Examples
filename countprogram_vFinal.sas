
libname annabel 'C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Part B\trial';

PROC IMPORT OUT= ATdata 
            DATAFILE= "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Part B\trial\Part B_Merged_vFinal_04.05.18" 
            DBMS = xlsx
	REPLACE;
	GETNAMES = YES;
RUN;

data ATdata1;
	set ATdata;
	where hsa_name in ("Schenectady", "Summit", "Lakewood", "Vallejo",  "Robbinsdale", "Springfield", "Patchogue",
		               "San Luis Obispo" , "Kissimmee" , "Elyria" , "Pocatello", "Jeffersonville", "Oshkosh", "Newburyport",
					   "Carson City", "Bountiful", "Greensboro", "Lancaster", "Joliet", "Pontiac");
					 run;

proc freq data=ATdata1;
	table hsa_name*Q3_1 / out=orgQ3_1(keep=hsa_name Q3_1 count) norow nocol nopercent nocum ;
	*output out=orgQ3_1 n=countQ3_1;
run;

*ranked 1st for Question 3;
proc freq data = ATdata1;
	where hsa_name = "Pontiac";
	tables Q3_1;
run;

 *ranked 1st for Question 4;
proc freq data = ATdata1;
	where hsa_name = "Pontiac";
	tables Q4_1;
run;


/* run this to delete the combined dataset before you run the below macro */
proc datasets lib=work nodetails nolist;
	delete allQ3s;
run; quit;


data allQ3s; * for Q3 ONLY - an empty dataset that you will add each questions frequency table dataset to;
length answer $100.;
run;

data allQs; * for both Q3 and Q4 - empty dataset;
length answer $100.;
run;

%macro countnames(q=);
proc freq data=ATdata1;
	table hsa_name*&q / out=org&q(keep=hsa_name &q count rename=(&q=answer)) norow nocol nopercent nocum;
run;

data allQ3s;
	set allQ3s org&q;
run;
%mend countnames;
%countnames(q=Q3_1);
%countnames(q=Q3_2);
%countnames(q=Q3_3);
%countnames(q=Q3_4);
%countnames(q=Q3_5);

/* by HSA */
proc means data=allQ3s sum nway;
	class hsa_name answer;
	var count;
	output out=question3means (drop=_type_ _freq_);
run;

/* overall */
proc means data=allQ3s sum nway;
	class answer;
	var count;
run;

proc export data=question3means
	outfile = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Part B\trial\counts_question3"
	dbms = xlsx REPLACE;
run;

/********************QUESTION 4***********************/

data allQ4s; * for Q4 ONLY - an empty dataset that you will add each questions frequency table dataset to;
length answer $100.;
run;

proc datasets lib=work nodetails nolist;
	delete allQ4s;
run; quit;

%macro countnames(q=);
proc freq data=ATdata1;
	table hsa_name*&q / out=org&q(keep=hsa_name &q count rename=(&q=answer)) norow nocol nopercent nocum;
run;

data allQ4s;
	set allQ4s org&q;
run;
%mend countnames;
%countnames(q=Q4_1);
%countnames(q=Q4_2);
%countnames(q=Q4_3);
%countnames(q=Q4_4);
%countnames(q=Q4_5);

proc means data=allQ4s nway sum;
	class hsa_name answer;
	var count;
	output out=question4means (drop=_type_ _freq_ nway);
run;



proc export data=question4means
	outfile = "C:\Users\xt42\Box Sync\CMWF Achieving Value 2017\Data Analysis\Part B\trial\counts_question4"
	dbms = xlsx REPLACE;
run;

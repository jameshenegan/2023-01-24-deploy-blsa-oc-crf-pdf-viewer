%let path_to_file = '../data-csv/BLSA_DFAQ-CU_Inventory.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE everused_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE lastusage_
		1 = 'Over a year ago'
		10 = 'today*'
		11 = 'I am currently high*'
		2 = '9 - 12 months ago'
		3 = '6 - 9 months ago'
		4 = '3 - 6 months ago '
		5 = '1 - 3 months ago'
		6 = 'less than 1 month ago'
		7 = 'last week'
		8 = 'this week'
		9 = 'yesterday'
	;

	VALUE usagetoday_
		0 = 'I am not at all high'
		1 = 'I am a little bit high'
		2 = 'I am moderately high'
		3 = 'I am very high'
		4 = 'I am extremely high'
	;

	VALUE avguse_
		0 = 'I do not use cannabis'
		1 = 'less than once a year'
		10 = '5 - 6 times a week '
		11 = 'once a day'
		12 = 'more than once a day'
		2 = 'once a year'
		3 = 'once every 3-6 months (2-4 times/yr)'
		4 = 'once every 2 months (6 times/yr)'
		5 = 'once a month (12 times/yr)'
		6 = '2 - 3 times a month'
		7 = 'once a week'
		8 = 'twice a week'
		9 = '3 - 4 times a week'
	;

	VALUE howlongfreq_
		1 = 'less than 1 month'
		10 = '10 - 15 years'
		11 = '15 - 20 years'
		12 = 'more than 20 years'
		2 = '1 - 3 months'
		3 = '3 - 6 months'
		4 = '6 - 9 months'
		5 = '9 - 12 months'
		6 = '1 - 2 years'
		7 = '2 - 3 years'
		8 = '3 - 5 years'
		9 = '5 - 10 years'
	;

	VALUE beforelongfreq_
		0 = 'I do not use cannabis'
		1 = 'less than once a year'
		10 = '5 - 6 times a week '
		11 = 'once a day'
		12 = 'more than once a day'
		2 = 'once a year'
		3 = 'once every 3-6 months (2-4 times/yr)'
		4 = 'once every 2 months (6 times/yr)'
		5 = 'once a month (12 times/yr)'
		6 = '2 - 3 times a month'
		7 = 'once a week'
		8 = 'twice a week'
		9 = '3 - 4 times a week'
	;

	VALUE pastweek_
		0 = '0 days'
		1 = '1 day'
		2 = '2 days'
		3 = '3 days'
		4 = '4 days'
		5 = '5 days'
		6 = '6 days'
		7 = '7 days'
	;

	VALUE entirelife_
		1 = '1 - 5 times in my life'
		10 = 'More than 10000 times in my life'
		2 = '6 - 10 times in my life'
		3 = '11 - 50 times in my life'
		4 = '51 -100 times in my life'
		5 = '101 - 500 times in my life'
		6 = '501 - 1000 times in my life'
		7 = '1001 - 2000 times in my life'
		8 = '2001 - 5000 times in my life'
		9 = '5001 - 10000 times in my life'
	;

	VALUE duringweek_
		0 = 'I do not use cannabis at all'
		1 = 'I only use cannabis on weekends'
		2 = 'I only use cannabis on weekdays'
		3 = 'I use cannabis on weekends and weekdays'
	;

	VALUE preusehours_
		0 = 'I do not use cannabis at all'
		1 = '12 - 18 hours after waking up'
		2 = '9 - 12 hours after waking up'
		3 = '6 - 9 hours after waking up'
		4 = '3 - 6 hours after waking up'
		5 = '1 - 3 hours after waking up'
		6 = 'within 1 hour of waking up'
		7 = 'within 1/2 hour of waking up'
		8 = 'immediately upon waking up'
	;

	VALUE pmethod_
		0 = 'I do not use cannabis'
		1 = 'Joints'
		2 = 'Blunts (cigar sized joints)'
		3 = 'Hand pipe'
		4 = 'Bong (water pipe)'
		5 = 'Hookah'
		6 = 'Vaporizer (e.g. Volcano Vape pen)'
		7 = 'Edibles'
		8 = 'Other'
	;

	VALUE $pform_
		0 = 'None'
		A = 'Marijuana'
		B = 'Concentrates (e.g. Oil Was Shatter Butane Hash Oil Dabs)'
		C = 'Edibles'
		D = 'Other'
	;

	VALUE $sessionamt_
		_0 = 'Other'
		_0.125 = '1/8 of a gram = 0.125 grams'
		_0.25 = '1/4 of a gram = 0.25 grams'
		_0.5 = '1/2 of a gram = 0.5 grams'
		_0.75 = '3/4 of a gram = 0.75 grams'
		_14 = '1/2 ounce = 14 grams'
		_25 = '1 ounce = 28 grams'
		_3.5 = '1/8 of a ounce = 3.5 grams'
		_7 = '1/4 of an ounce = 7 grams'
	;

	VALUE $dayamt_
		_0 = 'Other'
		_0.125 = '1/8 of a gram = 0.125 grams'
		_0.25 = '1/4 of a gram = 0.25 grams'
		_0.5 = '1/2 of a gram = 0.5 grams'
		_0.75 = '3/4 of a gram = 0.75 grams'
		_14 = '1/2 ounce = 14 grams'
		_25 = '1 ounce = 28 grams'
		_3.5 = '1/8 of a ounce = 3.5 grams'
		_7 = '1/4 of an ounce = 7 grams'
	;

	VALUE $weekamt_
		_0 = 'Other'
		_0.125 = '1/8 of a gram = 0.125 grams'
		_0.25 = '1/4 of a gram = 0.25 grams'
		_0.5 = '1/2 of a gram = 0.5 grams'
		_0.75 = '3/4 of a gram = 0.75 grams'
		_14 = '1/2 ounce = 14 grams'
		_25 = '1 ounce = 28 grams'
		_3.5 = '1/8 of a ounce = 3.5 grams'
		_7 = '1/4 of an ounce = 7 grams'
	;

	VALUE thcamt_
		1 = '0 - 4%'
		2 = '5 - 9%'
		3 = '10 - 14%'
		4 = ' 15 - 19%'
		5 = '20 - 24%'
		6 = '25 - 30%'
		7 = 'greater than 30%'
	;

	VALUE avgconthcamt_
		1 = '0 - 9%'
		10 = 'greater than 90%'
		2 = '10 - 19%'
		3 = '20 - 29%'
		4 = '30 - 39%'
		5 = '40 - 49%'
		6 = '50 - 59%'
		7 = '60 - 69%'
		8 = '0 - 79%'
		9 = '80 - 90%'
	;

	VALUE regusedlifetime_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE regused6mth_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE beforeage16_
		0 = 'more than once a day'
		1 = 'once a day'
		10 = 'once a year'
		11 = 'less than once a year'
		12 = 'never'
		2 = '5 - 6 times a week'
		3 = '3 - 4 times a week'
		4 = 'twice a week'
		5 = 'once a week'
		6 = '2 - 3 times a month'
		7 = 'once a month'
		8 = 'once every 2 months (6 times/yr.)'
		9 = 'once every 3-6 months (2-4 times/yr.)'
	;

	VALUE medicinaluse_
		0 = 'No'
		1 = 'Yes'
		2 = 'Yes but I use it for both medicinal and recreational purposes'
	;

	VALUE canabistypeuse_
		1 = 'THC only'
		2 = 'CBD only'
		3 = 'Both THC and CBC'
	;

	VALUE conthcamt_
		1 = '0 - 9%'
		10 = 'greater than 90%'
		2 = '10 - 19%'
		3 = '20 - 29%'
		4 = '30 - 39%'
		5 = '40 - 49%'
		6 = '50 - 59%'
		7 = '60 - 69%'
		8 = '0 - 79%'
		9 = '80 - 90%'
	;

	VALUE conboththcamt_
		1 = '0 - 9%'
		10 = 'greater than 90%'
		2 = '10 - 19%'
		3 = '20 - 29%'
		4 = '30 - 39%'
		5 = '40 - 49%'
		6 = '50 - 59%'
		7 = '60 - 69%'
		8 = '0 - 79%'
		9 = '80 - 90%'
	;

RUN;

    
DATA WORK.IMPORT;
	%let _EFIERR_ = 0;
	INFILE &path_to_file.
	DELIMITER = ','
	MISSOVER
	DSD
	FIRSTOBS = 2;                

	INFORMAT idno BEST32.;
	FORMAT idno BEST12.;

	INFORMAT subject_id BEST32.;
	FORMAT subject_id BEST12.;

	INFORMAT visit BEST32.;
	FORMAT visit BEST12.;

	INFORMAT event_name $8.;
	FORMAT event_name $8.;

	INFORMAT crf_version_DFAInv $7.;
	FORMAT crf_version_DFAInv $7.;

	INFORMAT date_DFAInv YYMMDD10.;
	FORMAT date_DFAInv YYMMDD10.;

	INFORMAT everused BEST32.;
	FORMAT everused BEST12.;

	INFORMAT lastusage BEST32.;
	FORMAT lastusage BEST12.;

	INFORMAT usagetoday BEST32.;
	FORMAT usagetoday BEST12.;

	INFORMAT avguse BEST32.;
	FORMAT avguse BEST12.;

	INFORMAT howlongfreq BEST32.;
	FORMAT howlongfreq BEST12.;

	INFORMAT beforelongfreq BEST32.;
	FORMAT beforelongfreq BEST12.;

	INFORMAT pastweek BEST32.;
	FORMAT pastweek BEST12.;

	INFORMAT dayspastmth BEST32.;
	FORMAT dayspastmth BEST12.;

	INFORMAT entirelife BEST32.;
	FORMAT entirelife BEST12.;

	INFORMAT duringweek BEST32.;
	FORMAT duringweek BEST12.;

	INFORMAT preusehours BEST32.;
	FORMAT preusehours BEST12.;

	INFORMAT weekday BEST32.;
	FORMAT weekday BEST12.;

	INFORMAT weekend BEST32.;
	FORMAT weekend BEST12.;

	INFORMAT pmethod BEST32.;
	FORMAT pmethod BEST12.;

	INFORMAT potherm $23.;
	FORMAT potherm $23.;

	INFORMAT othmethod $1.;
	FORMAT othmethod $1.;

	INFORMAT otherm $18.;
	FORMAT otherm $18.;

	INFORMAT pform $1.;
	FORMAT pform $1.;

	INFORMAT potherf $26.;
	FORMAT potherf $26.;

	INFORMAT oform $1.;
	FORMAT oform $1.;

	INFORMAT oforms $1.;
	FORMAT oforms $1.;

	INFORMAT sessionamt $6.;
	FORMAT sessionamt $6.;

	INFORMAT sessionamtother $9.;
	FORMAT sessionamtother $9.;

	INFORMAT dayamt $6.;
	FORMAT dayamt $6.;

	INFORMAT dayamtother $9.;
	FORMAT dayamtother $9.;

	INFORMAT weekamt $6.;
	FORMAT weekamt $6.;

	INFORMAT weekamtother $7.;
	FORMAT weekamtother $7.;

	INFORMAT numsessions BEST32.;
	FORMAT numsessions BEST12.;

	INFORMAT thcamt BEST32.;
	FORMAT thcamt BEST12.;

	INFORMAT sessionhits BEST32.;
	FORMAT sessionhits BEST12.;

	INFORMAT dayhits BEST32.;
	FORMAT dayhits BEST12.;

	INFORMAT yesterdayhits BEST32.;
	FORMAT yesterdayhits BEST12.;

	INFORMAT daynumsessions BEST32.;
	FORMAT daynumsessions BEST12.;

	INFORMAT avgconthcamt BEST32.;
	FORMAT avgconthcamt BEST12.;

	INFORMAT sessionmilligrams BEST32.;
	FORMAT sessionmilligrams BEST12.;

	INFORMAT currentage BEST32.;
	FORMAT currentage BEST12.;

	INFORMAT canntotalyears BEST32.;
	FORMAT canntotalyears BEST12.;

	INFORMAT agetriedcannabis BEST32.;
	FORMAT agetriedcannabis BEST12.;

	INFORMAT regusedlifetime BEST32.;
	FORMAT regusedlifetime BEST12.;

	INFORMAT startedyears BEST32.;
	FORMAT startedyears BEST12.;

	INFORMAT regused6mth BEST32.;
	FORMAT regused6mth BEST12.;

	INFORMAT dailyuseage BEST32.;
	FORMAT dailyuseage BEST12.;

	INFORMAT beforeage16 BEST32.;
	FORMAT beforeage16 BEST12.;

	INFORMAT medicinaluse BEST32.;
	FORMAT medicinaluse BEST12.;

	INFORMAT medcondition $13.;
	FORMAT medcondition $13.;

	INFORMAT recpercentuse BEST32.;
	FORMAT recpercentuse BEST12.;

	INFORMAT canabistypeuse BEST32.;
	FORMAT canabistypeuse BEST12.;

	INFORMAT conthcamt BEST32.;
	FORMAT conthcamt BEST12.;

	INFORMAT concbdamt $1.;
	FORMAT concbdamt $1.;

	INFORMAT conboththcamt BEST32.;
	FORMAT conboththcamt BEST12.;

	INFORMAT crf_parent_name_DFAInv $22.;
	FORMAT crf_parent_name_DFAInv $22.;

	INFORMAT item_group_repeat_DFAInv BEST32.;
	FORMAT item_group_repeat_DFAInv BEST12.;

	INFORMAT oform_0 BEST32.;
	FORMAT oform_0 BEST12.;

	INFORMAT oform_a $1.;
	FORMAT oform_a $1.;

	INFORMAT oform_b $1.;
	FORMAT oform_b $1.;

	INFORMAT oform_c $1.;
	FORMAT oform_c $1.;

	INFORMAT oform_d $1.;
	FORMAT oform_d $1.;

	INFORMAT othmethod_0 BEST32.;
	FORMAT othmethod_0 BEST12.;

	INFORMAT othmethod_1 BEST32.;
	FORMAT othmethod_1 BEST12.;

	INFORMAT othmethod_2 BEST32.;
	FORMAT othmethod_2 BEST12.;

	INFORMAT othmethod_3 BEST32.;
	FORMAT othmethod_3 BEST12.;

	INFORMAT othmethod_4 BEST32.;
	FORMAT othmethod_4 BEST12.;

	INFORMAT othmethod_5 $1.;
	FORMAT othmethod_5 $1.;

	INFORMAT othmethod_6 BEST32.;
	FORMAT othmethod_6 BEST12.;

	INFORMAT othmethod_7 BEST32.;
	FORMAT othmethod_7 BEST12.;

	INFORMAT study_name_DFAInv $4.;
	FORMAT study_name_DFAInv $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_DFAInv
		date_DFAInv
		everused
		lastusage
		usagetoday
		avguse
		howlongfreq
		beforelongfreq
		pastweek
		dayspastmth
		entirelife
		duringweek
		preusehours
		weekday
		weekend
		pmethod
		potherm
		othmethod
		otherm
		pform
		potherf
		oform
		oforms
		sessionamt
		sessionamtother
		dayamt
		dayamtother
		weekamt
		weekamtother
		numsessions
		thcamt
		sessionhits
		dayhits
		yesterdayhits
		daynumsessions
		avgconthcamt
		sessionmilligrams
		currentage
		canntotalyears
		agetriedcannabis
		regusedlifetime
		startedyears
		regused6mth
		dailyuseage
		beforeage16
		medicinaluse
		medcondition
		recpercentuse
		canabistypeuse
		conthcamt
		concbdamt
		conboththcamt
		crf_parent_name_DFAInv
		item_group_repeat_DFAInv
		oform_0
		oform_a
		oform_b
		oform_c
		oform_d
		othmethod_0
		othmethod_1
		othmethod_2
		othmethod_3
		othmethod_4
		othmethod_5
		othmethod_6
		othmethod_7
		study_name_DFAInv
	;

	if _ERROR_ then call symput('_EFIERR_',"1");

RUN;

DATA IMPORT;
	SET WORK.IMPORT;
	LABEL
		idno = "Participant ID"
		subject_id = "Participant ID"
		visit = "Visit Number"
		event_name = "Visit Number"
		crf_version_DFAInv = "CRF Version"
		date_DFAInv = "Date Completed"
		everused = "Have you ever used cannabis"
		lastusage = "When did you last use cannabis"
		usagetoday = "How high are you right now"
		avguse = "Average frequency you currently use cannabis"
		howlongfreq = "How long have you been using cannabis at this frequency"
		beforelongfreq = "Before the period of time you indicated above how frequently did you use cannabis"
		pastweek = "How many days of the past week did you use cannabis"
		dayspastmth = "How many days of the past month did you use cannabis"
		entirelife = "How many times have you used cannabis in your entire life"
		duringweek = "Pattern of cannabis use throughout the week"
		preusehours = "How many hours after waking up do you typically first use cannabis"
		weekday = "How many times a day on a typical weekday do you use cannabis"
		weekend = "How many times a day on a typical weekend do you use cannabis"
		pmethod = "What is the primary method you use to ingest cannabis"
		potherm = "Primary method Other"
		othmethod = "Other methods of use at least 25 percent"
		otherm = "Other method Other"
		pform = "Primary form of cannabis you use"
		potherf = "Primary form Other"
		oform = "Other forms of cannabis you use at least 25 percent"
		oforms = "Other form Other"
		sessionamt = "In a typical session how much marijuana do you personally use"
		sessionamtother = "Session how much marijuana Other"
		dayamt = "On a typical day how much marijuana do you personally use"
		dayamtother = "Day how much marijuana Other"
		weekamt = "In a typical week how much marijuana do you personally use"
		weekamtother = "Week how much marijuana Other"
		numsessions = "On a typical day how many sessions do you have"
		thcamt = "Average THC content of marijuana you typically use"
		sessionhits = "Session Cannabis concentrates how many hits do you personally take"
		dayhits = "Day Cannabis concentrates how many hits do you personally take"
		yesterdayhits = "Yesterday Cannabis concentrates how many hits did you personally take"
		daynumsessions = "Day cannabis concentrates how many sessions do you have"
		avgconthcamt = "Concentrates THC content"
		sessionmilligrams = "Edibles how many milligrams of THC do you ingest in a typical session"
		currentage = "Current age"
		canntotalyears = "How many years in total have you used cannabis"
		agetriedcannabis = "How old were you when you FIRST tried cannabis"
		regusedlifetime = "Has there been any time in your life when you used cannabis regularly (2 or more times per month for 6 months or longer)?"
		startedyears = "How old were you when you FIRST STARTED using cannabis regularly (2 or more times/month)?"
		regused6mth = "Has there been any time in your life when you used cannabis on a daily or near daily basis for 6 months or longer"
		dailyuseage = "How old were you when you FIRST STARTED using cannabis on a daily or nearly basis"
		beforeage16 = "What is the frequency that you used cannabis before the age of 16"
		medicinaluse = "Do you have a physician’s recommendation to use cannabis for medicinal purposes"
		medcondition = "Which medical condition(s) do you use cannabis for"
		recpercentuse = "What percentage of the time do you use cannabis for recreational (rather than medicinal) purposes"
		canabistypeuse = "What type of medical cannabis do you use"
		conthcamt = "If you use THC only what is the average THC content"
		concbdamt = "If you use CBD only what is the average CBD content"
		conboththcamt = "If you use both THC and CBD, what is the average THC content"
		crf_parent_name_DFAInv = "CRF Parent Name"
		item_group_repeat_DFAInv = "Item Group Repeate"
		oform_0 = "Other forms of cannabis you use at least 25 percent : None (Checkbox Indicator)"
		oform_a = "Other forms of cannabis you use at least 25 percent : Marijuana (Checkbox Indicator)"
		oform_b = "Other forms of cannabis you use at least 25 percent : Concentrates (e.g. Oil Was Shatter Butane Hash Oil Dabs) (Checkbox Indicator)"
		oform_c = "Other forms of cannabis you use at least 25 percent : Edibles (Checkbox Indicator)"
		oform_d = "Other forms of cannabis you use at least 25 percent : Other (Checkbox Indicator)"
		othmethod_0 = "Other methods of use at least 25 percent : None (Checkbox Indicator)"
		othmethod_1 = "Other methods of use at least 25 percent : Joints (Checkbox Indicator)"
		othmethod_2 = "Other methods of use at least 25 percent : Blunts (cigar sized joints) (Checkbox Indicator)"
		othmethod_3 = "Other methods of use at least 25 percent : Hand pipe (Checkbox Indicator)"
		othmethod_4 = "Other methods of use at least 25 percent : Bong (water pipe) (Checkbox Indicator)"
		othmethod_5 = "Other methods of use at least 25 percent : Hookah (Checkbox Indicator)"
		othmethod_6 = "Other methods of use at least 25 percent : Vaporizer (e.g. Volcano Vape pen) (Checkbox Indicator)"
		othmethod_7 = "Other methods of use at least 25 percent : Edibles (Checkbox Indicator)"
		study_name_DFAInv = "Study Name"
	;
	FORMAT
		everused everused_.
		lastusage lastusage_.
		usagetoday usagetoday_.
		avguse avguse_.
		howlongfreq howlongfreq_.
		beforelongfreq beforelongfreq_.
		pastweek pastweek_.
		entirelife entirelife_.
		duringweek duringweek_.
		preusehours preusehours_.
		pmethod pmethod_.
		thcamt thcamt_.
		avgconthcamt avgconthcamt_.
		regusedlifetime regusedlifetime_.
		regused6mth regused6mth_.
		beforeage16 beforeage16_.
		medicinaluse medicinaluse_.
		canabistypeuse canabistypeuse_.
		conthcamt conthcamt_.
		conboththcamt conboththcamt_.
		pform $pform_.
		sessionamt $sessionamt_.
		dayamt $dayamt_.
		weekamt $weekamt_.
	;
RUN;


DATA blsa_dfaq-cu_inventory;
    SET WORK.IMPORT;
RUN;

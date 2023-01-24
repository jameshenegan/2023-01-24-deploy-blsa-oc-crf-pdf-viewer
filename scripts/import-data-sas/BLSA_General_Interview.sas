%let path_to_file = '../data-csv/BLSA_General_Interview.csv';
OPTIONS nofmterr;

PROC FORMAT;

	VALUE itype_
		0 = 'Participant only'
		1 = 'Participant and proxy'
		2 = 'Proxy only'
		3 = 'Telephone interview'
		4 = 'Interview not done'
	;

	VALUE demo03_
		1 = 'Married'
		2 = 'Living with a partner'
		3 = 'Separated'
		4 = 'Divorced'
		5 = 'Widowed'
		6 = 'Never married'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo04_
		0 = 'Lives alone'
		1 = '1 other'
		2 = '2 others'
		3 = '3 or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo05_
		1 = 'Single family home'
		2 = 'Co-op condominium apartment'
		3 = 'Continuing care community'
		4 = 'Assisted Living'
		5 = 'Long term care facility'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo06_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo07_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo09_
		1 = 'White'
		2 = 'Black or African American'
		3 = 'American Indian or Alaska Native'
		4 = 'Asian'
		5 = 'Native Hawaiian or Other Pacific Islander'
		6 = 'Two or more races'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo11_
		0 = 'No under 65'
		1 = 'Yes'
		2 = 'No age 65+'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo11a_
		1 = 'Part A only'
		2 = 'Part A and B only'
		3 = 'Medicare + Choice'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo11b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo14_
		0 = 'Less than $10000'
		1 = 'More than $10000'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo14a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo14b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo15_
		1 = 'Poorly'
		2 = 'Fairly well'
		3 = 'Very well'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo16_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE demo17_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf01a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf01b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf01c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf01d_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf02a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf02b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf02c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf02d_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf03a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf03b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf03c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf03d_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf04a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf04b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf05_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf05a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf05b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf06_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf06a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf06b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf07_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf07a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf07b_
		1 = ' Not so easy'
		2 = 'Somewhat easy'
		3 = 'VeryEasy'
		7 = 'Refused'
		8 = " Don't know"
	;

	VALUE pf08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf08a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf08b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf09_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf09a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf09b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf10a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf10b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf11a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf11b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf12a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf12b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf13a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf13b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf14_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf14a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf14b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf15_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf15a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf15b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf16_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf16a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf16b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf17_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf17a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf17b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf18_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf18a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf18b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf19_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf19a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf19b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf20_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf20a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf20b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf21_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know/Do not do"
	;

	VALUE pf21a_
		1 = 'A little'
		2 = 'Some'
		3 = 'A lot'
		4 = 'Unable to do'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pf21b_
		1 = 'Never drove'
		2 = 'No car'
		3 = 'Vision'
		4 = 'Health'
		5 = 'Lost license'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx04_
		0 = 'None'
		1 = 'Some'
		2 = 'Most'
		3 = 'All'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx05_
		0 = '0 Not weak at all'
		1 = '1'
		10 = '10 Very weak'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = "Don't know"
		9 = '9'
	;

	VALUE ghsx06_
		0 = '0 No energy at all'
		1 = '1'
		10 = '10 Most energy'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = "Don't know"
		9 = '9'
	;

	VALUE ghsx07_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx08_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx09_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx10_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx11_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx12_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx13_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx14_
		0 = '0 Never'
		1 = '1/week'
		2 = '1-2/week'
		3 = '3-4/week'
		4 = '5+/week'
		8 = "Don't know"
	;

	VALUE ghsx15_
		0 = 'Very sound or restful'
		1 = 'Sound or restful'
		2 = 'Average quality'
		3 = 'Restless'
		4 = 'Very Restless'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx16_
		0 = 'More than 7'
		1 = 'More than 6 up to 7'
		2 = 'More than 5 up to 6'
		3 = ' 5 or fewer'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx17_
		0 = 'Very poor'
		1 = 'Poor'
		2 = 'Moderate'
		3 = 'Good'
		4 = 'Very good'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx19_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx19a_
		1 = 'Gain'
		2 = 'Lose'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx19b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx20_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx21_
		1 = 'Excellent'
		2 = 'Very good'
		3 = 'Good'
		4 = 'Fair'
		5 = 'Poor'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx22_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx22a_
		0 = 'Never'
		1 = 'Within 12 months'
		2 = 'Over 12 months'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx22b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx23_
		0 = 'None at all'
		1 = 'A little'
		2 = 'Some'
		3 = 'A great deal'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx24_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx24a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx25_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx25a_
		0 = 'Never'
		1 = 'For reading or driving'
		2 = 'Sometimes'
		3 = 'Most of the time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx26_
		0 = 'Blind'
		1 = 'Very poor'
		2 = 'Poor'
		3 = 'Fair'
		4 = 'Good'
		5 = 'Excellent'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx27_
		0 = 'No difficulty'
		1 = 'A little difficulty'
		2 = 'Moderate difficulty'
		3 = 'Extreme difficulty'
		4 = 'Stopped due to eyesight'
		5 = "Don't do other reasons"
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx28_
		0 = 'No difficulty'
		1 = 'A little difficulty'
		2 = 'Moderate difficulty'
		3 = 'Extreme difficulty'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx29_
		0 = 'No difficulty'
		1 = 'A little difficulty'
		2 = 'Moderate difficulty'
		3 = 'Extreme difficulty'
		4 = 'Stopped due to eyesight'
		5 = "Don't do other reasons"
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx30_
		0 = 'No difficulty'
		1 = 'A little difficulty'
		2 = 'Moderate difficulty'
		3 = 'Extreme difficulty'
		4 = 'Stopped due to eyesight'
		5 = "Don't do other reasons"
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx31_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx32_
		0 = 'Deaf'
		1 = 'Very poor'
		2 = 'Poor'
		3 = 'Fair'
		4 = 'Good'
		5 = 'Excellent'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx33_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Often'
		3 = 'Very often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx34_
		0 = 'Never'
		1 = 'Sometimes'
		2 = 'Often'
		3 = 'Very often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx35_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx36_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx36a_
		1 = 'One'
		2 = 'Two or three'
		3 = 'Four or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37a_
		1 = 'One'
		2 = 'Two or three'
		3 = 'Four or five'
		4 = 'Six or more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37e_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx37f_
		1 = 'Normal/Usual'
		2 = 'Usual/Risky'
		3 = 'Intoxicated'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx38_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ghsx38a_
		1 = 'Rarely'
		2 = 'Some of the time'
		3 = 'Most of the time'
		4 = 'All of the time'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap01a_
		0 = '0 No pain'
		1 = '1'
		10 = '10 Extremely intense pain'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = 'DK'
		9 = '9'
	;

	VALUE ap01b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap01e_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap01f_
		0 = '0 No pain'
		1 = '1'
		10 = '10 Extremely intense pain'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = 'Refused'
		8 = '8'
		88 = 'DK'
		9 = '9'
	;

	VALUE ap02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap02a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap02b_
		1 = 'Right only'
		2 = 'Left only'
		3 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap02c_
		1 = 'Rarely'
		2 = 'Monthly'
		3 = 'Daily'
		7 = "Don't know"
		8 = 'Always'
	;

	VALUE ap02d1_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02d2_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02d3_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02d4_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02d5_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02e_
		1 = 'Rarely'
		2 = 'Monthly'
		3 = 'Daily'
		7 = "Don't know"
		8 = 'Always'
	;

	VALUE ap02f1_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02f2_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02f3_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02f4_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02f5_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap02g_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap02h_
		1 = 'Right only'
		2 = 'Left only'
		3 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap02i_
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap03a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap03b_
		1 = 'Right only'
		2 = 'Left only'
		3 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap03c_
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03d1_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03d2_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03d3_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03d4_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03d5_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03e_
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03f1_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03f2_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03f3_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03f4_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap03f5_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap04a_
		1 = 'Right only'
		2 = 'Left only'
		3 = 'Both'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap04b_
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap05_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap05a_
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap06_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07a_
		1 = '< 1/month'
		2 = '1-3 /month'
		3 = '1-2 /week'
		4 = '>2 /week'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07e_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07f_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap07g_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap09_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap09a_
		0 = 'Active'
		1 = 'Resting'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap09b_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap09c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap09d_
		1 = '<=1 /month'
		2 = '2 /month'
		3 = '1 /week'
		4 = '2-3 /week'
		5 = '4-6 /week'
		6 = 'Daily'
		8 = "Don't know"
	;

	VALUE ap10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap10al1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al17_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar17_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar18_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10al19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10ar19_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap10b1_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap10b2_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap10b3_
		0 = 'None'
		1 = 'Mild'
		2 = 'Moderate'
		3 = 'Severe'
		4 = 'Extreme'
		8 = "Don't know"
	;

	VALUE ap11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE ap11ar1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al1_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al2_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al3_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al4_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al5_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al6_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al7_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al8_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al9_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al10_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al11_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al12_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al13_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al14_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al15_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11ar16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE ap11al16_
		0 = 'No'
		1 = 'Yes'
	;

	VALUE pa01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa05_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa06_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa07_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa08_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa09_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa09a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa09b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE pa10_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa10f_
		0 = 'stroll'
		1 = 'moderate'
		2 = 'brisk'
		8 = "don't know"
	;

	VALUE pa10a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa10b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE pa11_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa11a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa11b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE pa12_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa12a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa12b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE pa13_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13c1_
		1 = 'Cycling etc'
		10 = 'rowing'
		11 = 'xc skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'swimming'
		3 = 'running'
		4 = 'soccer'
		5 = 'basketball'
		6 = 'volleyball'
		7 = 'aerobics etc'
		77 = 'refused'
		8 = 'racquet sports'
		88 = "Don't know"
		9 = 'stair-steppers etc'
	;

	VALUE pa13e1_
		1 = 'Leisurely'
		2 = 'Moderate'
		3 = 'Vigorous'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13c2_
		1 = 'Cycling etc'
		10 = 'rowing'
		11 = 'xc skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'swimming'
		3 = 'running'
		4 = 'soccer'
		5 = 'basketball'
		6 = 'volleyball'
		7 = 'aerobics etc'
		77 = 'refused'
		8 = 'racquet sports'
		88 = "Don't know"
		9 = 'stair-steppers etc'
	;

	VALUE pa13e2_
		1 = 'Leisurely'
		2 = 'Moderate'
		3 = 'Vigorous'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13c3_
		1 = 'Cycling etc'
		10 = 'rowing'
		11 = 'xc skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'swimming'
		3 = 'running'
		4 = 'soccer'
		5 = 'basketball'
		6 = 'volleyball'
		7 = 'aerobics etc'
		77 = 'refused'
		8 = 'racquet sports'
		88 = "Don't know"
		9 = 'stair-steppers etc'
	;

	VALUE pa13e3_
		1 = 'Leisurely'
		2 = 'Moderate'
		3 = 'Vigorous'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13c4_
		1 = 'Cycling etc'
		10 = 'rowing'
		11 = 'xc skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'swimming'
		3 = 'running'
		4 = 'soccer'
		5 = 'basketball'
		6 = 'volleyball'
		7 = 'aerobics etc'
		77 = 'refused'
		8 = 'racquet sports'
		88 = "Don't know"
		9 = 'stair-steppers etc'
	;

	VALUE pa13e4_
		1 = 'Leisurely'
		2 = 'Moderate'
		3 = 'Vigorous'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa13b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE pa14_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa14c1_
		1 = 'golf'
		10 = 'fishing'
		11 = 'skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'bowl/boccie'
		3 = 'dancing'
		4 = 'skating etc'
		5 = 'table tennis'
		6 = 'billiards'
		7 = 'horseback riding'
		77 = 'refused'
		8 = 'hunting'
		88 = "don't know"
		9 = 'sailing/boating'
	;

	VALUE pa14c2_
		1 = 'golf'
		10 = 'fishing'
		11 = 'skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'bowl/boccie'
		3 = 'dancing'
		4 = 'skating etc'
		5 = 'table tennis'
		6 = 'billiards'
		7 = 'horseback riding'
		77 = 'refused'
		8 = 'hunting'
		88 = "don't know"
		9 = 'sailing/boating'
	;

	VALUE pa14c3_
		1 = 'golf'
		10 = 'fishing'
		11 = 'skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'bowl/boccie'
		3 = 'dancing'
		4 = 'skating etc'
		5 = 'table tennis'
		6 = 'billiards'
		7 = 'horseback riding'
		77 = 'refused'
		8 = 'hunting'
		88 = "don't know"
		9 = 'sailing/boating'
	;

	VALUE pa14c4_
		1 = 'golf'
		10 = 'fishing'
		11 = 'skiing'
		12 = 'other 1'
		13 = 'other 2'
		2 = 'bowl/boccie'
		3 = 'dancing'
		4 = 'skating etc'
		5 = 'table tennis'
		6 = 'billiards'
		7 = 'horseback riding'
		77 = 'refused'
		8 = 'hunting'
		88 = "don't know"
		9 = 'sailing/boating'
	;

	VALUE pa14a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pa14b_
		1 = 'bad weather'
		2 = 'too busy/no time'
		3 = 'injury'
		4 = 'health/illness'
		5 = 'lost interest/partner'
		6 = 'felt unsafe'
		7 = 'refused'
		8 = "don't know"
		9 = 'other'
	;

	VALUE oact01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact01c_
		1 = 'mainly sitting'
		2 = 'some standing and walking'
		3 = 'mostly standing and walking'
		4 = 'walking and heavy manual work'
		7 = 'refused'
		8 = "don't know"
	;

	VALUE oact02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact02c_
		1 = 'mainly sitting'
		2 = 'some standing and walking'
		3 = 'mostly standing and walking'
		4 = 'walking and heavy manual work'
		7 = 'refused'
		8 = "don't know"
	;

	VALUE oact03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact04_
		0 = 'Less than once per week'
		1 = '1 time per week'
		2 = '2 to 3 times per week'
		3 = '4 to 6 times per week'
		4 = 'At least once a day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact05_
		0 = 'Less than once per week'
		1 = '1 time per week'
		2 = '2 to 3 times per week'
		3 = '4 to 6 times per week'
		4 = 'At least once a day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06a_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06b_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06c_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06d_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06e_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06f_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06g_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06h_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06i_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06j_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06k_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06l_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06m_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06n_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06o_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06p_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact06q_
		0 = 'Not at all'
		1 = 'Less than once a month'
		2 = 'Less than once a week'
		3 = 'At least every week'
		4 = 'Almost daily'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE oact07_
		0 = 'Zero'
		1 = 'More than 0 up to 7 hrs'
		2 = 'More than 7 up to 14 hrs'
		3 = 'More than 14 up to 21 hrs'
		4 = 'More than 21 up to 28 hrs'
		5 = 'More than 28 up to 35 hrs'
		6 = 'More than 35 hrs'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk01a_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk01d_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk02c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE smk03c_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE alc01_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE alc01a_
		0 = 'less than one'
		1 = '1-3 drinks'
		2 = '4-7 drinks'
		3 = '8-14 drinks'
		4 = '15-21 drinks'
		5 = '22-28 drinks'
		6 = 'more than 28'
		7 = 'refused'
		8 = "don't know"
	;

	VALUE alc01b_
		0 = 'less than one'
		1 = '1-3 drinks'
		2 = '4-7 drinks'
		3 = '8-14 drinks'
		4 = '15-21 drinks'
		5 = '22-28 drinks'
		6 = 'more than 28'
		7 = 'refused'
		8 = "don't know"
	;

	VALUE alc01c_
		1 = 'dislike alcohol'
		2 = 'religious/moral reasons'
		3 = 'health reasons'
		4 = 'former alcoholic'
		5 = 'alcohol abuse in family'
		6 = 'no occasion'
		7 = 'dietary issues'
		77 = 'refused'
		8 = 'other'
		88 = "don't know"
	;

	VALUE alc02_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE alc03_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE psy01_
		0 = '0'
		1 = '1'
		10 = '10'
		2 = '2'
		3 = '3'
		4 = '4'
		5 = '5'
		6 = '6'
		7 = '7'
		77 = '77'
		8 = '8'
		88 = '88'
		9 = '9'
	;

	VALUE psy02_
		0 = 'Disagree'
		1 = 'Agree'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE psy02a_
		1 = 'Somewhat'
		2 = 'Strongly'
		8 = "Don't know"
	;

	VALUE psy02b_
		1 = 'Somewhat'
		2 = 'Strongly'
		8 = "Don't know"
	;

	VALUE psy03_
		0 = 'Disagree'
		1 = 'Agree'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE psy03a_
		1 = 'Somewhat'
		2 = 'Strongly'
		8 = "Don't know"
	;

	VALUE psy03b_
		1 = 'Somewhat'
		2 = 'Strongly'
		8 = "Don't know"
	;

	VALUE psy04_
		0 = 'No'
		1 = 'Yes'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE psy04a_
		1 = 'A little more'
		2 = 'Some more'
		3 = 'A lot more'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss02_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Sometimes'
		3 = 'Fairly often'
		4 = 'Very often'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss03_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Sometimes'
		3 = 'Fairly often'
		4 = 'Very often'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss07_
		0 = 'Very often'
		1 = 'Fairly often'
		2 = 'Sometimes'
		3 = 'Almost never'
		4 = 'Never'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss06_
		0 = 'Very often'
		1 = 'Fairly often'
		2 = 'Sometimes'
		3 = 'Almost never'
		4 = 'Never'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss11_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Sometimes'
		3 = 'Fairly often'
		4 = 'Very often'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE pss14_
		0 = 'Never'
		1 = 'Almost never'
		2 = 'Sometimes'
		3 = 'Fairly often'
		4 = 'Very often'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cmq01_
		0 = 'Less than once per week'
		1 = '1 time per week'
		2 = '2 to 3 times per week'
		3 = '4 to 6 times per week'
		4 = 'At least once a day'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cmq02_
		0 = 'Never'
		1 = 'Rarely'
		2 = 'Sometimes'
		3 = 'Often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cmq03_
		0 = 'Never'
		1 = 'Rarely'
		2 = 'Sometimes'
		3 = 'Often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cmq04_
		0 = 'Never'
		1 = 'Rarely'
		2 = 'Sometimes'
		3 = 'Often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE cmq05_
		0 = 'Never'
		1 = 'Rarely'
		2 = 'Sometimes'
		3 = 'Often'
		4 = 'Always'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf01_
		1 = 'Excellent'
		2 = 'Very good'
		3 = 'Good'
		4 = 'Fair'
		5 = 'Poor'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf02_
		1 = 'Yes limited a lot'
		2 = 'Yes limited a little'
		3 = 'No not limited at all'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf03_
		1 = 'Yes limited a lot'
		2 = 'Yes limited a little'
		3 = 'No not limited at all'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf04_
		1 = 'Yes'
		2 = 'No'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf05_
		1 = 'Yes'
		2 = 'No'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf06_
		1 = 'Yes'
		2 = 'No'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf07_
		1 = 'Yes'
		2 = 'No'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf08_
		1 = 'Not at all'
		2 = 'Slightly'
		3 = 'Moderately'
		4 = 'Quite a bit'
		5 = 'Extremely'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf09_
		1 = 'All'
		2 = 'Most'
		3 = 'A good bit'
		4 = 'Some'
		5 = 'A little'
		6 = 'None'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf10_
		1 = 'All'
		2 = 'Most'
		3 = 'A good bit'
		4 = 'Some'
		5 = 'A little'
		6 = 'None'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf11_
		1 = 'All'
		2 = 'Most'
		3 = 'A good bit'
		4 = 'Some'
		5 = 'A little'
		6 = 'None'
		7 = 'Refused'
		8 = "Don't know"
	;

	VALUE sf12_
		1 = 'All'
		2 = 'Most'
		3 = 'Some'
		4 = 'A little'
		5 = 'None'
		7 = 'Refused'
		8 = "Don't know"
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

	INFORMAT crf_version_GenInt $10.;
	FORMAT crf_version_GenInt $10.;

	INFORMAT obsdate_idate YYMMDD10.;
	FORMAT obsdate_idate YYMMDD10.;

	INFORMAT blank_GenInt $1.;
	FORMAT blank_GenInt $1.;

	INFORMAT itid BEST32.;
	FORMAT itid BEST12.;

	INFORMAT itype BEST32.;
	FORMAT itype BEST12.;

	INFORMAT demo01 $10.;
	FORMAT demo01 $10.;

	INFORMAT demo02 BEST32.;
	FORMAT demo02 BEST12.;

	INFORMAT demo03 BEST32.;
	FORMAT demo03 BEST12.;

	INFORMAT demo04 BEST32.;
	FORMAT demo04 BEST12.;

	INFORMAT demo05 BEST32.;
	FORMAT demo05 BEST12.;

	INFORMAT demo06 BEST32.;
	FORMAT demo06 BEST12.;

	INFORMAT demo07 BEST32.;
	FORMAT demo07 BEST12.;

	INFORMAT demo08 BEST32.;
	FORMAT demo08 BEST12.;

	INFORMAT demo09 BEST32.;
	FORMAT demo09 BEST12.;

	INFORMAT demo10 BEST32.;
	FORMAT demo10 BEST12.;

	INFORMAT demo11 BEST32.;
	FORMAT demo11 BEST12.;

	INFORMAT demo11a BEST32.;
	FORMAT demo11a BEST12.;

	INFORMAT demo11b BEST32.;
	FORMAT demo11b BEST12.;

	INFORMAT demo12 BEST32.;
	FORMAT demo12 BEST12.;

	INFORMAT demo13 BEST32.;
	FORMAT demo13 BEST12.;

	INFORMAT demo14 BEST32.;
	FORMAT demo14 BEST12.;

	INFORMAT demo14a BEST32.;
	FORMAT demo14a BEST12.;

	INFORMAT demo14b BEST32.;
	FORMAT demo14b BEST12.;

	INFORMAT demo15 BEST32.;
	FORMAT demo15 BEST12.;

	INFORMAT demo16 BEST32.;
	FORMAT demo16 BEST12.;

	INFORMAT demo17 BEST32.;
	FORMAT demo17 BEST12.;

	INFORMAT pf01 BEST32.;
	FORMAT pf01 BEST12.;

	INFORMAT pf01a BEST32.;
	FORMAT pf01a BEST12.;

	INFORMAT pf01b BEST32.;
	FORMAT pf01b BEST12.;

	INFORMAT pf01c BEST32.;
	FORMAT pf01c BEST12.;

	INFORMAT pf01d BEST32.;
	FORMAT pf01d BEST12.;

	INFORMAT pf02 BEST32.;
	FORMAT pf02 BEST12.;

	INFORMAT pf02a BEST32.;
	FORMAT pf02a BEST12.;

	INFORMAT pf02b BEST32.;
	FORMAT pf02b BEST12.;

	INFORMAT pf02c BEST32.;
	FORMAT pf02c BEST12.;

	INFORMAT pf02d BEST32.;
	FORMAT pf02d BEST12.;

	INFORMAT pf03 BEST32.;
	FORMAT pf03 BEST12.;

	INFORMAT pf03a BEST32.;
	FORMAT pf03a BEST12.;

	INFORMAT pf03b BEST32.;
	FORMAT pf03b BEST12.;

	INFORMAT pf03c BEST32.;
	FORMAT pf03c BEST12.;

	INFORMAT pf03d BEST32.;
	FORMAT pf03d BEST12.;

	INFORMAT pf04 BEST32.;
	FORMAT pf04 BEST12.;

	INFORMAT pf04a BEST32.;
	FORMAT pf04a BEST12.;

	INFORMAT pf04b BEST32.;
	FORMAT pf04b BEST12.;

	INFORMAT pf05 BEST32.;
	FORMAT pf05 BEST12.;

	INFORMAT pf05a BEST32.;
	FORMAT pf05a BEST12.;

	INFORMAT pf05b BEST32.;
	FORMAT pf05b BEST12.;

	INFORMAT pf06 BEST32.;
	FORMAT pf06 BEST12.;

	INFORMAT pf06a BEST32.;
	FORMAT pf06a BEST12.;

	INFORMAT pf06b BEST32.;
	FORMAT pf06b BEST12.;

	INFORMAT pf07 BEST32.;
	FORMAT pf07 BEST12.;

	INFORMAT pf07a BEST32.;
	FORMAT pf07a BEST12.;

	INFORMAT pf07b BEST32.;
	FORMAT pf07b BEST12.;

	INFORMAT pf08 BEST32.;
	FORMAT pf08 BEST12.;

	INFORMAT pf08a BEST32.;
	FORMAT pf08a BEST12.;

	INFORMAT pf08b BEST32.;
	FORMAT pf08b BEST12.;

	INFORMAT pf09 BEST32.;
	FORMAT pf09 BEST12.;

	INFORMAT pf09a BEST32.;
	FORMAT pf09a BEST12.;

	INFORMAT pf09b BEST32.;
	FORMAT pf09b BEST12.;

	INFORMAT pf10 BEST32.;
	FORMAT pf10 BEST12.;

	INFORMAT pf10a BEST32.;
	FORMAT pf10a BEST12.;

	INFORMAT pf10b BEST32.;
	FORMAT pf10b BEST12.;

	INFORMAT pf11 BEST32.;
	FORMAT pf11 BEST12.;

	INFORMAT pf11a BEST32.;
	FORMAT pf11a BEST12.;

	INFORMAT pf11b BEST32.;
	FORMAT pf11b BEST12.;

	INFORMAT pf12 BEST32.;
	FORMAT pf12 BEST12.;

	INFORMAT pf12a BEST32.;
	FORMAT pf12a BEST12.;

	INFORMAT pf12b BEST32.;
	FORMAT pf12b BEST12.;

	INFORMAT pf13 BEST32.;
	FORMAT pf13 BEST12.;

	INFORMAT pf13a BEST32.;
	FORMAT pf13a BEST12.;

	INFORMAT pf13b BEST32.;
	FORMAT pf13b BEST12.;

	INFORMAT pf14 BEST32.;
	FORMAT pf14 BEST12.;

	INFORMAT pf14a BEST32.;
	FORMAT pf14a BEST12.;

	INFORMAT pf14b BEST32.;
	FORMAT pf14b BEST12.;

	INFORMAT pf15 BEST32.;
	FORMAT pf15 BEST12.;

	INFORMAT pf15a BEST32.;
	FORMAT pf15a BEST12.;

	INFORMAT pf15b BEST32.;
	FORMAT pf15b BEST12.;

	INFORMAT pf16 BEST32.;
	FORMAT pf16 BEST12.;

	INFORMAT pf16a BEST32.;
	FORMAT pf16a BEST12.;

	INFORMAT pf16b BEST32.;
	FORMAT pf16b BEST12.;

	INFORMAT pf17 BEST32.;
	FORMAT pf17 BEST12.;

	INFORMAT pf17a BEST32.;
	FORMAT pf17a BEST12.;

	INFORMAT pf17b BEST32.;
	FORMAT pf17b BEST12.;

	INFORMAT pf18 BEST32.;
	FORMAT pf18 BEST12.;

	INFORMAT pf18a BEST32.;
	FORMAT pf18a BEST12.;

	INFORMAT pf18b BEST32.;
	FORMAT pf18b BEST12.;

	INFORMAT pf19 BEST32.;
	FORMAT pf19 BEST12.;

	INFORMAT pf19a BEST32.;
	FORMAT pf19a BEST12.;

	INFORMAT pf19b BEST32.;
	FORMAT pf19b BEST12.;

	INFORMAT pf20 BEST32.;
	FORMAT pf20 BEST12.;

	INFORMAT pf20a BEST32.;
	FORMAT pf20a BEST12.;

	INFORMAT pf20b BEST32.;
	FORMAT pf20b BEST12.;

	INFORMAT pf21 BEST32.;
	FORMAT pf21 BEST12.;

	INFORMAT pf21a BEST32.;
	FORMAT pf21a BEST12.;

	INFORMAT pf21b BEST32.;
	FORMAT pf21b BEST12.;

	INFORMAT ghsx01 BEST32.;
	FORMAT ghsx01 BEST12.;

	INFORMAT ghsx01a BEST32.;
	FORMAT ghsx01a BEST12.;

	INFORMAT ghsx02 BEST32.;
	FORMAT ghsx02 BEST12.;

	INFORMAT ghsx02a BEST32.;
	FORMAT ghsx02a BEST12.;

	INFORMAT ghsx03 BEST32.;
	FORMAT ghsx03 BEST12.;

	INFORMAT ghsx03a BEST32.;
	FORMAT ghsx03a BEST12.;

	INFORMAT ghsx04 BEST32.;
	FORMAT ghsx04 BEST12.;

	INFORMAT ghsx05 BEST32.;
	FORMAT ghsx05 BEST12.;

	INFORMAT ghsx06 BEST32.;
	FORMAT ghsx06 BEST12.;

	INFORMAT ghsx07 BEST32.;
	FORMAT ghsx07 BEST12.;

	INFORMAT ghsx08 BEST32.;
	FORMAT ghsx08 BEST12.;

	INFORMAT ghsx09 BEST32.;
	FORMAT ghsx09 BEST12.;

	INFORMAT ghsx10 BEST32.;
	FORMAT ghsx10 BEST12.;

	INFORMAT ghsx11 BEST32.;
	FORMAT ghsx11 BEST12.;

	INFORMAT ghsx12 BEST32.;
	FORMAT ghsx12 BEST12.;

	INFORMAT ghsx13 BEST32.;
	FORMAT ghsx13 BEST12.;

	INFORMAT ghsx14 BEST32.;
	FORMAT ghsx14 BEST12.;

	INFORMAT ghsx15 BEST32.;
	FORMAT ghsx15 BEST12.;

	INFORMAT ghsx16 BEST32.;
	FORMAT ghsx16 BEST12.;

	INFORMAT ghsx17 BEST32.;
	FORMAT ghsx17 BEST12.;

	INFORMAT ghsx18 BEST32.;
	FORMAT ghsx18 BEST12.;

	INFORMAT ghsx19 BEST32.;
	FORMAT ghsx19 BEST12.;

	INFORMAT ghsx19a BEST32.;
	FORMAT ghsx19a BEST12.;

	INFORMAT ghsx19b BEST32.;
	FORMAT ghsx19b BEST12.;

	INFORMAT ghsx19c BEST32.;
	FORMAT ghsx19c BEST12.;

	INFORMAT ghsx20 BEST32.;
	FORMAT ghsx20 BEST12.;

	INFORMAT ghsx21 BEST32.;
	FORMAT ghsx21 BEST12.;

	INFORMAT ghsx22 BEST32.;
	FORMAT ghsx22 BEST12.;

	INFORMAT ghsx22a BEST32.;
	FORMAT ghsx22a BEST12.;

	INFORMAT ghsx22b BEST32.;
	FORMAT ghsx22b BEST12.;

	INFORMAT ghsx22c BEST32.;
	FORMAT ghsx22c BEST12.;

	INFORMAT ghsx23 BEST32.;
	FORMAT ghsx23 BEST12.;

	INFORMAT ghsx24 BEST32.;
	FORMAT ghsx24 BEST12.;

	INFORMAT ghsx24a BEST32.;
	FORMAT ghsx24a BEST12.;

	INFORMAT ghsx25 BEST32.;
	FORMAT ghsx25 BEST12.;

	INFORMAT ghsx25a BEST32.;
	FORMAT ghsx25a BEST12.;

	INFORMAT ghsx26 BEST32.;
	FORMAT ghsx26 BEST12.;

	INFORMAT ghsx27 BEST32.;
	FORMAT ghsx27 BEST12.;

	INFORMAT ghsx28 BEST32.;
	FORMAT ghsx28 BEST12.;

	INFORMAT ghsx29 BEST32.;
	FORMAT ghsx29 BEST12.;

	INFORMAT ghsx30 BEST32.;
	FORMAT ghsx30 BEST12.;

	INFORMAT ghsx31 BEST32.;
	FORMAT ghsx31 BEST12.;

	INFORMAT ghsx32 BEST32.;
	FORMAT ghsx32 BEST12.;

	INFORMAT ghsx33 BEST32.;
	FORMAT ghsx33 BEST12.;

	INFORMAT ghsx34 BEST32.;
	FORMAT ghsx34 BEST12.;

	INFORMAT ghsx35 BEST32.;
	FORMAT ghsx35 BEST12.;

	INFORMAT ghsx36 BEST32.;
	FORMAT ghsx36 BEST12.;

	INFORMAT ghsx36a BEST32.;
	FORMAT ghsx36a BEST12.;

	INFORMAT ghsx37 BEST32.;
	FORMAT ghsx37 BEST12.;

	INFORMAT ghsx37a BEST32.;
	FORMAT ghsx37a BEST12.;

	INFORMAT ghsx37b BEST32.;
	FORMAT ghsx37b BEST12.;

	INFORMAT ghsx37c BEST32.;
	FORMAT ghsx37c BEST12.;

	INFORMAT ghsx37d BEST32.;
	FORMAT ghsx37d BEST12.;

	INFORMAT ghsx37e BEST32.;
	FORMAT ghsx37e BEST12.;

	INFORMAT ghsx37f BEST32.;
	FORMAT ghsx37f BEST12.;

	INFORMAT ghsx38 BEST32.;
	FORMAT ghsx38 BEST12.;

	INFORMAT ghsx38a BEST32.;
	FORMAT ghsx38a BEST12.;

	INFORMAT ap01 BEST32.;
	FORMAT ap01 BEST12.;

	INFORMAT ap01a BEST32.;
	FORMAT ap01a BEST12.;

	INFORMAT ap01b BEST32.;
	FORMAT ap01b BEST12.;

	INFORMAT ap01c BEST32.;
	FORMAT ap01c BEST12.;

	INFORMAT ap01d BEST32.;
	FORMAT ap01d BEST12.;

	INFORMAT ap01e BEST32.;
	FORMAT ap01e BEST12.;

	INFORMAT ap01f BEST32.;
	FORMAT ap01f BEST12.;

	INFORMAT ap02 BEST32.;
	FORMAT ap02 BEST12.;

	INFORMAT ap02a BEST32.;
	FORMAT ap02a BEST12.;

	INFORMAT ap02b BEST32.;
	FORMAT ap02b BEST12.;

	INFORMAT ap02c BEST32.;
	FORMAT ap02c BEST12.;

	INFORMAT ap02d1 BEST32.;
	FORMAT ap02d1 BEST12.;

	INFORMAT ap02d2 BEST32.;
	FORMAT ap02d2 BEST12.;

	INFORMAT ap02d3 BEST32.;
	FORMAT ap02d3 BEST12.;

	INFORMAT ap02d4 BEST32.;
	FORMAT ap02d4 BEST12.;

	INFORMAT ap02d5 BEST32.;
	FORMAT ap02d5 BEST12.;

	INFORMAT ap02e BEST32.;
	FORMAT ap02e BEST12.;

	INFORMAT ap02f1 BEST32.;
	FORMAT ap02f1 BEST12.;

	INFORMAT ap02f2 BEST32.;
	FORMAT ap02f2 BEST12.;

	INFORMAT ap02f3 BEST32.;
	FORMAT ap02f3 BEST12.;

	INFORMAT ap02f4 BEST32.;
	FORMAT ap02f4 BEST12.;

	INFORMAT ap02f5 BEST32.;
	FORMAT ap02f5 BEST12.;

	INFORMAT ap02g BEST32.;
	FORMAT ap02g BEST12.;

	INFORMAT ap02h BEST32.;
	FORMAT ap02h BEST12.;

	INFORMAT ap02i BEST32.;
	FORMAT ap02i BEST12.;

	INFORMAT ap03 BEST32.;
	FORMAT ap03 BEST12.;

	INFORMAT ap03a BEST32.;
	FORMAT ap03a BEST12.;

	INFORMAT ap03b BEST32.;
	FORMAT ap03b BEST12.;

	INFORMAT ap03c BEST32.;
	FORMAT ap03c BEST12.;

	INFORMAT ap03d1 BEST32.;
	FORMAT ap03d1 BEST12.;

	INFORMAT ap03d2 BEST32.;
	FORMAT ap03d2 BEST12.;

	INFORMAT ap03d3 BEST32.;
	FORMAT ap03d3 BEST12.;

	INFORMAT ap03d4 BEST32.;
	FORMAT ap03d4 BEST12.;

	INFORMAT ap03d5 BEST32.;
	FORMAT ap03d5 BEST12.;

	INFORMAT ap03e BEST32.;
	FORMAT ap03e BEST12.;

	INFORMAT ap03f1 BEST32.;
	FORMAT ap03f1 BEST12.;

	INFORMAT ap03f2 BEST32.;
	FORMAT ap03f2 BEST12.;

	INFORMAT ap03f3 BEST32.;
	FORMAT ap03f3 BEST12.;

	INFORMAT ap03f4 BEST32.;
	FORMAT ap03f4 BEST12.;

	INFORMAT ap03f5 BEST32.;
	FORMAT ap03f5 BEST12.;

	INFORMAT ap04 BEST32.;
	FORMAT ap04 BEST12.;

	INFORMAT ap04a BEST32.;
	FORMAT ap04a BEST12.;

	INFORMAT ap04b BEST32.;
	FORMAT ap04b BEST12.;

	INFORMAT ap05 BEST32.;
	FORMAT ap05 BEST12.;

	INFORMAT ap05a BEST32.;
	FORMAT ap05a BEST12.;

	INFORMAT ap06 BEST32.;
	FORMAT ap06 BEST12.;

	INFORMAT ap07 BEST32.;
	FORMAT ap07 BEST12.;

	INFORMAT ap07a BEST32.;
	FORMAT ap07a BEST12.;

	INFORMAT ap07b BEST32.;
	FORMAT ap07b BEST12.;

	INFORMAT ap07c BEST32.;
	FORMAT ap07c BEST12.;

	INFORMAT ap07d BEST32.;
	FORMAT ap07d BEST12.;

	INFORMAT ap07e BEST32.;
	FORMAT ap07e BEST12.;

	INFORMAT ap07f BEST32.;
	FORMAT ap07f BEST12.;

	INFORMAT ap07g BEST32.;
	FORMAT ap07g BEST12.;

	INFORMAT ap08 BEST32.;
	FORMAT ap08 BEST12.;

	INFORMAT ap09 BEST32.;
	FORMAT ap09 BEST12.;

	INFORMAT ap09a BEST32.;
	FORMAT ap09a BEST12.;

	INFORMAT ap09b BEST32.;
	FORMAT ap09b BEST12.;

	INFORMAT ap09c BEST32.;
	FORMAT ap09c BEST12.;

	INFORMAT ap09d BEST32.;
	FORMAT ap09d BEST12.;

	INFORMAT ap10 BEST32.;
	FORMAT ap10 BEST12.;

	INFORMAT ap10al1 BEST32.;
	FORMAT ap10al1 BEST12.;

	INFORMAT ap10ar1 BEST32.;
	FORMAT ap10ar1 BEST12.;

	INFORMAT ap10al2 BEST32.;
	FORMAT ap10al2 BEST12.;

	INFORMAT ap10ar2 BEST32.;
	FORMAT ap10ar2 BEST12.;

	INFORMAT ap10al3 BEST32.;
	FORMAT ap10al3 BEST12.;

	INFORMAT ap10ar3 BEST32.;
	FORMAT ap10ar3 BEST12.;

	INFORMAT ap10al4 BEST32.;
	FORMAT ap10al4 BEST12.;

	INFORMAT ap10ar4 BEST32.;
	FORMAT ap10ar4 BEST12.;

	INFORMAT ap10al5 BEST32.;
	FORMAT ap10al5 BEST12.;

	INFORMAT ap10ar5 BEST32.;
	FORMAT ap10ar5 BEST12.;

	INFORMAT ap10al6 BEST32.;
	FORMAT ap10al6 BEST12.;

	INFORMAT ap10ar6 BEST32.;
	FORMAT ap10ar6 BEST12.;

	INFORMAT ap10al7 BEST32.;
	FORMAT ap10al7 BEST12.;

	INFORMAT ap10ar7 BEST32.;
	FORMAT ap10ar7 BEST12.;

	INFORMAT ap10al8 BEST32.;
	FORMAT ap10al8 BEST12.;

	INFORMAT ap10ar8 BEST32.;
	FORMAT ap10ar8 BEST12.;

	INFORMAT ap10al9 BEST32.;
	FORMAT ap10al9 BEST12.;

	INFORMAT ap10ar9 BEST32.;
	FORMAT ap10ar9 BEST12.;

	INFORMAT ap10al10 BEST32.;
	FORMAT ap10al10 BEST12.;

	INFORMAT ap10ar10 BEST32.;
	FORMAT ap10ar10 BEST12.;

	INFORMAT ap10al11 BEST32.;
	FORMAT ap10al11 BEST12.;

	INFORMAT ap10ar11 BEST32.;
	FORMAT ap10ar11 BEST12.;

	INFORMAT ap10al12 BEST32.;
	FORMAT ap10al12 BEST12.;

	INFORMAT ap10ar12 BEST32.;
	FORMAT ap10ar12 BEST12.;

	INFORMAT ap10al13 BEST32.;
	FORMAT ap10al13 BEST12.;

	INFORMAT ap10ar13 BEST32.;
	FORMAT ap10ar13 BEST12.;

	INFORMAT ap10al14 BEST32.;
	FORMAT ap10al14 BEST12.;

	INFORMAT ap10ar14 BEST32.;
	FORMAT ap10ar14 BEST12.;

	INFORMAT ap10al15 BEST32.;
	FORMAT ap10al15 BEST12.;

	INFORMAT ap10ar15 BEST32.;
	FORMAT ap10ar15 BEST12.;

	INFORMAT ap10al16 BEST32.;
	FORMAT ap10al16 BEST12.;

	INFORMAT ap10ar16 BEST32.;
	FORMAT ap10ar16 BEST12.;

	INFORMAT ap10al17 BEST32.;
	FORMAT ap10al17 BEST12.;

	INFORMAT ap10ar17 BEST32.;
	FORMAT ap10ar17 BEST12.;

	INFORMAT ap10al18 BEST32.;
	FORMAT ap10al18 BEST12.;

	INFORMAT ap10ar18 BEST32.;
	FORMAT ap10ar18 BEST12.;

	INFORMAT ap10al19 BEST32.;
	FORMAT ap10al19 BEST12.;

	INFORMAT ap10ar19 BEST32.;
	FORMAT ap10ar19 BEST12.;

	INFORMAT ap10b1 BEST32.;
	FORMAT ap10b1 BEST12.;

	INFORMAT ap10b2 BEST32.;
	FORMAT ap10b2 BEST12.;

	INFORMAT ap10b3 BEST32.;
	FORMAT ap10b3 BEST12.;

	INFORMAT ap11 BEST32.;
	FORMAT ap11 BEST12.;

	INFORMAT ap11ar1 BEST32.;
	FORMAT ap11ar1 BEST12.;

	INFORMAT ap11al1 BEST32.;
	FORMAT ap11al1 BEST12.;

	INFORMAT ap11ar2 BEST32.;
	FORMAT ap11ar2 BEST12.;

	INFORMAT ap11al2 BEST32.;
	FORMAT ap11al2 BEST12.;

	INFORMAT ap11ar3 BEST32.;
	FORMAT ap11ar3 BEST12.;

	INFORMAT ap11al3 BEST32.;
	FORMAT ap11al3 BEST12.;

	INFORMAT ap11ar4 BEST32.;
	FORMAT ap11ar4 BEST12.;

	INFORMAT ap11al4 BEST32.;
	FORMAT ap11al4 BEST12.;

	INFORMAT ap11ar5 BEST32.;
	FORMAT ap11ar5 BEST12.;

	INFORMAT ap11al5 BEST32.;
	FORMAT ap11al5 BEST12.;

	INFORMAT ap11ar6 BEST32.;
	FORMAT ap11ar6 BEST12.;

	INFORMAT ap11al6 BEST32.;
	FORMAT ap11al6 BEST12.;

	INFORMAT ap11ar7 BEST32.;
	FORMAT ap11ar7 BEST12.;

	INFORMAT ap11al7 BEST32.;
	FORMAT ap11al7 BEST12.;

	INFORMAT ap11ar8 BEST32.;
	FORMAT ap11ar8 BEST12.;

	INFORMAT ap11al8 BEST32.;
	FORMAT ap11al8 BEST12.;

	INFORMAT ap11ar9 BEST32.;
	FORMAT ap11ar9 BEST12.;

	INFORMAT ap11al9 BEST32.;
	FORMAT ap11al9 BEST12.;

	INFORMAT ap11ar10 BEST32.;
	FORMAT ap11ar10 BEST12.;

	INFORMAT ap11al10 BEST32.;
	FORMAT ap11al10 BEST12.;

	INFORMAT ap11ar11 BEST32.;
	FORMAT ap11ar11 BEST12.;

	INFORMAT ap11al11 BEST32.;
	FORMAT ap11al11 BEST12.;

	INFORMAT ap11ar12 BEST32.;
	FORMAT ap11ar12 BEST12.;

	INFORMAT ap11al12 BEST32.;
	FORMAT ap11al12 BEST12.;

	INFORMAT ap11ar13 BEST32.;
	FORMAT ap11ar13 BEST12.;

	INFORMAT ap11al13 BEST32.;
	FORMAT ap11al13 BEST12.;

	INFORMAT ap11ar14 BEST32.;
	FORMAT ap11ar14 BEST12.;

	INFORMAT ap11al14 BEST32.;
	FORMAT ap11al14 BEST12.;

	INFORMAT ap11ar15 BEST32.;
	FORMAT ap11ar15 BEST12.;

	INFORMAT ap11al15 BEST32.;
	FORMAT ap11al15 BEST12.;

	INFORMAT ap11ar16 BEST32.;
	FORMAT ap11ar16 BEST12.;

	INFORMAT ap11al16 BEST32.;
	FORMAT ap11al16 BEST12.;

	INFORMAT pa01 BEST32.;
	FORMAT pa01 BEST12.;

	INFORMAT pa01a BEST32.;
	FORMAT pa01a BEST12.;

	INFORMAT pa01b BEST32.;
	FORMAT pa01b BEST12.;

	INFORMAT pa02 BEST32.;
	FORMAT pa02 BEST12.;

	INFORMAT pa02a BEST32.;
	FORMAT pa02a BEST12.;

	INFORMAT pa02b BEST32.;
	FORMAT pa02b BEST12.;

	INFORMAT pa03 BEST32.;
	FORMAT pa03 BEST12.;

	INFORMAT pa03a BEST32.;
	FORMAT pa03a BEST12.;

	INFORMAT pa04 BEST32.;
	FORMAT pa04 BEST12.;

	INFORMAT pa04a BEST32.;
	FORMAT pa04a BEST12.;

	INFORMAT pa05 BEST32.;
	FORMAT pa05 BEST12.;

	INFORMAT pa05a NLNUM32.;
	FORMAT pa05a NLNUM12.;

	INFORMAT pa06 BEST32.;
	FORMAT pa06 BEST12.;

	INFORMAT pa06a $10.;
	FORMAT pa06a $10.;

	INFORMAT pa07 BEST32.;
	FORMAT pa07 BEST12.;

	INFORMAT pa07a BEST32.;
	FORMAT pa07a BEST12.;

	INFORMAT pa08 BEST32.;
	FORMAT pa08 BEST12.;

	INFORMAT pa08a BEST32.;
	FORMAT pa08a BEST12.;

	INFORMAT pa09 BEST32.;
	FORMAT pa09 BEST12.;

	INFORMAT pa09c BEST32.;
	FORMAT pa09c BEST12.;

	INFORMAT pa09d BEST32.;
	FORMAT pa09d BEST12.;

	INFORMAT pa09e1 BEST32.;
	FORMAT pa09e1 BEST12.;

	INFORMAT pa09e2 BEST32.;
	FORMAT pa09e2 BEST12.;

	INFORMAT pa09a BEST32.;
	FORMAT pa09a BEST12.;

	INFORMAT pa09b BEST32.;
	FORMAT pa09b BEST12.;

	INFORMAT pa10 BEST32.;
	FORMAT pa10 BEST12.;

	INFORMAT pa10c BEST32.;
	FORMAT pa10c BEST12.;

	INFORMAT pa10d BEST32.;
	FORMAT pa10d BEST12.;

	INFORMAT pa10e1 $4.;
	FORMAT pa10e1 $4.;

	INFORMAT pa10e2 BEST32.;
	FORMAT pa10e2 BEST12.;

	INFORMAT pa10f BEST32.;
	FORMAT pa10f BEST12.;

	INFORMAT pa10a BEST32.;
	FORMAT pa10a BEST12.;

	INFORMAT pa10b BEST32.;
	FORMAT pa10b BEST12.;

	INFORMAT pa11 BEST32.;
	FORMAT pa11 BEST12.;

	INFORMAT pa11c BEST32.;
	FORMAT pa11c BEST12.;

	INFORMAT pa11d BEST32.;
	FORMAT pa11d BEST12.;

	INFORMAT pa11a BEST32.;
	FORMAT pa11a BEST12.;

	INFORMAT pa11b BEST32.;
	FORMAT pa11b BEST12.;

	INFORMAT pa12 BEST32.;
	FORMAT pa12 BEST12.;

	INFORMAT pa12c BEST32.;
	FORMAT pa12c BEST12.;

	INFORMAT pa12d BEST32.;
	FORMAT pa12d BEST12.;

	INFORMAT pa12a BEST32.;
	FORMAT pa12a BEST12.;

	INFORMAT pa12b BEST32.;
	FORMAT pa12b BEST12.;

	INFORMAT pa13 BEST32.;
	FORMAT pa13 BEST12.;

	INFORMAT pa13c1 BEST32.;
	FORMAT pa13c1 BEST12.;

	INFORMAT pa13d1 $5.;
	FORMAT pa13d1 $5.;

	INFORMAT pa13e1 BEST32.;
	FORMAT pa13e1 BEST12.;

	INFORMAT pa13c2 BEST32.;
	FORMAT pa13c2 BEST12.;

	INFORMAT pa13d2 BEST32.;
	FORMAT pa13d2 BEST12.;

	INFORMAT pa13e2 BEST32.;
	FORMAT pa13e2 BEST12.;

	INFORMAT pa13c3 BEST32.;
	FORMAT pa13c3 BEST12.;

	INFORMAT pa13d3 BEST32.;
	FORMAT pa13d3 BEST12.;

	INFORMAT pa13e3 BEST32.;
	FORMAT pa13e3 BEST12.;

	INFORMAT pa13c4 BEST32.;
	FORMAT pa13c4 BEST12.;

	INFORMAT pa13d4 BEST32.;
	FORMAT pa13d4 BEST12.;

	INFORMAT pa13e4 BEST32.;
	FORMAT pa13e4 BEST12.;

	INFORMAT pa13f $30.;
	FORMAT pa13f $30.;

	INFORMAT pa13a BEST32.;
	FORMAT pa13a BEST12.;

	INFORMAT pa13b BEST32.;
	FORMAT pa13b BEST12.;

	INFORMAT pa14 BEST32.;
	FORMAT pa14 BEST12.;

	INFORMAT pa14c1 BEST32.;
	FORMAT pa14c1 BEST12.;

	INFORMAT pa14d1 BEST32.;
	FORMAT pa14d1 BEST12.;

	INFORMAT pa14c2 BEST32.;
	FORMAT pa14c2 BEST12.;

	INFORMAT pa14d2 BEST32.;
	FORMAT pa14d2 BEST12.;

	INFORMAT pa14c3 BEST32.;
	FORMAT pa14c3 BEST12.;

	INFORMAT pa14d3 BEST32.;
	FORMAT pa14d3 BEST12.;

	INFORMAT pa14c4 BEST32.;
	FORMAT pa14c4 BEST12.;

	INFORMAT pa14d4 BEST32.;
	FORMAT pa14d4 BEST12.;

	INFORMAT pa14f $30.;
	FORMAT pa14f $30.;

	INFORMAT pa14a BEST32.;
	FORMAT pa14a BEST12.;

	INFORMAT pa14b BEST32.;
	FORMAT pa14b BEST12.;

	INFORMAT oact01 BEST32.;
	FORMAT oact01 BEST12.;

	INFORMAT oact01a BEST32.;
	FORMAT oact01a BEST12.;

	INFORMAT oact01b BEST32.;
	FORMAT oact01b BEST12.;

	INFORMAT oact01c BEST32.;
	FORMAT oact01c BEST12.;

	INFORMAT oact02 BEST32.;
	FORMAT oact02 BEST12.;

	INFORMAT oact02a BEST32.;
	FORMAT oact02a BEST12.;

	INFORMAT oact02b BEST32.;
	FORMAT oact02b BEST12.;

	INFORMAT oact02c BEST32.;
	FORMAT oact02c BEST12.;

	INFORMAT oact03 BEST32.;
	FORMAT oact03 BEST12.;

	INFORMAT oact03a BEST32.;
	FORMAT oact03a BEST12.;

	INFORMAT oact04 BEST32.;
	FORMAT oact04 BEST12.;

	INFORMAT oact05 BEST32.;
	FORMAT oact05 BEST12.;

	INFORMAT oact06a BEST32.;
	FORMAT oact06a BEST12.;

	INFORMAT oact06b BEST32.;
	FORMAT oact06b BEST12.;

	INFORMAT oact06c BEST32.;
	FORMAT oact06c BEST12.;

	INFORMAT oact06d BEST32.;
	FORMAT oact06d BEST12.;

	INFORMAT oact06e BEST32.;
	FORMAT oact06e BEST12.;

	INFORMAT oact06f BEST32.;
	FORMAT oact06f BEST12.;

	INFORMAT oact06g BEST32.;
	FORMAT oact06g BEST12.;

	INFORMAT oact06h BEST32.;
	FORMAT oact06h BEST12.;

	INFORMAT oact06i BEST32.;
	FORMAT oact06i BEST12.;

	INFORMAT oact06j BEST32.;
	FORMAT oact06j BEST12.;

	INFORMAT oact06k BEST32.;
	FORMAT oact06k BEST12.;

	INFORMAT oact06l BEST32.;
	FORMAT oact06l BEST12.;

	INFORMAT oact06m BEST32.;
	FORMAT oact06m BEST12.;

	INFORMAT oact06n BEST32.;
	FORMAT oact06n BEST12.;

	INFORMAT oact06o BEST32.;
	FORMAT oact06o BEST12.;

	INFORMAT oact06p BEST32.;
	FORMAT oact06p BEST12.;

	INFORMAT oact06q BEST32.;
	FORMAT oact06q BEST12.;

	INFORMAT oact07 BEST32.;
	FORMAT oact07 BEST12.;

	INFORMAT oact08 NLNUM32.;
	FORMAT oact08 NLNUM12.;

	INFORMAT smk01 BEST32.;
	FORMAT smk01 BEST12.;

	INFORMAT smk01a BEST32.;
	FORMAT smk01a BEST12.;

	INFORMAT smk01b BEST32.;
	FORMAT smk01b BEST12.;

	INFORMAT smk01c BEST32.;
	FORMAT smk01c BEST12.;

	INFORMAT smk01d BEST32.;
	FORMAT smk01d BEST12.;

	INFORMAT smk01e BEST32.;
	FORMAT smk01e BEST12.;

	INFORMAT smk01f BEST32.;
	FORMAT smk01f BEST12.;

	INFORMAT smk01g BEST32.;
	FORMAT smk01g BEST12.;

	INFORMAT smk02 BEST32.;
	FORMAT smk02 BEST12.;

	INFORMAT smk02a BEST32.;
	FORMAT smk02a BEST12.;

	INFORMAT smk02b BEST32.;
	FORMAT smk02b BEST12.;

	INFORMAT smk02c BEST32.;
	FORMAT smk02c BEST12.;

	INFORMAT smk02d BEST32.;
	FORMAT smk02d BEST12.;

	INFORMAT smk02e BEST32.;
	FORMAT smk02e BEST12.;

	INFORMAT smk03 BEST32.;
	FORMAT smk03 BEST12.;

	INFORMAT smk03a BEST32.;
	FORMAT smk03a BEST12.;

	INFORMAT smk03b BEST32.;
	FORMAT smk03b BEST12.;

	INFORMAT smk03c BEST32.;
	FORMAT smk03c BEST12.;

	INFORMAT smk03d BEST32.;
	FORMAT smk03d BEST12.;

	INFORMAT smk03e BEST32.;
	FORMAT smk03e BEST12.;

	INFORMAT alc01 BEST32.;
	FORMAT alc01 BEST12.;

	INFORMAT alc01a BEST32.;
	FORMAT alc01a BEST12.;

	INFORMAT alc01b BEST32.;
	FORMAT alc01b BEST12.;

	INFORMAT alc01c BEST32.;
	FORMAT alc01c BEST12.;

	INFORMAT alc02 BEST32.;
	FORMAT alc02 BEST12.;

	INFORMAT alc03 BEST32.;
	FORMAT alc03 BEST12.;

	INFORMAT psy01 BEST32.;
	FORMAT psy01 BEST12.;

	INFORMAT psy02 BEST32.;
	FORMAT psy02 BEST12.;

	INFORMAT psy02a BEST32.;
	FORMAT psy02a BEST12.;

	INFORMAT psy02b BEST32.;
	FORMAT psy02b BEST12.;

	INFORMAT psy03 BEST32.;
	FORMAT psy03 BEST12.;

	INFORMAT psy03a BEST32.;
	FORMAT psy03a BEST12.;

	INFORMAT psy03b BEST32.;
	FORMAT psy03b BEST12.;

	INFORMAT psy04 BEST32.;
	FORMAT psy04 BEST12.;

	INFORMAT psy04a BEST32.;
	FORMAT psy04a BEST12.;

	INFORMAT pss02 BEST32.;
	FORMAT pss02 BEST12.;

	INFORMAT pss03 BEST32.;
	FORMAT pss03 BEST12.;

	INFORMAT pss07 BEST32.;
	FORMAT pss07 BEST12.;

	INFORMAT pss06 BEST32.;
	FORMAT pss06 BEST12.;

	INFORMAT pss11 BEST32.;
	FORMAT pss11 BEST12.;

	INFORMAT pss14 BEST32.;
	FORMAT pss14 BEST12.;

	INFORMAT cmq01 BEST32.;
	FORMAT cmq01 BEST12.;

	INFORMAT cmq02 BEST32.;
	FORMAT cmq02 BEST12.;

	INFORMAT cmq03 BEST32.;
	FORMAT cmq03 BEST12.;

	INFORMAT cmq04 BEST32.;
	FORMAT cmq04 BEST12.;

	INFORMAT cmq05 BEST32.;
	FORMAT cmq05 BEST12.;

	INFORMAT sf01 BEST32.;
	FORMAT sf01 BEST12.;

	INFORMAT sf02 BEST32.;
	FORMAT sf02 BEST12.;

	INFORMAT sf03 BEST32.;
	FORMAT sf03 BEST12.;

	INFORMAT sf04 BEST32.;
	FORMAT sf04 BEST12.;

	INFORMAT sf05 BEST32.;
	FORMAT sf05 BEST12.;

	INFORMAT sf06 BEST32.;
	FORMAT sf06 BEST12.;

	INFORMAT sf07 BEST32.;
	FORMAT sf07 BEST12.;

	INFORMAT sf08 BEST32.;
	FORMAT sf08 BEST12.;

	INFORMAT sf09 BEST32.;
	FORMAT sf09 BEST12.;

	INFORMAT sf10 BEST32.;
	FORMAT sf10 BEST12.;

	INFORMAT sf11 BEST32.;
	FORMAT sf11 BEST12.;

	INFORMAT sf12 BEST32.;
	FORMAT sf12 BEST12.;

	INFORMAT auto_id_GenInt BEST32.;
	FORMAT auto_id_GenInt BEST12.;

	INFORMAT crf_parent_name_GenInt $22.;
	FORMAT crf_parent_name_GenInt $22.;

	INFORMAT study_name_GenInt $4.;
	FORMAT study_name_GenInt $4.;

	INPUT
		idno
		subject_id
		visit
		event_name
		crf_version_GenInt
		obsdate_idate
		blank_GenInt
		itid
		itype
		demo01
		demo02
		demo03
		demo04
		demo05
		demo06
		demo07
		demo08
		demo09
		demo10
		demo11
		demo11a
		demo11b
		demo12
		demo13
		demo14
		demo14a
		demo14b
		demo15
		demo16
		demo17
		pf01
		pf01a
		pf01b
		pf01c
		pf01d
		pf02
		pf02a
		pf02b
		pf02c
		pf02d
		pf03
		pf03a
		pf03b
		pf03c
		pf03d
		pf04
		pf04a
		pf04b
		pf05
		pf05a
		pf05b
		pf06
		pf06a
		pf06b
		pf07
		pf07a
		pf07b
		pf08
		pf08a
		pf08b
		pf09
		pf09a
		pf09b
		pf10
		pf10a
		pf10b
		pf11
		pf11a
		pf11b
		pf12
		pf12a
		pf12b
		pf13
		pf13a
		pf13b
		pf14
		pf14a
		pf14b
		pf15
		pf15a
		pf15b
		pf16
		pf16a
		pf16b
		pf17
		pf17a
		pf17b
		pf18
		pf18a
		pf18b
		pf19
		pf19a
		pf19b
		pf20
		pf20a
		pf20b
		pf21
		pf21a
		pf21b
		ghsx01
		ghsx01a
		ghsx02
		ghsx02a
		ghsx03
		ghsx03a
		ghsx04
		ghsx05
		ghsx06
		ghsx07
		ghsx08
		ghsx09
		ghsx10
		ghsx11
		ghsx12
		ghsx13
		ghsx14
		ghsx15
		ghsx16
		ghsx17
		ghsx18
		ghsx19
		ghsx19a
		ghsx19b
		ghsx19c
		ghsx20
		ghsx21
		ghsx22
		ghsx22a
		ghsx22b
		ghsx22c
		ghsx23
		ghsx24
		ghsx24a
		ghsx25
		ghsx25a
		ghsx26
		ghsx27
		ghsx28
		ghsx29
		ghsx30
		ghsx31
		ghsx32
		ghsx33
		ghsx34
		ghsx35
		ghsx36
		ghsx36a
		ghsx37
		ghsx37a
		ghsx37b
		ghsx37c
		ghsx37d
		ghsx37e
		ghsx37f
		ghsx38
		ghsx38a
		ap01
		ap01a
		ap01b
		ap01c
		ap01d
		ap01e
		ap01f
		ap02
		ap02a
		ap02b
		ap02c
		ap02d1
		ap02d2
		ap02d3
		ap02d4
		ap02d5
		ap02e
		ap02f1
		ap02f2
		ap02f3
		ap02f4
		ap02f5
		ap02g
		ap02h
		ap02i
		ap03
		ap03a
		ap03b
		ap03c
		ap03d1
		ap03d2
		ap03d3
		ap03d4
		ap03d5
		ap03e
		ap03f1
		ap03f2
		ap03f3
		ap03f4
		ap03f5
		ap04
		ap04a
		ap04b
		ap05
		ap05a
		ap06
		ap07
		ap07a
		ap07b
		ap07c
		ap07d
		ap07e
		ap07f
		ap07g
		ap08
		ap09
		ap09a
		ap09b
		ap09c
		ap09d
		ap10
		ap10al1
		ap10ar1
		ap10al2
		ap10ar2
		ap10al3
		ap10ar3
		ap10al4
		ap10ar4
		ap10al5
		ap10ar5
		ap10al6
		ap10ar6
		ap10al7
		ap10ar7
		ap10al8
		ap10ar8
		ap10al9
		ap10ar9
		ap10al10
		ap10ar10
		ap10al11
		ap10ar11
		ap10al12
		ap10ar12
		ap10al13
		ap10ar13
		ap10al14
		ap10ar14
		ap10al15
		ap10ar15
		ap10al16
		ap10ar16
		ap10al17
		ap10ar17
		ap10al18
		ap10ar18
		ap10al19
		ap10ar19
		ap10b1
		ap10b2
		ap10b3
		ap11
		ap11ar1
		ap11al1
		ap11ar2
		ap11al2
		ap11ar3
		ap11al3
		ap11ar4
		ap11al4
		ap11ar5
		ap11al5
		ap11ar6
		ap11al6
		ap11ar7
		ap11al7
		ap11ar8
		ap11al8
		ap11ar9
		ap11al9
		ap11ar10
		ap11al10
		ap11ar11
		ap11al11
		ap11ar12
		ap11al12
		ap11ar13
		ap11al13
		ap11ar14
		ap11al14
		ap11ar15
		ap11al15
		ap11ar16
		ap11al16
		pa01
		pa01a
		pa01b
		pa02
		pa02a
		pa02b
		pa03
		pa03a
		pa04
		pa04a
		pa05
		pa05a
		pa06
		pa06a
		pa07
		pa07a
		pa08
		pa08a
		pa09
		pa09c
		pa09d
		pa09e1
		pa09e2
		pa09a
		pa09b
		pa10
		pa10c
		pa10d
		pa10e1
		pa10e2
		pa10f
		pa10a
		pa10b
		pa11
		pa11c
		pa11d
		pa11a
		pa11b
		pa12
		pa12c
		pa12d
		pa12a
		pa12b
		pa13
		pa13c1
		pa13d1
		pa13e1
		pa13c2
		pa13d2
		pa13e2
		pa13c3
		pa13d3
		pa13e3
		pa13c4
		pa13d4
		pa13e4
		pa13f
		pa13a
		pa13b
		pa14
		pa14c1
		pa14d1
		pa14c2
		pa14d2
		pa14c3
		pa14d3
		pa14c4
		pa14d4
		pa14f
		pa14a
		pa14b
		oact01
		oact01a
		oact01b
		oact01c
		oact02
		oact02a
		oact02b
		oact02c
		oact03
		oact03a
		oact04
		oact05
		oact06a
		oact06b
		oact06c
		oact06d
		oact06e
		oact06f
		oact06g
		oact06h
		oact06i
		oact06j
		oact06k
		oact06l
		oact06m
		oact06n
		oact06o
		oact06p
		oact06q
		oact07
		oact08
		smk01
		smk01a
		smk01b
		smk01c
		smk01d
		smk01e
		smk01f
		smk01g
		smk02
		smk02a
		smk02b
		smk02c
		smk02d
		smk02e
		smk03
		smk03a
		smk03b
		smk03c
		smk03d
		smk03e
		alc01
		alc01a
		alc01b
		alc01c
		alc02
		alc03
		psy01
		psy02
		psy02a
		psy02b
		psy03
		psy03a
		psy03b
		psy04
		psy04a
		pss02
		pss03
		pss07
		pss06
		pss11
		pss14
		cmq01
		cmq02
		cmq03
		cmq04
		cmq05
		sf01
		sf02
		sf03
		sf04
		sf05
		sf06
		sf07
		sf08
		sf09
		sf10
		sf11
		sf12
		auto_id_GenInt
		crf_parent_name_GenInt
		study_name_GenInt
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
		crf_version_GenInt = "CRF Version"
		obsdate_idate = "Date Completed"
		blank_GenInt = "Blank Form"
		itid = "Tester ID"
		itype = "Interview conducted with"
		demo01 = "DOB"
		demo02 = "Age today"
		demo03 = "Current marital status"
		demo04 = "How many other people currently live in your household"
		demo05 = "Type of housing"
		demo06 = "Were you born in US"
		demo07 = "Is English your first language"
		demo08 = "Are you Spanish Hispanic or Latino orgin"
		demo09 = "Race you consider yourself to be"
		demo10 = "Highest grade in school completed"
		demo11 = "Do you have Medicare"
		demo11a = "What type of Medicare"
		demo11b = "Do you have a Medigap plan"
		demo12 = "Do you have private health insurance"
		demo13 = "Do any of your health care plans include prescription drug coverage"
		demo14 = "Is your income from all sources more or less than 10000"
		demo14a = "Income more than 25000"
		demo14b = "Income more than 50000"
		demo15 = "How well does your family income take care of family needs"
		demo16 = "Have you delayed getting medical care due to money problems past 12 mo"
		demo17 = "Have you gone withoug medications due to money problems past 12 mo"
		pf01 = "Do you have difficulty walking a quarter mile due to health"
		pf01a = "How much difficulty walking a quarter mile"
		pf01b = "How easy is it to walk quarter mile"
		pf01c = "Do you have difficulty walking one mile due to health"
		pf01d = "How easy is it to walk one mile"
		pf02 = "Do you have difficulty walking up 10 steps due to health"
		pf02a = "How much difficulty walking up 10 steps"
		pf02b = "How easy is it to walk up 10 steps"
		pf02c = "Do you have difficulty walking up 20 steps due to health"
		pf02d = "How easy is it to walk up 20 steps"
		pf03 = "How difficulty lifting or carrying something weighing 10 lbs"
		pf03a = "How much difficulty lifting or carrying 10 lbs"
		pf03b = "How easy is it to lift or carry 10 lbs"
		pf03c = "Do you have difficulty lifting or carrying 20 lbs"
		pf03d = "How easy is it to lift or carry 20 lbs"
		pf04 = "Do you have difficulty standing up from a chair without using arms"
		pf04a = "How much difficulty do you have rising without using your arms"
		pf04b = "How easy is it for you to stand up from a chair without using your arms"
		pf05 = "Do you have difficulty stooping crouching or kneeling"
		pf05a = "How much difficulty do you have stooping crouching or kneeling"
		pf05b = "How easy is it for you to stoop crouch or kneel"
		pf06 = "Do you have difficulty raising arms up over head"
		pf06a = "How much difficulty do you have raising arms up over head"
		pf06b = "How easy is it for you to raising arms up over head"
		pf07 = "Do you have difficulty using your fingers to grasp or handle"
		pf07a = "How much difficulty do you have using your fingers to grasp"
		pf07b = "How easy is it for you to using your fingers to grasp or handle"
		pf08 = "Do you have difficulty getting in and out of bed or chairs"
		pf08a = "How much difficulty do you have getting in and out of bed or chairs"
		pf08b = "Need equipment or help getting in and out of bed or chairs"
		pf09 = "Do you have difficulty bathing or showering"
		pf09a = "How much difficulty do you have bathing or showering"
		pf09b = "Need equipment or help bathing or showering"
		pf10 = "Do you have difficulty dressing"
		pf10a = "How much difficulty do you have dressing"
		pf10b = "Need equipment or help dressing"
		pf11 = "Do you have difficulty eating example holding fork cutting food"
		pf11a = "How much difficulty do you have eating"
		pf11b = "Need equipment or help eating"
		pf12 = "Do you have difficulty using the toilet including getting to the toilet"
		pf12a = "How much difficulty do you have using the toilet"
		pf12b = "Need equipment or help using the toilet"
		pf13 = "Do you have difficulty walking across a small room"
		pf13a = "How much difficulty do you have walking across a small room"
		pf13b = "Need equipment or help walking across a small room"
		pf14 = "Do you have difficulty doing light housework"
		pf14a = "How much difficulty do you have walking across a small room"
		pf14b = "Is do not do light housework due to health related reasons"
		pf15 = "Do you have difficulty doing heavy housework"
		pf15a = "How much difficulty do you have walking across a small room"
		pf15b = "Is do not do heavy housework due to health related reasons"
		pf16 = "Do you have difficulty preparing your own meals"
		pf16a = "How much difficulty do you have preparing your own meals"
		pf16b = "Is do not do preparing your own meals due to health related reasons"
		pf17 = "Do you have difficulty shopping for personal items"
		pf17a = "How much difficulty do you have shopping for personal items"
		pf17b = "Is do not do shopping for personal items due to health related reasons"
		pf18 = "Do you have difficulty using the telephone"
		pf18a = "How much difficulty do you have using the telephone"
		pf18b = "Is do not do using the telephone due to health related reasons"
		pf19 = "Do you have difficulty taking medications"
		pf19a = "How much difficulty do you have taking medications"
		pf19b = "Is do not do taking medications due to health related reasons"
		pf20 = "Do you have difficulty managing your money by yourself"
		pf20a = "How much difficulty do you have managing your money"
		pf20b = "Is do not do managing your money due to health related reasons"
		pf21 = "Do you have difficulty driving"
		pf21a = "How much difficulty do you have driving"
		pf21b = "Is do not do driving due to health related reasons"
		ghsx01 = "Past 12 months been a patient in a hospital for one or more nights"
		ghsx01a = "How many different times during past 12 months patient in hospital overnight"
		ghsx02 = "Past 12 months stay in bed most of the day due to injury or illness"
		ghsx02a = "How many days did you stay in bed all day due to illness or injury"
		ghsx03 = "Past 12 months cut down on things you usually do because of illness or injury"
		ghsx03a = "How many days did you cut down on things you usually do because of illness or injury"
		ghsx04 = "Past mo how many times felt unusually tired most of the day"
		ghsx05 = "Past mo how weak did you feel"
		ghsx06 = "Past mo energy level"
		ghsx07 = "Past mo have trouble falling asleep"
		ghsx08 = "Past mo wake up several times at night"
		ghsx09 = "Past mo wake up earlier than you planned to"
		ghsx10 = "Past mo have trouble getting back to sleep if work up too early"
		ghsx11 = "Past mo take sleeping pills or other meds to help you sleep"
		ghsx12 = "Past mo have loud snoring at night"
		ghsx13 = "Past mo have choking or gasping while sleeping"
		ghsx14 = "Past mo have excessive daytime sleepiness"
		ghsx15 = "Past mo overall typical night sleep"
		ghsx16 = "Past mo how many hours of sleep each night"
		ghsx17 = "In general appetite or desire to eat"
		ghsx18 = "Current weight"
		ghsx19 = "Since this time last yr weight changed by 5 lbs or more"
		ghsx19a = "Did you gain or loose weight"
		ghsx19b = "Were you trying to gain or lose weight"
		ghsx19c = "How many pounds did you gain or lose"
		ghsx20 = "Present time trying to lose weight"
		ghsx21 = "How would you rate your overall oral health"
		ghsx22 = "Been told by dentist you have gum disease"
		ghsx22a = "When were you last treated for gum disease"
		ghsx22b = "Have you lost teeth because of gum disease"
		ghsx22c = "How old were you when you lost your first tooth because of gum disease"
		ghsx23 = "During the past 3 months how much pain in your gums or teeth"
		ghsx24 = "Does your mouth feel dry when eating"
		ghsx24a = "Problems chewing or swallowing that limit ability to eat"
		ghsx25 = "Do you have glasses or contact lenses"
		ghsx25a = "When do you wear them"
		ghsx26 = "Rate your current eyesite with glasses or contacts if you wear them"
		ghsx27 = "How much difficulty reading ordinary print in newspapers"
		ghsx28 = "How much difficulty recognizing people you know from across a room"
		ghsx29 = "Because of eyesight have difficulty going down steps curbs in dim light or at night"
		ghsx30 = "Because of eyesight have difficulty noticing objects off to the side while walking alone"
		ghsx31 = "Do you wear a hearing aid"
		ghsx32 = "How would you rate your current hearing ability with hearing aid if used"
		ghsx33 = "Do you have any problem keeping your balance when walking on level surface"
		ghsx34 = "Do you have any problem keeping your balance when standing with eyes closed"
		ghsx35 = "Do you ever feel dizzy or light headed after standing up"
		ghsx36 = "In the past 12 mo have you fainted blacked out lost consciousness"
		ghsx36a = "In the past 12 mo how many times have you fainted blacked out lost consciousness"
		ghsx37 = "In the past 12 mo have you fallen and landed on the ground or floor"
		ghsx37a = "How many times hae you fallen to the ground in the past 12 mo"
		ghsx37b = "Break or fractured a bone on any fall in the past 12 mo"
		ghsx37c = "Hit or injure your head on a fall in the past 12 mo"
		ghsx37d = "Have a sprain or strain on any fall in the past 12 mo"
		ghsx37e = "Had bruise or bleeding on any fall in the past 12 mo"
		ghsx37f = "What type of activity were you doing at the time of your worst fall"
		ghsx38 = "Did you limit your activities because of fear of falling in the past 12 mo"
		ghsx38a = "How often did you limit activities because of fear of falling"
		ap01 = "Had low back pain past year"
		ap01a = "Rate your usual back pain over the past year"
		ap01b = "Have you needed to limit your typical daily activities as a result of low back pain"
		ap01c = "Estimate how many days you have needed to limit activities in the past year due to low back pain"
		ap01d = "Longest consecutive time in weeks you have had low back pain"
		ap01e = "Do you currently have low back pain"
		ap01f = "Rate your low back pain past week"
		ap02 = "Have you had pain or aching most days for at least one month in or around either knee"
		ap02a = "Had knee pain lasting at least one month during past 12 months"
		ap02b = "Which knee had pain during past 12 mo"
		ap02c = "In the past 12 mo how often did you have pain in your left knee"
		ap02d1 = "In the past 30 days how much pain in left knee while walking on a flat surface"
		ap02d2 = "In the past 30 days how much pain in left knee while going up or down stairs"
		ap02d3 = "In the past 30 days how much pain in left knee while sitting or lying down"
		ap02d4 = "In the past 30 days how much pain in left knee while standing"
		ap02d5 = "In the past 30 days how much pain in left knee while getting in or out of a chair"
		ap02e = "In the past 12 mo how often did you have pain in your Right knee"
		ap02f1 = "In the past 30 days how much pain in Right knee while walking on a flat surface"
		ap02f2 = "In the past 30 days how much pain in Right knee while going up or down stairs"
		ap02f3 = "In the past 30 days how much pain in Right knee while sitting or lying down"
		ap02f4 = "In the past 30 days how much pain in Right knee while standing"
		ap02f5 = "In the past 30 days how much pain in Right knee while getting in or out of a chair"
		ap02g = "Most days in past 12 mo did you have stiffness in either of your knees"
		ap02h = "Is this stiffness in the left right or both knees"
		ap02i = "How severe is this stiffness after you first wake up or after sitting or lying down"
		ap03 = "Have you had pain most days for at least one month in or around either hip"
		ap03a = "Had hip pain lasting at least one month during past 12 months"
		ap03b = "Which hip had pain during past 12 mo"
		ap03c = "In the past 12 mo how severe was the pain in your left hip"
		ap03d1 = "In the past 30 days how much pain in left hip while walking on a flat surface"
		ap03d2 = "In the past 30 days how much pain in left hip while going up or down stairs"
		ap03d3 = "In the past 30 days how much pain in left hip while sitting or lying down"
		ap03d4 = "In the past 30 days how much pain in left hip while standing"
		ap03d5 = "In the past 30 days how much pain in left hip while getting in or out of a chair"
		ap03e = "In the past 12 mo how severe was the pain in your Right hip"
		ap03f1 = "In the past 30 days how much pain in Right hip while walking on a flat surface"
		ap03f2 = "In the past 30 days how much pain in Right hip while going up or down stairs"
		ap03f3 = "In the past 30 days how much pain in Right hip while sitting or lying down"
		ap03f4 = "In the past 30 days how much pain in Right hip while standing"
		ap03f5 = "In the past 30 days how much pain in Right hip while getting in or out of a chair"
		ap04 = "In the past 12 months have you had pain lasting at least one month in either shoulder"
		ap04a = "In the past 12 months have you had pain in the left right or both shoulders"
		ap04b = "How severe was the pain in your shoulder usually"
		ap05 = "In the past 12 months had neck pain lasting at least one month"
		ap05a = "How severe was the pain in your neck usually"
		ap06 = "In the past 12 months have you had numbness prickly feeling tingling sudden stabbing burning pain in legs or feet"
		ap07 = "In the past 12 months have you had a headaches lasting more than 4 hours"
		ap07a = "How often did you have headaches lasting more than 4 hrs in the past 12 mo"
		ap07b = "Is the pain usually mostly on one side of your head"
		ap07c = "Does the headache usually throb pulsate or pound"
		ap07d = "Headache usually accompanied by nausea and or vomiting"
		ap07e = "During headache do lights usually bother you or make the headache worse"
		ap07f = "During headache do sounds usually bother you or make headache worse"
		ap07g = "Ever notice spots jagged lines or heat waves in one or both eyes before you get the headache"
		ap08 = "Have or have had recurrent uncomfortable feelings or sensations in your legs while sitting or lying down"
		ap09 = "Have or have had feeling of recurrent need orurge to move your legs while sitting or lying down"
		ap09a = "Are you more likely to have these feelings when resting or physically active"
		ap09b = "Do these feelings get better while you are actually moving around"
		ap09c = "Are these feelings worse at night or in the evening than at other times of day"
		ap09d = "In the past 12 months how often did you get these feelings"
		ap10 = "In the past 12 months have you had pain lasting at least one month in your feet toes or ankles"
		ap10al1 = "Left foot top 1"
		ap10ar1 = "Right foot top 1"
		ap10al2 = "Left foot top 2"
		ap10ar2 = "Right foot top 2"
		ap10al3 = "Left foot top 3"
		ap10ar3 = "Right foot top 3"
		ap10al4 = "Left foot top 4"
		ap10ar4 = "Right foot top 4"
		ap10al5 = "Left foot top 5"
		ap10ar5 = "Right foot top 5"
		ap10al6 = "Left foot top 6"
		ap10ar6 = "Right foot top 6"
		ap10al7 = "Left foot top 7"
		ap10ar7 = "Right foot top 7"
		ap10al8 = "Left foot top 8"
		ap10ar8 = "Right foot top 8"
		ap10al9 = "Left foot top 9"
		ap10ar9 = "Right foot top 9"
		ap10al10 = "Left foot bottom 10"
		ap10ar10 = "Right foot bottom 10"
		ap10al11 = "Left foot bottom 11"
		ap10ar11 = "Right foot bottom 11"
		ap10al12 = "Left foot bottom 12"
		ap10ar12 = "Right foot bottom 12"
		ap10al13 = "Left foot bottom 13"
		ap10ar13 = "Right foot bottom 13"
		ap10al14 = "Left foot bottom 14"
		ap10ar14 = "Right foot bottom 14"
		ap10al15 = "Left foot bottom 15"
		ap10ar15 = "Right foot bottom 15"
		ap10al16 = "Left foot bottom 16"
		ap10ar16 = "Right foot bottom 16"
		ap10al17 = "Left foot bottom 17"
		ap10ar17 = "Right foot bottom 17"
		ap10al18 = "Left foot bottom 18"
		ap10ar18 = "Right foot bottom 18"
		ap10al19 = "Left foot bottom 19"
		ap10ar19 = "Right foot bottom 19"
		ap10b1 = "Past 30 days how much pain in feet ankles or toes while walking on flat surface"
		ap10b2 = "Past 30 days how much pain in feet ankles or toes while going up or down stairs"
		ap10b3 = "Past 30 days how much pain in feet ankles or toes while standing upright"
		ap11 = "In the past 12 months have you had pain lasting at least one month in joints of hands or wrist"
		ap11ar1 = "Right hand 1"
		ap11al1 = "Left hand 1"
		ap11ar2 = "Right hand 2"
		ap11al2 = "Left hand 2"
		ap11ar3 = "Right hand 3"
		ap11al3 = "Left hand 3"
		ap11ar4 = "Right hand 4"
		ap11al4 = "Left hand 4"
		ap11ar5 = "Right hand 5"
		ap11al5 = "Left hand 5"
		ap11ar6 = "Right hand 6"
		ap11al6 = "Left hand 6"
		ap11ar7 = "Right hand 7"
		ap11al7 = "Left hand 7"
		ap11ar8 = "Right hand 8"
		ap11al8 = "Left hand 8"
		ap11ar9 = "Right hand 9"
		ap11al9 = "Left hand 9"
		ap11ar10 = "Right hand 10"
		ap11al10 = "Left hand 10"
		ap11ar11 = "Right hand 11"
		ap11al11 = "Left hand 11"
		ap11ar12 = "Right hand 12"
		ap11al12 = "Left hand 12"
		ap11ar13 = "Right hand 13"
		ap11al13 = "Left hand 13"
		ap11ar14 = "Right hand 14"
		ap11al14 = "Left hand 14"
		ap11ar15 = "Right hand 15"
		ap11al15 = "Left hand 15"
		ap11ar16 = "Right hand 16"
		ap11al16 = "Left hand 16"
		pa01 = "In the past 2 weeks did you walk up any flights of stairs"
		pa01a = "About how many flights did you walk up in the past 2 weeks"
		pa01b = "Climb up how many flights carrying at least 10 lbs"
		pa02 = "In the past 2 weeks did you walk down any flights of stairs"
		pa02a = "About how many flights did you walk down in the past 2 weeks"
		pa02b = "Descend how many flights carrying at least 10 lbs"
		pa03 = "In the past 2 weeks did you do any outdoor work"
		pa03a = "How many hours did you spend doing outdoor work in the past 2 weeks"
		pa04 = "In the past 2 weeks did you do any household updating maintenance or repair"
		pa04a = "How many hours did you spend doing outdoor work in the past 2 weeks"
		pa05 = "In the past 2 weeks did you do any heavy major chores"
		pa05a = "How many hours did you spend doing heavy or major chores in the past 2 weeks"
		pa06 = "In the past 2 weeks did you do any light housework"
		pa06a = "How many hours did you spend doing light housework"
		pa07 = "In the past 2 weeks did you do any grocery shopping"
		pa07a = "About how many bags of groceries did you buy in the past 2 weeks"
		pa08 = "In the past 2 weeks did you do any laundry"
		pa08a = "About how many loads of laundry in the past 2 weeks"
		pa09 = "Did you do any brisk walking in the past 2 weeks"
		pa09c = "How many times did you go for a brisk walk in the past 2 weeks"
		pa09d = "How many minutes did you brisk walk each time on average"
		pa09e1 = "About how far did you brisk walk each time in blocks"
		pa09e2 = "About how far did you brisk walk each time miles"
		pa09a = "Did you do any brisk walking in the past 12 months"
		pa09b = "Main reason you have not done any brisk walking in the past 2 weeks"
		pa10 = "Did you do any casual walking in the past 2 weeks"
		pa10c = "How many times did you go for a casual walk in the past 2 weeks"
		pa10d = "How many minutes did you casual walk each time on average"
		pa10e1 = "About how far did you casual walk each time in blocks"
		pa10e2 = "About how far did you casual walk each time miles"
		pa10f = "When you casual walk do you usually walk at a brisk moderate pace or leisurely stroll"
		pa10a = "Did you do any casual walking in the past 12 months"
		pa10b = "Main reason you have not done any casual walking in the past 2 weeks"
		pa11 = "Did you do any weight or circuit training in the past 2 weeks"
		pa11c = "How many times did you do weight training in the past 2 weeks"
		pa11d = "How many minutes did you weight train each time on average"
		pa11a = "Did you do any weight or circuit training in the past 12 months"
		pa11b = "Main reason you have not done any weight or circuit training in the past 2 weeks"
		pa12 = "Did you do any flexibility training in the past 2 weeks"
		pa12c = "How many times did you do flexibility training in the past 2 weeks"
		pa12d = "How many minutes did you flexibility training each time on average"
		pa12a = "Did you do any flexibility training in the past 12 months"
		pa12b = "Main reason you have not done any flexibility training in the past 2 weeks"
		pa13 = "Did you do any vigorous exercise activities in the past w weeks"
		pa13c1 = "Vigorous activity first named"
		pa13d1 = "How many hours first activity"
		pa13e1 = "Vigorous activity level first activity"
		pa13c2 = "Vigorous activity second named"
		pa13d2 = "How many hours second activity"
		pa13e2 = "Vigorous activity level second activity"
		pa13c3 = "Vigorous activity third named"
		pa13d3 = "How many hours third activity"
		pa13e3 = "Vigorous activity level third activity"
		pa13c4 = "Vigorous activity fourth named"
		pa13d4 = "How many hours fourth activity"
		pa13e4 = "Vigorous activity level fourth activity"
		pa13f = "Other Exercise"
		pa13a = "Did you do any exercise activities in the past 12 mo"
		pa13b = "reason you havae not done any exercise activities past 2 weeks"
		pa14 = "Did you do any recreational activities in the past w weeks"
		pa14c1 = "Recreational activity first named"
		pa14d1 = "How many hours first activity"
		pa14c2 = "Recreational activity second named"
		pa14d2 = "How many hours second activity"
		pa14c3 = "Recreational activity third named"
		pa14d3 = "How many hours third activity"
		pa14c4 = "Recreational activity fourth named"
		pa14d4 = "How many hours fourth activity"
		pa14f = "Other recreational activities"
		pa14a = "Did you do any exercise activities in the past 12 mo"
		pa14b = "reason you havae not done any recreational activities past 2 weeks"
		oact01 = "Do you currently work for pay"
		oact01a = "On average how many hours do you work per week all jobs combined"
		oact01b = "How many months of the year do you work"
		oact01c = "Type of work activity"
		oact02 = "Do you currently do volunteer work"
		oact02a = "On average how many hours do you volunteer?"
		oact02b = "How many months of the year do you do volunteer work"
		oact02c = "Type of volunteer activity"
		oact03 = "Do you currently provide any regular care or assistance to a child or disabled or sick adult"
		oact03a = "About how many hours per week provide care to another person"
		oact04 = "About how often do you get together with friends or neighbors"
		oact05 = "About how often do you get together with your children or other relatives"
		oact06a = "How often in the past 12 mo did you do a crossword or other word puzzle"
		oact06b = "How often in the past 12 mo did you do a jigsaw puzzle"
		oact06c = "How often in the past 12 mo did you read a newspaper or magazine article"
		oact06d = "How often in the past 12 mo did you read from a book"
		oact06e = "How often in the past 12 mo did you play board games bingo bridge or other card games"
		oact06f = "How often in the past 12 mo did you use a computer"
		oact06g = "How often in the past 12 mo did you play a musical instrument"
		oact06h = "How often in the past 12 mo did you do recreational games like darts horshoes pool"
		oact06i = "How often in the past 12 mo did you write a letter article poem or story"
		oact06j = "How often in the past 12 mo did you travel 100 miles or more from your home"
		oact06k = "How often in the past 12 mo did you do handcrafts needlework sewing carpentry wood working model building"
		oact06l = "How often in the past 12 mo did you do art projects photography sketch draw paint sculpt"
		oact06m = "How often in the past 12 mo did you do go out to a movie the theater a concert or show"
		oact06n = "How often in the past 12 mo did you do visit a museum aquarium zoo or science center"
		oact06o = "How often in the past 12 mo did you do attend a sports event like baseball or football game"
		oact06p = "How often in the past 12 mo did you do attend a course class lecture discussion public meeting"
		oact06q = "How often in the past 12 mo did you participatae in church club or other community activities apart from any mentioned above"
		oact07 = "About how many hours per week on average do you watch television"
		oact08 = "About how many hours per week on average do you spend reading books newspapers magazines"
		smk01 = "Have you smoked at least 100 cigarettes over your entire life"
		smk01a = "Have you ever smoked on a regular basis that is daily for at least 6 months"
		smk01b = "How old were you when you first started smoking cigarettes regularly"
		smk01c = "On average over the entire time you have smoked how many cigarettes have you usually smoked per day"
		smk01d = "Do you smoke cigarettes now"
		smk01e = "On average how many cigarettes a day do you smoke now"
		smk01f = "How many times have you seriously tried to quit smoking"
		smk01g = "How old were you when you stopped smoking cigarettes"
		smk02 = "Have you smoked at least 50 cigars over your entire life"
		smk02a = "How old were you when you first started smoking cigars"
		smk02b = "On average over the entire time you have smoked how many cigars have you usually smoked per week"
		smk02c = "Do you smoke cigars now"
		smk02d = "On average how many cigars a week do you smoke now"
		smk02e = "Age when you stop smoking cigars"
		smk03 = "Have you smoked at least 3 packages of pipe tobacco over your entire life"
		smk03a = "How old were you when you first started smoking a pipe"
		smk03b = "On average over the entire time you have smoked a pipe how many pipefuls have you usually smoked per week"
		smk03c = "Do you smoke a pipe now"
		smk03d = "On average how many pipefuls a week do you smoke now"
		smk03e = "Age when you stop smoking a pipe"
		alc01 = "In the past 12 mo did you drink any alcoholic beverages"
		alc01a = "In a typical week over the past 12 mo how many alcoholic beverages did you have"
		alc01b = "In a typical week over the past 12 mo how many of these drinks were red wine"
		alc01c = "What is the primary reason youdid not drink any alcoholic beverages in the past 12 months?"
		alc02 = "Did you ever drink more alcoholic beverages than you do now"
		alc03 = "Was there ever a time in your life when you had 5 or more drinks of alcoholic beverage almost every day"
		psy01 = "Using a scale from 0 extremely unhappy to 10 very happy how happy are you"
		psy02 = "I can do just about anything I really set my mind to Agree Disagree"
		psy02a = "Do just about anything agree strongly or somewhat"
		psy02b = "Do just about anything disagree strongly or somewhat"
		psy03 = "Often feel helpless dealing with the problems of life Agree Disagree"
		psy03a = "Often feel helpless dealing with the problems of life Agree strongly or somewhat"
		psy03b = "Often feel helpless dealing with the problems of life Disagree strongly or womewhat"
		psy04 = "In the past year could you use more emotional support than you receive"
		psy04a = "Would you say you needed a lot more some more or a little more"
		pss02 = "In the last month felt unable to control the important things in your life"
		pss03 = "In the last month felt nervous and stressed"
		pss07 = "In the last month felt that things were going your way"
		pss06 = "In the last month felt confident about your ability to handle your personal problems"
		pss11 = "In the last month been angered because of things that happened that were outside of your control"
		pss14 = "In the last month felt difficulties were piling up so hight that you could not overcome them"
		cmq01 = "In a typical week within the past month how mahy times did you leave your home for any reason"
		cmq02 = "When you leave your home how often do you go alone"
		cmq03 = "When away from home how often do you limit the amount of walking"
		cmq04 = "How often do you purposly avoid leaving your home when it is dark or raining"
		cmq05 = "How often do you purposly avoid a situation in which you would have to walk on an uneven surface?"
		sf01 = "In general would you say your health is"
		sf02 = "Does your health now limit you in moderate activities"
		sf03 = "Does your health now limit you in climbing several flights of stairs"
		sf04 = "During the past 4 wks did you accomplish less than you would like due to physicala health"
		sf05 = "During the past 4 wks were you limited in the kind of work or other activities as a result of your physical health"
		sf06 = "During the past 4 weeks have you accomplished less than you would like due to emotional problems"
		sf07 = "During the past 4 weeks have you not done work or other activities as carefully as usual due to emotional problems"
		sf08 = "During the past 4 weeks how much did pain interfere with your normal work"
		sf09 = "How much of the time during the past 4 weeks felt calm and peaceful"
		sf10 = "How much of the time during the past 4 weeks had a lot of energy"
		sf11 = "How much of the time during the past 4 weeks felt downhearted and blue"
		sf12 = "During the past 4 weeks how much of the time have your physical health or emotional problems interfered with your social activities"
		auto_id_GenInt = "Unique Teleform Number"
		crf_parent_name_GenInt = "CRF Parent Name"
		study_name_GenInt = "Study Name"
	;
	FORMAT
		itype itype_.
		demo03 demo03_.
		demo04 demo04_.
		demo05 demo05_.
		demo06 demo06_.
		demo07 demo07_.
		demo08 demo08_.
		demo09 demo09_.
		demo11 demo11_.
		demo11a demo11a_.
		demo11b demo11b_.
		demo12 demo12_.
		demo13 demo13_.
		demo14 demo14_.
		demo14a demo14a_.
		demo14b demo14b_.
		demo15 demo15_.
		demo16 demo16_.
		demo17 demo17_.
		pf01 pf01_.
		pf01a pf01a_.
		pf01b pf01b_.
		pf01c pf01c_.
		pf01d pf01d_.
		pf02 pf02_.
		pf02a pf02a_.
		pf02b pf02b_.
		pf02c pf02c_.
		pf02d pf02d_.
		pf03 pf03_.
		pf03a pf03a_.
		pf03b pf03b_.
		pf03c pf03c_.
		pf03d pf03d_.
		pf04 pf04_.
		pf04a pf04a_.
		pf04b pf04b_.
		pf05 pf05_.
		pf05a pf05a_.
		pf05b pf05b_.
		pf06 pf06_.
		pf06a pf06a_.
		pf06b pf06b_.
		pf07 pf07_.
		pf07a pf07a_.
		pf07b pf07b_.
		pf08 pf08_.
		pf08a pf08a_.
		pf08b pf08b_.
		pf09 pf09_.
		pf09a pf09a_.
		pf09b pf09b_.
		pf10 pf10_.
		pf10a pf10a_.
		pf10b pf10b_.
		pf11 pf11_.
		pf11a pf11a_.
		pf11b pf11b_.
		pf12 pf12_.
		pf12a pf12a_.
		pf12b pf12b_.
		pf13 pf13_.
		pf13a pf13a_.
		pf13b pf13b_.
		pf14 pf14_.
		pf14a pf14a_.
		pf14b pf14b_.
		pf15 pf15_.
		pf15a pf15a_.
		pf15b pf15b_.
		pf16 pf16_.
		pf16a pf16a_.
		pf16b pf16b_.
		pf17 pf17_.
		pf17a pf17a_.
		pf17b pf17b_.
		pf18 pf18_.
		pf18a pf18a_.
		pf18b pf18b_.
		pf19 pf19_.
		pf19a pf19a_.
		pf19b pf19b_.
		pf20 pf20_.
		pf20a pf20a_.
		pf20b pf20b_.
		pf21 pf21_.
		pf21a pf21a_.
		pf21b pf21b_.
		ghsx01 ghsx01_.
		ghsx02 ghsx02_.
		ghsx03 ghsx03_.
		ghsx04 ghsx04_.
		ghsx05 ghsx05_.
		ghsx06 ghsx06_.
		ghsx07 ghsx07_.
		ghsx08 ghsx08_.
		ghsx09 ghsx09_.
		ghsx10 ghsx10_.
		ghsx11 ghsx11_.
		ghsx12 ghsx12_.
		ghsx13 ghsx13_.
		ghsx14 ghsx14_.
		ghsx15 ghsx15_.
		ghsx16 ghsx16_.
		ghsx17 ghsx17_.
		ghsx19 ghsx19_.
		ghsx19a ghsx19a_.
		ghsx19b ghsx19b_.
		ghsx20 ghsx20_.
		ghsx21 ghsx21_.
		ghsx22 ghsx22_.
		ghsx22a ghsx22a_.
		ghsx22b ghsx22b_.
		ghsx23 ghsx23_.
		ghsx24 ghsx24_.
		ghsx24a ghsx24a_.
		ghsx25 ghsx25_.
		ghsx25a ghsx25a_.
		ghsx26 ghsx26_.
		ghsx27 ghsx27_.
		ghsx28 ghsx28_.
		ghsx29 ghsx29_.
		ghsx30 ghsx30_.
		ghsx31 ghsx31_.
		ghsx32 ghsx32_.
		ghsx33 ghsx33_.
		ghsx34 ghsx34_.
		ghsx35 ghsx35_.
		ghsx36 ghsx36_.
		ghsx36a ghsx36a_.
		ghsx37 ghsx37_.
		ghsx37a ghsx37a_.
		ghsx37b ghsx37b_.
		ghsx37c ghsx37c_.
		ghsx37d ghsx37d_.
		ghsx37e ghsx37e_.
		ghsx37f ghsx37f_.
		ghsx38 ghsx38_.
		ghsx38a ghsx38a_.
		ap01 ap01_.
		ap01a ap01a_.
		ap01b ap01b_.
		ap01e ap01e_.
		ap01f ap01f_.
		ap02 ap02_.
		ap02a ap02a_.
		ap02b ap02b_.
		ap02c ap02c_.
		ap02d1 ap02d1_.
		ap02d2 ap02d2_.
		ap02d3 ap02d3_.
		ap02d4 ap02d4_.
		ap02d5 ap02d5_.
		ap02e ap02e_.
		ap02f1 ap02f1_.
		ap02f2 ap02f2_.
		ap02f3 ap02f3_.
		ap02f4 ap02f4_.
		ap02f5 ap02f5_.
		ap02g ap02g_.
		ap02h ap02h_.
		ap02i ap02i_.
		ap03 ap03_.
		ap03a ap03a_.
		ap03b ap03b_.
		ap03c ap03c_.
		ap03d1 ap03d1_.
		ap03d2 ap03d2_.
		ap03d3 ap03d3_.
		ap03d4 ap03d4_.
		ap03d5 ap03d5_.
		ap03e ap03e_.
		ap03f1 ap03f1_.
		ap03f2 ap03f2_.
		ap03f3 ap03f3_.
		ap03f4 ap03f4_.
		ap03f5 ap03f5_.
		ap04 ap04_.
		ap04a ap04a_.
		ap04b ap04b_.
		ap05 ap05_.
		ap05a ap05a_.
		ap06 ap06_.
		ap07 ap07_.
		ap07a ap07a_.
		ap07b ap07b_.
		ap07c ap07c_.
		ap07d ap07d_.
		ap07e ap07e_.
		ap07f ap07f_.
		ap07g ap07g_.
		ap08 ap08_.
		ap09 ap09_.
		ap09a ap09a_.
		ap09b ap09b_.
		ap09c ap09c_.
		ap09d ap09d_.
		ap10 ap10_.
		ap10al1 ap10al1_.
		ap10ar1 ap10ar1_.
		ap10al2 ap10al2_.
		ap10ar2 ap10ar2_.
		ap10al3 ap10al3_.
		ap10ar3 ap10ar3_.
		ap10al4 ap10al4_.
		ap10ar4 ap10ar4_.
		ap10al5 ap10al5_.
		ap10ar5 ap10ar5_.
		ap10al6 ap10al6_.
		ap10ar6 ap10ar6_.
		ap10al7 ap10al7_.
		ap10ar7 ap10ar7_.
		ap10al8 ap10al8_.
		ap10ar8 ap10ar8_.
		ap10al9 ap10al9_.
		ap10ar9 ap10ar9_.
		ap10al10 ap10al10_.
		ap10ar10 ap10ar10_.
		ap10al11 ap10al11_.
		ap10ar11 ap10ar11_.
		ap10al12 ap10al12_.
		ap10ar12 ap10ar12_.
		ap10al13 ap10al13_.
		ap10ar13 ap10ar13_.
		ap10al14 ap10al14_.
		ap10ar14 ap10ar14_.
		ap10al15 ap10al15_.
		ap10ar15 ap10ar15_.
		ap10al16 ap10al16_.
		ap10ar16 ap10ar16_.
		ap10al17 ap10al17_.
		ap10ar17 ap10ar17_.
		ap10al18 ap10al18_.
		ap10ar18 ap10ar18_.
		ap10al19 ap10al19_.
		ap10ar19 ap10ar19_.
		ap10b1 ap10b1_.
		ap10b2 ap10b2_.
		ap10b3 ap10b3_.
		ap11 ap11_.
		ap11ar1 ap11ar1_.
		ap11al1 ap11al1_.
		ap11ar2 ap11ar2_.
		ap11al2 ap11al2_.
		ap11ar3 ap11ar3_.
		ap11al3 ap11al3_.
		ap11ar4 ap11ar4_.
		ap11al4 ap11al4_.
		ap11ar5 ap11ar5_.
		ap11al5 ap11al5_.
		ap11ar6 ap11ar6_.
		ap11al6 ap11al6_.
		ap11ar7 ap11ar7_.
		ap11al7 ap11al7_.
		ap11ar8 ap11ar8_.
		ap11al8 ap11al8_.
		ap11ar9 ap11ar9_.
		ap11al9 ap11al9_.
		ap11ar10 ap11ar10_.
		ap11al10 ap11al10_.
		ap11ar11 ap11ar11_.
		ap11al11 ap11al11_.
		ap11ar12 ap11ar12_.
		ap11al12 ap11al12_.
		ap11ar13 ap11ar13_.
		ap11al13 ap11al13_.
		ap11ar14 ap11ar14_.
		ap11al14 ap11al14_.
		ap11ar15 ap11ar15_.
		ap11al15 ap11al15_.
		ap11ar16 ap11ar16_.
		ap11al16 ap11al16_.
		pa01 pa01_.
		pa02 pa02_.
		pa03 pa03_.
		pa04 pa04_.
		pa05 pa05_.
		pa06 pa06_.
		pa07 pa07_.
		pa08 pa08_.
		pa09 pa09_.
		pa09a pa09a_.
		pa09b pa09b_.
		pa10 pa10_.
		pa10f pa10f_.
		pa10a pa10a_.
		pa10b pa10b_.
		pa11 pa11_.
		pa11a pa11a_.
		pa11b pa11b_.
		pa12 pa12_.
		pa12a pa12a_.
		pa12b pa12b_.
		pa13 pa13_.
		pa13c1 pa13c1_.
		pa13e1 pa13e1_.
		pa13c2 pa13c2_.
		pa13e2 pa13e2_.
		pa13c3 pa13c3_.
		pa13e3 pa13e3_.
		pa13c4 pa13c4_.
		pa13e4 pa13e4_.
		pa13a pa13a_.
		pa13b pa13b_.
		pa14 pa14_.
		pa14c1 pa14c1_.
		pa14c2 pa14c2_.
		pa14c3 pa14c3_.
		pa14c4 pa14c4_.
		pa14a pa14a_.
		pa14b pa14b_.
		oact01 oact01_.
		oact01c oact01c_.
		oact02 oact02_.
		oact02c oact02c_.
		oact03 oact03_.
		oact04 oact04_.
		oact05 oact05_.
		oact06a oact06a_.
		oact06b oact06b_.
		oact06c oact06c_.
		oact06d oact06d_.
		oact06e oact06e_.
		oact06f oact06f_.
		oact06g oact06g_.
		oact06h oact06h_.
		oact06i oact06i_.
		oact06j oact06j_.
		oact06k oact06k_.
		oact06l oact06l_.
		oact06m oact06m_.
		oact06n oact06n_.
		oact06o oact06o_.
		oact06p oact06p_.
		oact06q oact06q_.
		oact07 oact07_.
		smk01 smk01_.
		smk01a smk01a_.
		smk01d smk01d_.
		smk02 smk02_.
		smk02c smk02c_.
		smk03 smk03_.
		smk03c smk03c_.
		alc01 alc01_.
		alc01a alc01a_.
		alc01b alc01b_.
		alc01c alc01c_.
		alc02 alc02_.
		alc03 alc03_.
		psy01 psy01_.
		psy02 psy02_.
		psy02a psy02a_.
		psy02b psy02b_.
		psy03 psy03_.
		psy03a psy03a_.
		psy03b psy03b_.
		psy04 psy04_.
		psy04a psy04a_.
		pss02 pss02_.
		pss03 pss03_.
		pss07 pss07_.
		pss06 pss06_.
		pss11 pss11_.
		pss14 pss14_.
		cmq01 cmq01_.
		cmq02 cmq02_.
		cmq03 cmq03_.
		cmq04 cmq04_.
		cmq05 cmq05_.
		sf01 sf01_.
		sf02 sf02_.
		sf03 sf03_.
		sf04 sf04_.
		sf05 sf05_.
		sf06 sf06_.
		sf07 sf07_.
		sf08 sf08_.
		sf09 sf09_.
		sf10 sf10_.
		sf11 sf11_.
		sf12 sf12_.
	;
RUN;


DATA blsa_general_interview;
    SET WORK.IMPORT;
RUN;

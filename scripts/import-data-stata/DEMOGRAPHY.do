clear
import delimited "../data-csv/DEMOGRAPHY.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable event_name "Visit Number"

label variable crf_version_dem "CRF Version"

label variable brthdat "Date of Birth"

// Generate 'date version' of the 'brthdat' variable
gen _brthdat = date(brthdat, "YMD")
format _brthdat %td

label variable age_dem "Age"

label variable ageu "Age Units"
label define _esbv0f1LdC 1 "Years" 2 " Months" 3 " Weeks" 4 " Days"
label values ageu _esbv0f1LdC

label variable visdat "Date of visit:"

// Generate 'date version' of the 'visdat' variable
gen _visdat = date(visdat, "YMD")
format _visdat %td

label variable sex "Sex"

label variable ethnic "Ethnicity of Subject"
label define _iw15DO0ny3 0 "Not reported" 1 "Not Hispanic or Latino" 2 "Hispanic or Latino"
label values ethnic _iw15DO0ny3

label variable crf_parent_name_dem "CRF Parent Name"

label variable item_group_repeat_dem "Item Group Repeate"

label variable study_name_dem "Study Name"

label variable race_6 "Race of Subject :  White (Checkbox Indicator)"

label variable race_1 "Race of Subject : Asian or Pacific Islander (Checkbox Indicator)"

label variable race_5 "Race of Subject :  Hispanic (Checkbox Indicator)"

label variable race_2 "Race of Subject :  American Indian or Alaskan Native (Checkbox Indicator)"

label variable race_3 "Race of Subject :  Black or African American (Checkbox Indicator)"

label variable race_7 "Race of Subject :  More than one race (Checkbox Indicator)"

label variable race_9 "Race of Subject :  Asian (Checkbox Indicator)"


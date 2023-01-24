clear
import delimited "../data-csv/blsa_der_demographics.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable brthyr "Year of Birth"

label variable brthmo "Month of Birth"

label variable age "Age at time of visit (years)"

label variable baselineage "Age at baseline visit (years)"

label variable sex "Sex"

label variable male "Male Indicator"
label define _LE12h08KHRcl 0 "Female" 1 "Male"
label values male _LE12h08KHRcl

label variable race3cat "Race Category (White, Black, Other)"
label define _m5vI32609HG6 1 "White" 2 "Black or African American" 3 "Other"
label values race3cat _m5vI32609HG6

label variable black "Black Race Indicator"
label define _HLhks73TZHTD 0 "NonBlack" 1 "Black"
label values black _HLhks73TZHTD

label variable ethnicity "Spanish Hispanic or Latino Ethnicity"
label define _h7ddIRwAr5au 0 "No" 1 "Yes"
label values ethnicity _h7ddIRwAr5au

label variable maritalstatus "Marital Status"
label define _VdyJ62Ao699N 1 "Married" 2 "Living with a partner" 3 "Separated" 4 "Divorced" 5 "Widowed" 6 "Never married"
label values maritalstatus _VdyJ62Ao699N

label variable householdsize "Size of Household"
label define _SRuPC2R33hi4 0 "Lives alone" 1 "1 other" 2 "2 others" 3 "3 or more others" 7 "Refused" 8 "Don't know"
label values householdsize _SRuPC2R33hi4

label variable housingtype "Type of Housing"
label define _ZTvT1ue2xC4f 1 "Single family home" 2 "Co-op, condominium, apartment" 3 "Continuing care community" 4 "Assisted living" 5 "Long term care facility" 7 "refused" 8 "Don't know"
label values housingtype _ZTvT1ue2xC4f

label variable borninus "Born in the United States"
label define _VCD1DlJ2pweh 0 "No" 1 "Yes"
label values borninus _VCD1DlJ2pweh

label variable englishfirstlang "English was First Language"
label define _Fe7lY34Xj05V 0 "No" 1 "Yes"
label values englishfirstlang _Fe7lY34Xj05V

label variable education "Years of Education"
label define _Xw74aUOacwK6 0 "no formal schooling" 12 "high school (or GED equivalent)" 14 "two year college / Associate's degree" 16 "four year college" 18 "Master's degree" 19 "Law degree" 20 "MD or PhD" 21 "multiple graduate degrees" 77 "refused" 88 "unknown"
label values education _Xw74aUOacwK6

label variable educ3cat "Education Category (<HS, HS, HS+)"
label define _A55uwt7pkIIt 0 "<High School" 1 "High School/GED" 2 ">High School"
label values educ3cat _A55uwt7pkIIt

label variable educ5cat "Education Category (5-Level)"
label define _TnmnAB9MN0TU 0 "Less than high school" 1 "High school" 2 "Some college" 3 "College grad" 4 "Post college"
label values educ5cat _TnmnAB9MN0TU

label variable smkstat "Current smoking status (3-level)"
label define _K9KhtD1w9f4m 0 "Never smoked" 1 "Former Smoker" 2 "Current Smoker"
label values smkstat _K9KhtD1w9f4m

label variable smokehx "Smoking history (4-level)"
label define _i03wMlL7OQmU 0 "Never smoked" 1 "Quit 10+ yrs ago" 2 "Quit <10 yrs ago" 3 "Current smoker"
label values smokehx _i03wMlL7OQmU

label variable smoker "Current smoking status (2-level)"
label define _B485uu05yqaO 0 "Non-Smoker" 1 "Smoker"
label values smoker _B485uu05yqaO


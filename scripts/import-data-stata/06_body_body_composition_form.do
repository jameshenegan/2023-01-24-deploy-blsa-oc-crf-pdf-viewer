clear
import delimited "../data-csv/06_body_body_composition_form.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable body_ht "Standing Height (cm)"

label variable body_wt "Weight (kg)"

label variable body_fat_pct "Fat (%)"

label variable body_fat_mass "Fat Mass (kg)"

label variable body_ffm "Fat-Free Mass, FFM (kg)"

label variable body_tbw "Total Body Water, TBW (kg)"

label variable body_tbw_pct "Total Body Water, TBW (%)"

label variable body_bmr_kj "Basal Metabolic Rate, BMR (kJ)"

label variable body_bmr_kcal "Basal Metabolic Rate, BMR (kcal)"

label variable body_bmi_tanita "Body Mass Index, BMI (kg/m2) (from TANITA)"

label variable body_bmi "Body Mass Index, BMI (kg/m2)"

label variable body_resistance "Resistance/Impedance, R, at 50 kHz frequency (ohm)"

label variable body_reactance "Reactance, X, at 50 kHz frequency (ohm)"

label variable body_tanita_issues "Did any issues arise which might cause inaccurate Tanita measurements (excessive calluses on the soles of the feet, etc.)"
label define _body_tanita_issues 0 "No" 1 "Yes"
label values body_tanita_issues _body_tanita_issues


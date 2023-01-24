clear
import delimited "../data-csv/blsa_der_anthropometry.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable weight "Weight (kg)"

label variable weightloss "Weight Loss Since Previous Visit (kg)"

label variable intweightloss "Intentional Weight Loss Since Previous Visit (kg)"
label define _PFX3Bt6SG0y2 0 "No" 1 "Yes"
label values intweightloss _PFX3Bt6SG0y2

label variable height "Height (cm)"

label variable bmi "Body Mass Index (kg/m^2)"

label variable upperwaistcirc "Upper Waist Circumference (cm)"

label variable lowerwaistcirc "Lower Waist Circumference (cm)"

label variable waistdiam "Waist Diameter (cm)"

label variable waistdepth "Waist Depth (cm)"

label variable bodytemp "Oral Body Temperature (Fahrenheit)"

label variable hipcirc "Hip (buttocks) Circumference (cm)"

label variable tibialength "Right Tibia Length (cm)"

label variable bicepskinfold "Right Bicep Skinfold Thickness (cm)"

label variable respirations "Respirations (breaths/min)"

label variable pulse "Pulse (beats/min)"

label variable waisthip "Waist-to-Hip Ratio"

label variable waistheight "Waist-to-Height Ratio"

label variable obesity4cat "CDC Obesity Classification (4-category)"
label define _wT7G1AJ11DS4 1 "Underweight" 2 "Normal" 3 "Overweight" 4 "Obese"
label values obesity4cat _wT7G1AJ11DS4

label variable obesity6cat "CDC Obesity Classification (6-category)"
label define _I9Ti7Icb4X6e 1 "Underweight" 2 "Normal" 3 "Overweight" 4 "Class 1 Obesity" 5 "Class 2 Obesity" 6 "Class 3 Obesity"
label values obesity6cat _I9Ti7Icb4X6e


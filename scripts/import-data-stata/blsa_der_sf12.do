clear
import delimited "../data-csv/blsa_der_sf12.csv", bindquote(strict)

label variable idno "BLSA ID"

label variable visit "Visit Number"

label variable nmisssf "Number of missing components in SF12"

label variable sf12_pcscore "Physical health composite score"

label variable sf12_mcscore "Mental health composite score"


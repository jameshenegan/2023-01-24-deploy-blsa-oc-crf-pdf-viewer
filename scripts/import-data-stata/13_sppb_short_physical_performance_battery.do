clear
import delimited "../data-csv/13_sppb_short_physical_performance_battery.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable sppb_scs_code "Single Chair Stand"
label define _sppb_scs_code 2 "Stands without using arms" 1 "Rises using arms to push up" 0 "Attempted but unable to stand" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_scs_code _sppb_scs_code

label variable sppb_rcs_code "Repeated Chair Stands"
label define _sppb_rcs_code 5 "Completed 5 stands {sppb_rcs}" 4 "Completed 4 stands" 3 "Completed 3 stands" 2 "Completed 2 stands" 1 "Completed 1 stand" 0 "Attempted / Unable to complete any stands" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_rcs_code _sppb_rcs_code

label variable sppb_rcs "Enter time for 5 stands"

label variable sppb_sbss_code "Side-by-Side Stand"
label define _sppb_sbss_code 2 "Able to hold position for 10 seconds" 1 "Able to hold position for at least 1 but less than 10 seconds {sppb_sbss}" 0 "Unable to hold position for 1 second" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_sbss_code _sppb_sbss_code

label variable sppb_sbss "Side-by-Side Stand Time"

label variable sppb_sts_code "Semi Tandem Stand"
label define _sppb_sts_code 2 "Able to hold position for 10 seconds" 1 "Able to hold position for at least 1 but less than 10 seconds {sppb_sts}" 0 "Unable to hold position for 1 second" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_sts_code _sppb_sts_code

label variable sppb_sts "Semi-Tandem Stand Time"

label variable sppb_ts1_code "Tandem Stand Trial 1"
label define _sppb_ts1_code 2 "Able to hold position for 10 seconds" 1 "Able to hold position for at least 1 but less than 10 seconds {sppb_ts1}" 0 "Unable to hold position for 1 second" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_ts1_code _sppb_ts1_code

label variable sppb_ts1 "Tandem Stand Trial 1 Time"

label variable sppb_ts2_code "Tandem Stand Trial 2"
label define _sppb_ts2_code 2 "Able to hold position for 10 seconds" 1 "Able to hold position for at least 1 but less than 10 seconds {sppb_ts2}" 0 "Unable to hold position for 1 second" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_ts2_code _sppb_ts2_code

label variable sppb_ts2 "Tandem Stand Trial 2 Time"

label variable sppb_sw1_code "Normal Pace Walk Trial 1"
label define _sppb_sw1_code 1 "Completed without walking aid {sppb_swu1}" 2 "Completed with walking aid {sppb_swa1}" 0 "Attempted but unable to complete" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_sw1_code _sppb_sw1_code

label variable sppb_swu1 "Normal Pace Walk Trial 2 Time (Without Walking Aid)"

label variable sppb_swa1 "Normal Pace Walk Trial 2 Time (With Walking Aid)"

label variable sppb_sw2_code "Normal Pace Walk Trial 2"
label define _sppb_sw2_code 1 "Completed without walking aid {sppb_swu2}" 2 "Completed with walking aid {sppb_swa2}" 0 "Attempted but unable to complete" 777 "Refused/Unable to attempt due to poor physical function  (weak" 999 "Refused due to a reason unrelated to physical function  (broken leg"
label values sppb_sw2_code _sppb_sw2_code

label variable sppb_swu2 "Normal Pace Walk Trial 2 Time (Without Walking Aid)"

label variable sppb_swa2 "Normal Pace Walk Trial 2 Time (With Walking Aid)"


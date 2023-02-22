clear
import delimited "../data-csv/20_adl_activities_of_daily_living.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable adl_transfer "Because of a health or physical problem, do you have any difficulty getting in and out of bed or chairs?"
label define _adl_transfer 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_transfer _adl_transfer

label variable adl_transfer_hard "How much difficulty do you have getting in and out of bed or chairs?"
label define _adl_transfer_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_transfer_hard _adl_transfer_hard

label variable adl_transfer_help "Do you need special equipment or help from another person for getting in and out of bed or chairs?"
label define _adl_transfer_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_transfer_help _adl_transfer_help

label variable adl_bathe "Because of a health or physical problem, do you have any difficulty bathing or showering?"
label define _adl_bathe 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_bathe _adl_bathe

label variable adl_bathe_hard "How much difficulty do you have bathing or showering?"
label define _adl_bathe_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_bathe_hard _adl_bathe_hard

label variable adl_bathe_help "Do you need special equipment or help from another person for bathing or showering?"
label define _adl_bathe_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_bathe_help _adl_bathe_help

label variable adl_dress "Because of a health or physical problem, do you have any difficulty dressing?"
label define _adl_dress 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_dress _adl_dress

label variable adl_dress_hard "How much difficulty do you have dressing?"
label define _adl_dress_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_dress_hard _adl_dress_hard

label variable adl_dress_help "Do you need special equipment or help from another person for dressing?"
label define _adl_dress_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_dress_help _adl_dress_help

label variable adl_eat "Because of a health or physical problem, do you have any difficulty eating? (holding a fork, cutting your food, or drinking from a glass)"
label define _adl_eat 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_eat _adl_eat

label variable adl_eat_hard "How much difficulty do you have eating?"
label define _adl_eat_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_eat_hard _adl_eat_hard

label variable adl_eat_help "Do you need special equipment or help from another person for eating?"
label define _adl_eat_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_eat_help _adl_eat_help

label variable adl_toilet "Because of a health or physical problem, do you have any difficulty using the toilet? (including getting to the toilet)"
label define _adl_toilet 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_toilet _adl_toilet

label variable adl_toilet_hard "How much difficulty do you have using the toilet?"
label define _adl_toilet_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_toilet_hard _adl_toilet_hard

label variable adl_toilet_help "Do you need special equipment or help from another person for using or getting to the toilet?"
label define _adl_toilet_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_toilet_help _adl_toilet_help

label variable adl_walk "Because of a health or physical problem, do you have any difficulty walking across a small room?"
label define _adl_walk 0 "No" 1 "Yes" 888 "Don't  Know" 999 "Refused"
label values adl_walk _adl_walk

label variable adl_walk_hard "How much difficulty do you have walking across a small room?"
label define _adl_walk_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 888 "Don't know" 999 "Refused"
label values adl_walk_hard _adl_walk_hard

label variable adl_walk_help "Do you need special equipment or help from another person for walking across a small room?"
label define _adl_walk_help 0 "No" 1 "Yes" 888 "Don't know" 999 "Refused"
label values adl_walk_help _adl_walk_help

label variable adl_lthouse "Because of a health or physical problem, do you have any difficulty doing light housework?   (doing dishes, straightening up or light cleaning by yourself)"
label define _adl_lthouse 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_lthouse _adl_lthouse

label variable adl_lthouse_hard "How much difficulty do you have doing light housework?"
label define _adl_lthouse_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_lthouse_hard _adl_lthouse_hard

label variable adl_hvyhouse "Because of a health or physical problem, do you have any difficulty doing heavy housework?   (vacuuming and washing windows, walls, or floors)"
label define _adl_hvyhouse 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_hvyhouse _adl_hvyhouse

label variable adl_hvyhouse_hard "How much difficulty do you have doing heavy housework?"
label define _adl_hvyhouse_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_hvyhouse_hard _adl_hvyhouse_hard

label variable adl_mealprep "Because of a health or physical problem, do you have any difficulty preparing your own meals by yourself?"
label define _adl_mealprep 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_mealprep _adl_mealprep

label variable adl_mealprep_hard "How much difficulty do you have preparing your own meals?"
label define _adl_mealprep_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_mealprep_hard _adl_mealprep_hard

label variable adl_shop "Because of a health or physical problem, do you have any difficulty shopping for personal items by yourself?   (toiletries, razor, toothpaste, toothbrush, deodorant, medicine)"
label define _adl_shop 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_shop _adl_shop

label variable adl_shop_hard "How much difficulty do you have shopping for personal items?"
label define _adl_shop_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_shop_hard _adl_shop_hard

label variable adl_phone "Because of a health or physical problem, do you have any difficulty using the telephone by yourself?"
label define _adl_phone 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_phone _adl_phone

label variable adl_phone_hard "How much difficulty do you have using the telephone?"
label define _adl_phone_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_phone_hard _adl_phone_hard

label variable adl_meds "Because of a health or physical problem, do you have any difficulty taking medications by yourself?"
label define _adl_meds 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_meds _adl_meds

label variable adl_meds_hard "How much difficulty do you have taking medications?"
label define _adl_meds_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_meds_hard _adl_meds_hard

label variable adl_money "Because of a health or physical problem, do you have any difficulty managing your money without help from another person?   (paying bills or keeping a bank account by yourself)"
label define _adl_money 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_money _adl_money

label variable adl_money_hard "How much difficulty do you have managing your money?"
label define _adl_money_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 4 "Don't do for health related reasons" 5 "Don't do for non health related reasons" 888 "Don't know" 999 "Refused"
label values adl_money_hard _adl_money_hard

label variable adl_drive "Because of a health or physical problem, do you have any difficulty driving?"
label define _adl_drive 0 "No" 1 "Yes" 888 "Don't  Know / Don't Do" 999 "Refused"
label values adl_drive _adl_drive

label variable adl_drive_hard "How much difficulty do you have driving?"
label define _adl_drive_hard 1 "A little difficulty" 2 "Some difficulty" 3 "A lot of difficulty" 888 "Don't know" 999 "Refused"
label values adl_drive_hard _adl_drive_hard

label variable adl_drive_rsn___1 "Never drove (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___2 "No car (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___3 "Vision (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___4 "Health (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___5 "Lost license (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___6 "Family/Doctor concerns (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___7 "Other (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___888 "Don't know (What are the primary reasons you do not drive?)"

label variable adl_drive_rsn___999 "Refused (What are the primary reasons you do not drive?)"


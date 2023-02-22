clear
import delimited "../data-csv/10_ncbs_neurocognitive_battery_summary.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cfa_score "Animal Naming Score (Number of animals named in one minute)"

label variable cfa_score_w "Animal Naming Score (Number of animals named in one minute)"

label variable ravl1_total1 "RAVLT-Immediate Trial 1 Total, 0-15(Number of words correctly recalled)"

label variable ravl1_total2 "RAVLT-Immediate Trial 2 Total, 0-15(Number of words correctly recalled)"

label variable ravl1_total3 "RAVLT-Immediate Trial 3 Total, 0-15(Number of words correctly recalled)"

label variable ravl1_total4 "RAVLT-Immediate Trial 4 Total, 0-15(Number of words correctly recalled)"

label variable ravl1_total5 "RAVLT-Immediate Trial 5 Total, 0-15(Number of words correctly recalled)"

label variable ravl1_totallearn "RAVLT-Immediate Total Learning Over Trials 1-5, 0-75(Number of words correctly recalled)"

label variable ravl1_totallearn_w "RAVLT-Immediate Total Learning Over Trials 1-5, 0-75(Number of words correctly recalled)"

label variable ravl1_totalb "RAVLT-Immediate List B Total, 0-15(Number of words correctly recalled)"

label variable ravl1_total6 "RAVLT-Immediate Trial 6 Total, 0-15(Number of words correctly recalled)"

label variable bcfc1_score "Benson-Immediate Score, 0-17(Number of elements accurately drawn and/or placed)"

label variable bcfc1_score_w "Benson-Immediate Score, 0-17(Number of elements accurately drawn and/or placed)"

label variable ldst_score "LDST Score, 0-93(Number of correct symbols within the allowed time)"

label variable ldst_score_w "LDST Score, 0-93(Number of correct symbols within the allowed time)"

label variable cfv_score "Veggie Naming Score(Number of vegetables named in one minute)"

label variable cfv_score_w "Veggie Naming Score(Number of vegetables named in one minute)"

label variable il_letters "IL Letters Total, 0-9(Number of correct letters correctly recalled)"

label variable il_letters_w "IL Letters Total, 0-9(Number of correct letters correctly recalled)"

label variable il_ldp "IL Letter-Digit Pairs Total, 0-9(Number of correct letter-digit pairs correctly recalled)"

label variable il_ldp_w "IL Letter-Digit Pairs Total, 0-9(Number of correct letter-digit pairs correctly recalled)"

label variable nsb_correct "NSB Total Correct, 0-16(Total correct series responses)"

label variable nsb_correct_w "NSB Total Correct, 0-16(Total correct series responses)"

label variable nsb_length "NSB Longest Correct Pair, 0-8(Length of longest correct pair)"

label variable nsb_length_w "NSB Longest Correct Pair, 0-8(Length of longest correct pair)"

label variable nsb_length_series "NSB Longest Correct Trial, 0-8(Length of longest correct series: NACC scoring)"

label variable nsb_length_series_w "NSB Longest Correct Trial, 0-8(Length of longest correct series: NACC scoring)"

label variable trailsa_errors "Trails A Errors of Commission Total, 0-5(Total number of connections in incorrect sequence)"

label variable trailsa_secs_w "Trails A Completion Time, 0-240(Time to complete drawing in seconds)"

label variable negln_trailsa_secs "-ln(trailsa_secs)"

label variable negln_trailsa_secs_w "-ln(trailsa_secs)"

label variable trailsb_errors "Trails B Errors of Commission Total, 0-5(Total number of connections in incorrect sequence)"

label variable trailsb_secs_w "Trails B Completion Time, 0-300(Time to complete drawing in seconds)"

label variable negln_trailsb_secs "-ln(trailsb_secs)"

label variable negln_trailsb_secs_w "-ln(trailsb_secs)"

label variable bcfc2_score "Benson-Delayed Score, 0-17(Number of elements accurately drawn and/or placed)"

label variable bcfc2_score_w "Benson-Delayed Score, 0-17(Number of elements accurately drawn and/or placed)"

label variable bcfc2_recognition "Benson-Delayed Recognition Correct"

label variable ravl2_score "RAVLT-Delayed Score, 0-15(Number of words correctly recalled)"

label variable ravl2_score_w "RAVLT-Delayed Score, 0-15(Number of words correctly recalled)"

label variable ravl3_identified "RAVLT-Recognition Words Identified Total, 0-15(Total number of words correctly identified)"

label variable ravl3_identified_w "RAVLT-Recognition Words Identified Total, 0-15(Total number of words correctly identified)"

label variable ravl3_falsepos "RAVLT-Recognition False Positives Total, 0-15(Number of incorrect responses)"

label variable ravl3_falsepos_w "RAVLT-Recognition False Positives Total, 0-15(Number of incorrect responses)"

label variable ravl3_responses "RAVLT-Recognition Words Circled Total, 0-30(Total number of words circled)"

label variable ravl3_responses_w "RAVLT-Recognition Words Circled Total, 0-30(Total number of words circled)"

label variable ravl3_rcgcorrtotal "RAVLT-Recognition Total Recognition Corrected for 'Guessing'"

label variable ravl3_rcgcorrtotal_w "RAVLT-Recognition Total Recognition Corrected for 'Guessing'"

label variable craft1_vbtm "Craft 21-Immediate Verbatim Total, 0-44(Total story units recalled)"

label variable craft1_vbtm_w "Craft 21-Immediate Verbatim Total, 0-44(Total story units recalled)"

label variable craft1_para "Craft 21-Immediate Paraphrase Total, 0-25(Total story units recalled)"

label variable craft1_para_w "Craft 21-Immediate Paraphrase Total, 0-25(Total story units recalled)"

label variable mint_total_wocue "MINT Uncued Total, 0-32(Total correct without a cue)"

label variable mint_total_wocue_w "MINT Uncued Total, 0-32(Total correct without a cue)"

label variable mint_total_cue "MINT Cued Total, 0-32(Total correct with a semantic cue given)"

label variable mint_total_cue_w "MINT Cued Total, 0-32(Total correct with a semantic cue given)"

label variable mint_total "MINT Score, 0-32(Total correct with and without a semantic cue)"

label variable mint_total_w "MINT Score, 0-32(Total correct with and without a semantic cue)"

label variable vff_total "Verbal Fluency Letter F Correct Total(Number of correct F-words generated in 1 minute)"

label variable vff_total_w "Verbal Fluency Letter F Correct Total(Number of correct F-words generated in 1 minute)"

label variable vfl_total "Verbal Fluency Letter L Correct Total(Number of correct L-words generated in 1 minute)"

label variable vfl_total_w "Verbal Fluency Letter L Correct Total(Number of correct L-words generated in 1 minute)"

label variable wrat4_lettertotal "WRAT4 Letter Total, 0-15(Number of letters correctly identified)"

label variable wrat4_lettertotal_w "WRAT4 Letter Total, 0-15(Number of letters correctly identified)"

label variable wrat4_wordtotal "WRAT4 Word Total, 0-55(Number of words correctly identified)"

label variable wrat4_wordtotal_w "WRAT4 Word Total, 0-55(Number of words correctly identified)"

label variable wrat4_total "WRAT4 Total, 0-70(Number of letters and words correctly identified)"

label variable wrat4_total_w "WRAT4 Total, 0-70(Number of letters and words correctly identified)"

label variable craft2_vbtm "Craft 21-Delayed Verbatim Total, 0-44(Total story units recalled)"

label variable craft2_vbtm_w "Craft 21-Delayed Verbatim Total, 0-44(Total story units recalled)"

label variable craft2_para "Craft 21-Delayed Paraphrase Total, 0-25(Total story units recalled)"

label variable craft2_para_w "Craft 21-Delayed Paraphrase Total, 0-25(Total story units recalled)"

label variable craft2_reminder "Craft 21-Delayed Reminder Provided"
label define _craft2_reminder 1 "Yes" 0 "No"
label values craft2_reminder _craft2_reminder

label variable ncbs_infl___0 "No (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___1 "Hearing Loss (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___2 "Vision Problems (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___3 "Tremor (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___4 "Arthritis in the Hands (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___5 "Sedation (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___6 "Poor Lighting (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___7 "Background Noise (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___8 "Interruptions During the Testing Session (Was there anything that you feel may have substantially influenced the test results for this participant?)"

label variable ncbs_infl___99 "Other (Was there anything that you feel may have substantially influenced the test results for this participant?)"


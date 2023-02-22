clear
import delimited "../data-csv/40_ncbn_neurocognitive_battery_norms.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable z_trailsa_time "Trails A instrument z-score"

label variable z_trailsb_time "Trails B instrument z-score"

label variable z_ldst_score "LDST instrument z-score"

label variable z_cfa_score "Animal Naming instrument z-score"

label variable z_cfv_score "Vegetable Naming instrument z-score"

label variable z_mint_total "MINT instrument z-score"

label variable z_vff_total "Verbal Fluency Letter F instrument z-score"

label variable z_vfl_total "Verbal Fluency Letter L instrument z-score"

label variable z_ravl1_totallearn "AVLT-Immediate instrument z-score"

label variable z_il_letters "Incidental Learning (Letters) instrument z-score"

label variable z_il_ldp "Incidental Learning (Letter-Digit Pairs) instrument z-score"

label variable z_nsb_correct "Number Span Backwards instrument z-score"

label variable z_ravl2_score "AVLT-Delayed instrument z-score"

label variable z_ravl3_rcgcorrtotal "AVLT-Recognition instrument z-score"

label variable z_craft1_vbtm "Craft 21-Immediate (Verbatim) instrument z-score"

label variable z_craft1_para "Craft 21-Immediate (Paraphrase) instrument z-score"

label variable z_craft2_vbtm "Craft 21-Delayed (Verbatim) instrument z-score"

label variable z_craft2_para "Craft 21-Delayed (Paraphrase) instrument z-score"

label variable z_bcfc2_score "Benson-Delayed instrument z-score"

label variable z_bcfc1_score "Benson-Immediate instrument z-score"

label variable z_efdom "Executive functioning domain z-score"

label variable ef3cat "Executive functioning domain classification"

label variable ef2cat "Executive functioning domain fail"

label variable z_langdom "Language domain z-score"

label variable lang3cat "Language domain classification"

label variable lang2cat "Language domain fail"

label variable z_memdom "Memory domain z-score"

label variable mem3cat "Memory domain classification"

label variable mem2cat "Memory domain fail"

label variable z_vsdom "Visuospatial domain z-score"

label variable vs3cat "Visuospatial domain classification"

label variable vs2cat "Visuospatial domain fail"

label variable cog3cat "Overall classification"


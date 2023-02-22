clear
import delimited "../data-csv/19_mhf_medical_history_form.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable mhf_htn_age "At what age (years) were you first told you had high blood pressure or hypertension?"

label variable mhf_angina_age "At what age (years) were you first told you had angina?"

label variable mhf_mi_age "At what age (years) were you first told you had heart attack?"

label variable mhf_hf_age "At what age (years) were you first told you had heart failure or congestive heart failure?"

label variable mhf_afib___0 "None (Atrial Fibrillation)"

label variable mhf_afib___1 "Me (Atrial Fibrillation)"

label variable mhf_afib___2 "Father (Atrial Fibrillation)"

label variable mhf_afib___3 "Mother (Atrial Fibrillation)"

label variable mhf_afib___4 "Brother(s) (Atrial Fibrillation)"

label variable mhf_afib___5 "Sister(s) (Atrial Fibrillation)"

label variable mhf_afib___6 "Child(ren) (Atrial Fibrillation)"

label variable mhf_arrhythmia___0 "None (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___1 "Me (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___2 "Father (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___3 "Mother (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___4 "Brother(s) (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___5 "Sister(s) (Abnormal heart rhythm / arrhythmia)"

label variable mhf_arrhythmia___6 "Child(ren) (Abnormal heart rhythm / arrhythmia)"

label variable mhf_other_heart___0 "None (Other heart problems)"

label variable mhf_other_heart___1 "Me (Other heart problems)"

label variable mhf_other_heart___2 "Father (Other heart problems)"

label variable mhf_other_heart___3 "Mother (Other heart problems)"

label variable mhf_other_heart___4 "Brother(s) (Other heart problems)"

label variable mhf_other_heart___5 "Sister(s) (Other heart problems)"

label variable mhf_other_heart___6 "Child(ren) (Other heart problems)"

label variable mhf_afib_yes "At what age (years) were you first told you had atrial fibrillation?"

label variable mhf_abnormal_heart_rtm_age "At what age (years) were you first told you had abnormal heart rhythm?"

label variable mhf_other_heart_details "Details: What other heart problems do you have?"

label variable mhf_pad___0 "None (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___1 "Me (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___2 "Father (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___3 "Mother (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___4 "Brother(s) (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___5 "Sister(s) (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_pad___6 "Child(ren) (Peripheral arterial disease or PAD (problems with circulation, claudication, or blocked arteries to the legs))"

label variable mhf_aneurysm___0 "None (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___1 "Me (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___2 "Father (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___3 "Mother (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___4 "Brother(s) (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___5 "Sister(s) (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_aneurysm___6 "Child(ren) (Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta)"

label variable mhf_bypass_surgery_heart___0 "None (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___1 "Me (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___2 "Father (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___3 "Mother (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___4 "Brother(s) (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___5 "Sister(s) (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_heart___6 "Child(ren) (Bypass surgery or angioplasty (balloon) on coronary (heart) arteries)"

label variable mhf_bypass_surgery_leg___0 "None (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___1 "Me (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___2 "Father (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___3 "Mother (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___4 "Brother(s) (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___5 "Sister(s) (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_bypass_surgery_leg___6 "Child(ren) (Bypass surgery or angioplasty (balloon) on leg or femoral arteries)"

label variable mhf_carotid_endarc___0 "None (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___1 "Me (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___2 "Father (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___3 "Mother (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___4 "Brother(s) (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___5 "Sister(s) (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_carotid_endarc___6 "Child(ren) (Carotid endarterectomy (surgery on neck arteries))"

label variable mhf_pad_age "At what age (years) were you first told you had a Peripheral arterial disease or PAD ?"

label variable mhf_aneurysm_age "At what age (years) were you first told you had a Aortic aneurysm, abdominal aortic aneurysm (AAA), or ballooning of the aorta ?"

label variable mhf_bypass_surgery_heart_age "At what age (years) were you first told you had a Bypass surgery or angioplasty (balloon) on coronary (heart) arteries ?"

label variable mhf_bypass_surgery_leg_age "At what age (years) were you first told you had a Bypass surgery or angioplasty (balloon) on leg or femoral arteries?"

label variable mhf_carotid_endarc_age "At what age (years) were you first told you had a Carotid endarterectomy?"

label variable mhf_varicose_veins___0 "None (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___1 "Me (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___2 "Father (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___3 "Mother (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___4 "Brother(s) (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___5 "Sister(s) (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_varicose_veins___6 "Child(ren) (Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency)"

label variable mhf_blood_cot___0 "None (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___1 "Me (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___2 "Father (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___3 "Mother (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___4 "Brother(s) (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___5 "Sister(s) (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_blood_cot___6 "Child(ren) (Blood clot in leg vein or lung (requiring blood thinning medicine))"

label variable mhf_hemophilia___0 "None (Hemophilia)"

label variable mhf_hemophilia___1 "Me (Hemophilia)"

label variable mhf_hemophilia___2 "Father (Hemophilia)"

label variable mhf_hemophilia___3 "Mother (Hemophilia)"

label variable mhf_hemophilia___4 "Brother(s) (Hemophilia)"

label variable mhf_hemophilia___5 "Sister(s) (Hemophilia)"

label variable mhf_hemophilia___6 "Child(ren) (Hemophilia)"

label variable mhf_varicose_veins_age "At what age (years) were you first told you had a Varicose veins, damage to lower leg veins, phlebitis, or venous insufficiency?"

label variable mhf_blood_cot_age "At what age (years) were you first told you had a Blood clot in leg vein or lung ?"

label variable mhf_blood_thin_age "At what age (years) were you first told you had a Hemophilia?"

label variable mhf_diabetes___0 "None (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___1 "Me (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___2 "Father (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___3 "Mother (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___4 "Brother(s) (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___5 "Sister(s) (Diabetes (high sugar in blood or urine))"

label variable mhf_diabetes___6 "Child(ren) (Diabetes (high sugar in blood or urine))"

label variable mhf_hchol___0 "None (High cholesterol)"

label variable mhf_hchol___1 "Me (High cholesterol)"

label variable mhf_hchol___2 "Father (High cholesterol)"

label variable mhf_hchol___3 "Mother (High cholesterol)"

label variable mhf_hchol___4 "Brother(s) (High cholesterol)"

label variable mhf_hchol___5 "Sister(s) (High cholesterol)"

label variable mhf_hchol___6 "Child(ren) (High cholesterol)"

label variable mhf_kidney_prob___0 "None (Kidney problems)"

label variable mhf_kidney_prob___1 "Me (Kidney problems)"

label variable mhf_kidney_prob___2 "Father (Kidney problems)"

label variable mhf_kidney_prob___3 "Mother (Kidney problems)"

label variable mhf_kidney_prob___4 "Brother(s) (Kidney problems)"

label variable mhf_kidney_prob___5 "Sister(s) (Kidney problems)"

label variable mhf_kidney_prob___6 "Child(ren) (Kidney problems)"

label variable mhf_cv_diabetes_age "At what age (years) were you first told you had a diabetes?"

label variable mhf_cv_high_chol_age "At what age (years) were you first told you had a high cholesterol?"

label variable mhf_cv_kidney_prob_age "At what age (years) were you first told you had a kidney problems?"

label variable mhf_lung_chronic___0 "None (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___1 "Me (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___2 "Father (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___3 "Mother (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___4 "Brother(s) (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___5 "Sister(s) (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_chronic___6 "Child(ren) (Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD)"

label variable mhf_lung_asthma___0 "None (Asthma)"

label variable mhf_lung_asthma___1 "Me (Asthma)"

label variable mhf_lung_asthma___2 "Father (Asthma)"

label variable mhf_lung_asthma___3 "Mother (Asthma)"

label variable mhf_lung_asthma___4 "Brother(s) (Asthma)"

label variable mhf_lung_asthma___5 "Sister(s) (Asthma)"

label variable mhf_lung_asthma___6 "Child(ren) (Asthma)"

label variable mhf_lung_other___0 "None (other Lung disease)"

label variable mhf_lung_other___1 "Me (other Lung disease)"

label variable mhf_lung_other___2 "Father (other Lung disease)"

label variable mhf_lung_other___3 "Mother (other Lung disease)"

label variable mhf_lung_other___4 "Brother(s) (other Lung disease)"

label variable mhf_lung_other___5 "Sister(s) (other Lung disease)"

label variable mhf_lung_other___6 "Child(ren) (other Lung disease)"

label variable mhf_lung_chronic_age "At what age (years) were you first told you had a Chronic bronchitis, emphysema, chronic obstructive pulmonary disease, or COPD?"

label variable mhf_lung_asthma_age "At what age (years) were you first told you had a Asthma?"

label variable mhf_lung_other_age "At what age (years) were you first told you had a other lung disease?"

label variable mhf_breast_cancer___0 "None (Breast cancer)"

label variable mhf_breast_cancer___1 "Me (Breast cancer)"

label variable mhf_breast_cancer___2 "Father (Breast cancer)"

label variable mhf_breast_cancer___3 "Mother (Breast cancer)"

label variable mhf_breast_cancer___4 "Brother(s) (Breast cancer)"

label variable mhf_breast_cancer___5 "Sister(s) (Breast cancer)"

label variable mhf_breast_cancer___6 "Child(ren) (Breast cancer)"

label variable mhf_colon_cancer___0 "None (Colon cancer)"

label variable mhf_colon_cancer___1 "Me (Colon cancer)"

label variable mhf_colon_cancer___2 "Father (Colon cancer)"

label variable mhf_colon_cancer___3 "Mother (Colon cancer)"

label variable mhf_colon_cancer___4 "Brother(s) (Colon cancer)"

label variable mhf_colon_cancer___5 "Sister(s) (Colon cancer)"

label variable mhf_colon_cancer___6 "Child(ren) (Colon cancer)"

label variable mhf_blood_cancer___0 "None (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___1 "Me (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___2 "Father (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___3 "Mother (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___4 "Brother(s) (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___5 "Sister(s) (Leukemia/Lymphoma cancer)"

label variable mhf_blood_cancer___6 "Child(ren) (Leukemia/Lymphoma cancer)"

label variable mhf_lung_cancer___0 "None (Lung cancer)"

label variable mhf_lung_cancer___1 "Me (Lung cancer)"

label variable mhf_lung_cancer___2 "Father (Lung cancer)"

label variable mhf_lung_cancer___3 "Mother (Lung cancer)"

label variable mhf_lung_cancer___4 "Brother(s) (Lung cancer)"

label variable mhf_lung_cancer___5 "Sister(s) (Lung cancer)"

label variable mhf_lung_cancer___6 "Child(ren) (Lung cancer)"

label variable mhf_prostate_cancer___0 "None (Prostate cancer)"

label variable mhf_prostate_cancer___1 "Me (Prostate cancer)"

label variable mhf_prostate_cancer___2 "Father (Prostate cancer)"

label variable mhf_prostate_cancer___3 "Mother (Prostate cancer)"

label variable mhf_prostate_cancer___4 "Brother(s) (Prostate cancer)"

label variable mhf_prostate_cancer___5 "Sister(s) (Prostate cancer)"

label variable mhf_prostate_cancer___6 "Child(ren) (Prostate cancer)"

label variable mhf_cervical_cancer___0 "None (Cervical cancer)"

label variable mhf_cervical_cancer___1 "Me (Cervical cancer)"

label variable mhf_cervical_cancer___2 "Father (Cervical cancer)"

label variable mhf_cervical_cancer___3 "Mother (Cervical cancer)"

label variable mhf_cervical_cancer___4 "Brother(s) (Cervical cancer)"

label variable mhf_cervical_cancer___5 "Sister(s) (Cervical cancer)"

label variable mhf_cervical_cancer___6 "Child(ren) (Cervical cancer)"

label variable mhf_testes_cancer___0 "None (Testes/scrotum cancer)"

label variable mhf_testes_cancer___1 "Me (Testes/scrotum cancer)"

label variable mhf_testes_cancer___2 "Father (Testes/scrotum cancer)"

label variable mhf_testes_cancer___3 "Mother (Testes/scrotum cancer)"

label variable mhf_testes_cancer___4 "Brother(s) (Testes/scrotum cancer)"

label variable mhf_testes_cancer___5 "Sister(s) (Testes/scrotum cancer)"

label variable mhf_testes_cancer___6 "Child(ren) (Testes/scrotum cancer)"

label variable mhf_bone_cancer___0 "None (Bone cancer)"

label variable mhf_bone_cancer___1 "Me (Bone cancer)"

label variable mhf_bone_cancer___2 "Father (Bone cancer)"

label variable mhf_bone_cancer___3 "Mother (Bone cancer)"

label variable mhf_bone_cancer___4 "Brother(s) (Bone cancer)"

label variable mhf_bone_cancer___5 "Sister(s) (Bone cancer)"

label variable mhf_bone_cancer___6 "Child(ren) (Bone cancer)"

label variable mhf_melanoma_cancer___0 "None (Melanoma cancer)"

label variable mhf_melanoma_cancer___1 "Me (Melanoma cancer)"

label variable mhf_melanoma_cancer___2 "Father (Melanoma cancer)"

label variable mhf_melanoma_cancer___3 "Mother (Melanoma cancer)"

label variable mhf_melanoma_cancer___4 "Brother(s) (Melanoma cancer)"

label variable mhf_melanoma_cancer___5 "Sister(s) (Melanoma cancer)"

label variable mhf_melanoma_cancer___6 "Child(ren) (Melanoma cancer)"

label variable mhf_nonmelanoma_cancer___0 "None (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___1 "Me (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___2 "Father (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___3 "Mother (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___4 "Brother(s) (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___5 "Sister(s) (Non-melanoma skin cancer)"

label variable mhf_nonmelanoma_cancer___6 "Child(ren) (Non-melanoma skin cancer)"

label variable mhf_brain_cancer___0 "None (Brain cancer)"

label variable mhf_brain_cancer___1 "Me (Brain cancer)"

label variable mhf_brain_cancer___2 "Father (Brain cancer)"

label variable mhf_brain_cancer___3 "Mother (Brain cancer)"

label variable mhf_brain_cancer___4 "Brother(s) (Brain cancer)"

label variable mhf_brain_cancer___5 "Sister(s) (Brain cancer)"

label variable mhf_brain_cancer___6 "Child(ren) (Brain cancer)"

label variable mhf_stomach_cancer___0 "None (Stomach cancer)"

label variable mhf_stomach_cancer___1 "Me (Stomach cancer)"

label variable mhf_stomach_cancer___2 "Father (Stomach cancer)"

label variable mhf_stomach_cancer___3 "Mother (Stomach cancer)"

label variable mhf_stomach_cancer___4 "Brother(s) (Stomach cancer)"

label variable mhf_stomach_cancer___5 "Sister(s) (Stomach cancer)"

label variable mhf_stomach_cancer___6 "Child(ren) (Stomach cancer)"

label variable mhf_uterine_cancer___0 "None (Uterine cancer)"

label variable mhf_uterine_cancer___1 "Me (Uterine cancer)"

label variable mhf_uterine_cancer___2 "Father (Uterine cancer)"

label variable mhf_uterine_cancer___3 "Mother (Uterine cancer)"

label variable mhf_uterine_cancer___4 "Brother(s) (Uterine cancer)"

label variable mhf_uterine_cancer___5 "Sister(s) (Uterine cancer)"

label variable mhf_uterine_cancer___6 "Child(ren) (Uterine cancer)"

label variable mhf_liver_cancer___0 "None (Liver cancer)"

label variable mhf_liver_cancer___1 "Me (Liver cancer)"

label variable mhf_liver_cancer___2 "Father (Liver cancer)"

label variable mhf_liver_cancer___3 "Mother (Liver cancer)"

label variable mhf_liver_cancer___4 "Brother(s) (Liver cancer)"

label variable mhf_liver_cancer___5 "Sister(s) (Liver cancer)"

label variable mhf_liver_cancer___6 "Child(ren) (Liver cancer)"

label variable mhf_pancreatic_cancer___0 "None (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___1 "Me (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___2 "Father (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___3 "Mother (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___4 "Brother(s) (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___5 "Sister(s) (Pancreatic cancer)"

label variable mhf_pancreatic_cancer___6 "Child(ren) (Pancreatic cancer)"

label variable mhf_other_cancer___0 "None (Other cancer)"

label variable mhf_other_cancer___1 "Me (Other cancer)"

label variable mhf_other_cancer___2 "Father (Other cancer)"

label variable mhf_other_cancer___3 "Mother (Other cancer)"

label variable mhf_other_cancer___4 "Brother(s) (Other cancer)"

label variable mhf_other_cancer___5 "Sister(s) (Other cancer)"

label variable mhf_other_cancer___6 "Child(ren) (Other cancer)"

label variable mhf_other_cancer_details "Details: What other cancer have you been diagnosed with?"

label variable mhf_lung_cancer_age "At what age (years) were you first told you had a lung cancer?"

label variable mhf_breast_cancer_age "At what age (years) were you first told you had a breast cancer?"

label variable mhf_cervical_cancer_age "At what age (years) were you first told you had a cervical cancer?"

label variable mhf_blood_lymph_cancer_age "At what age (years) were you first told you had a blood/lymph gland cancer?"

label variable mhf_testes_cancer_age "At what age (years) were you first told you had a testes/scrotum cancer?"

label variable mhf_bone_cancer_age "At what age (years) were you first told you had a bone cancer?"

label variable mhf_melanoma_cancer_age "At what age (years) were you first told you had a melanoma cancer?"

label variable mhf_non_melanoma_cancer_age "At what age (years) were you first told you had a non-melanoma cancer?"

label variable mhf_brain_cancer_age "At what age (years) were you first told you had a brain cancer?"

label variable mhf_stomach_cancer_age "At what age (years) were you first told you had a stomach cancer?"

label variable mhf_colon_cancer_age "At what age (years) were you first told you had a colon cancer?"

label variable mhf_uterine_cancer_age "At what age (years) were you first told you had a uterine cancer?"

label variable mhf_prostate_cancer_age "At what age (years) were you first told you had a prostate cancer?"

label variable mhf_liver_cancer_age "At what age (years) were you first told you had a liver cancer?"

label variable mhf_pancreatic_cancer_age "At what age (years) were you first told you had a pancreatic cancer?"

label variable mhf_inflammation___0 "None (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___1 "Me (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___2 "Father (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___3 "Mother (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___4 "Brother(s) (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___5 "Sister(s) (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_inflammation___6 "Child(ren) (Painful Inflammaton or swelling of the joints that limits activities)"

label variable mhf_rheumatoid___0 "None (Rheumatoid arthritis)"

label variable mhf_rheumatoid___1 "Me (Rheumatoid arthritis)"

label variable mhf_rheumatoid___2 "Father (Rheumatoid arthritis)"

label variable mhf_rheumatoid___3 "Mother (Rheumatoid arthritis)"

label variable mhf_rheumatoid___4 "Brother(s) (Rheumatoid arthritis)"

label variable mhf_rheumatoid___5 "Sister(s) (Rheumatoid arthritis)"

label variable mhf_rheumatoid___6 "Child(ren) (Rheumatoid arthritis)"

label variable mhf_osteoarthritis___0 "None (Osteoarthritis)"

label variable mhf_osteoarthritis___1 "Me (Osteoarthritis)"

label variable mhf_osteoarthritis___2 "Father (Osteoarthritis)"

label variable mhf_osteoarthritis___3 "Mother (Osteoarthritis)"

label variable mhf_osteoarthritis___4 "Brother(s) (Osteoarthritis)"

label variable mhf_osteoarthritis___5 "Sister(s) (Osteoarthritis)"

label variable mhf_osteoarthritis___6 "Child(ren) (Osteoarthritis)"

label variable mhf_spinal_stenosis___0 "None (Spinal stenosis)"

label variable mhf_spinal_stenosis___1 "Me (Spinal stenosis)"

label variable mhf_spinal_stenosis___2 "Father (Spinal stenosis)"

label variable mhf_spinal_stenosis___3 "Mother (Spinal stenosis)"

label variable mhf_spinal_stenosis___4 "Brother(s) (Spinal stenosis)"

label variable mhf_spinal_stenosis___5 "Sister(s) (Spinal stenosis)"

label variable mhf_spinal_stenosis___6 "Child(ren) (Spinal stenosis)"

label variable mhf_gout___0 "None (Gout)"

label variable mhf_gout___1 "Me (Gout)"

label variable mhf_gout___2 "Father (Gout)"

label variable mhf_gout___3 "Mother (Gout)"

label variable mhf_gout___4 "Brother(s) (Gout)"

label variable mhf_gout___5 "Sister(s) (Gout)"

label variable mhf_gout___6 "Child(ren) (Gout)"

label variable mhf_connective_tissue_disease___ "None (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Me (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Father (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Mother (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Brother(s) (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Sister(s) (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_connective_tissue_disease___ "Child(ren) (Connective tissue disease (rheumatoid arthritis, psoriatic arthritis, ankylosing spondylitis, lupus, ulcerative colitis, Crohn's disease, scleroderma, vasculitis, or polymyositis))"

label variable mhf_osteoporosis___0 "None (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___1 "Me (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___2 "Father (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___3 "Mother (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___4 "Brother(s) (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___5 "Sister(s) (Osteoporosis or thinning of the bones)"

label variable mhf_osteoporosis___6 "Child(ren) (Osteoporosis or thinning of the bones)"

label variable mhf_inflammation_age "At what age (years) were you first told you had a Painful Inflammation or swelling of the joints that limits activities?"

label variable mhf_rheumatoid_age "At what age (years) were you first told you had a Rheumatoid arthritis?"

label variable mhf_osteoarthritis_age "At what age (years) were you first told you had a osteoarthritis?"

label variable mhf_spinal_stenosis_age "At what age (years) were you first told you had a spinal stenosis?"

label variable mhf_gout_age "At what age (years) were you first told you had a gout?"

label variable mhf_connective_tissue_disease_ag "At what age (years) were you first told you had a connective tissue disease?"

label variable mhf_osteo_thin_bones_age "At what age (years) were you first told you had a Osteoporosis or thinning of the bones?"

label variable mhf_stroke___0 "None (Stroke)"

label variable mhf_stroke___1 "Me (Stroke)"

label variable mhf_stroke___2 "Father (Stroke)"

label variable mhf_stroke___3 "Mother (Stroke)"

label variable mhf_stroke___4 "Brother(s) (Stroke)"

label variable mhf_stroke___5 "Sister(s) (Stroke)"

label variable mhf_stroke___6 "Child(ren) (Stroke)"

label variable mhf_ministroke___0 "None (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___1 "Me (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___2 "Father (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___3 "Mother (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___4 "Brother(s) (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___5 "Sister(s) (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_ministroke___6 "Child(ren) (Mini-stroke or TIA (transient ischemic attack))"

label variable mhf_depression___0 "None (Depression)"

label variable mhf_depression___1 "Me (Depression)"

label variable mhf_depression___2 "Father (Depression)"

label variable mhf_depression___3 "Mother (Depression)"

label variable mhf_depression___4 "Brother(s) (Depression)"

label variable mhf_depression___5 "Sister(s) (Depression)"

label variable mhf_depression___6 "Child(ren) (Depression)"

label variable mhf_parksinson___0 "None (Parkinson's disease)"

label variable mhf_parksinson___1 "Me (Parkinson's disease)"

label variable mhf_parksinson___2 "Father (Parkinson's disease)"

label variable mhf_parksinson___3 "Mother (Parkinson's disease)"

label variable mhf_parksinson___4 "Brother(s) (Parkinson's disease)"

label variable mhf_parksinson___5 "Sister(s) (Parkinson's disease)"

label variable mhf_parksinson___6 "Child(ren) (Parkinson's disease)"

label variable mhf_seizure___0 "None (Seizure disorder)"

label variable mhf_seizure___1 "Me (Seizure disorder)"

label variable mhf_seizure___2 "Father (Seizure disorder)"

label variable mhf_seizure___3 "Mother (Seizure disorder)"

label variable mhf_seizure___4 "Brother(s) (Seizure disorder)"

label variable mhf_seizure___5 "Sister(s) (Seizure disorder)"

label variable mhf_seizure___6 "Child(ren) (Seizure disorder)"

label variable mhf_multiplesclerosis___0 "None (Multiple sclerosis)"

label variable mhf_multiplesclerosis___1 "Me (Multiple sclerosis)"

label variable mhf_multiplesclerosis___2 "Father (Multiple sclerosis)"

label variable mhf_multiplesclerosis___3 "Mother (Multiple sclerosis)"

label variable mhf_multiplesclerosis___4 "Brother(s) (Multiple sclerosis)"

label variable mhf_multiplesclerosis___5 "Sister(s) (Multiple sclerosis)"

label variable mhf_multiplesclerosis___6 "Child(ren) (Multiple sclerosis)"

label variable mhf_braintumor___0 "None (Brain tumor)"

label variable mhf_braintumor___1 "Me (Brain tumor)"

label variable mhf_braintumor___2 "Father (Brain tumor)"

label variable mhf_braintumor___3 "Mother (Brain tumor)"

label variable mhf_braintumor___4 "Brother(s) (Brain tumor)"

label variable mhf_braintumor___5 "Sister(s) (Brain tumor)"

label variable mhf_braintumor___6 "Child(ren) (Brain tumor)"

label variable mhf_alzheimer___0 "None (Alzheimer's Dementia)"

label variable mhf_alzheimer___1 "Me (Alzheimer's Dementia)"

label variable mhf_alzheimer___2 "Father (Alzheimer's Dementia)"

label variable mhf_alzheimer___3 "Mother (Alzheimer's Dementia)"

label variable mhf_alzheimer___4 "Brother(s) (Alzheimer's Dementia)"

label variable mhf_alzheimer___5 "Sister(s) (Alzheimer's Dementia)"

label variable mhf_alzheimer___6 "Child(ren) (Alzheimer's Dementia)"

label variable mhf_vasculardem___0 "None (Vascular Dementia)"

label variable mhf_vasculardem___1 "Me (Vascular Dementia)"

label variable mhf_vasculardem___2 "Father (Vascular Dementia)"

label variable mhf_vasculardem___3 "Mother (Vascular Dementia)"

label variable mhf_vasculardem___4 "Brother(s) (Vascular Dementia)"

label variable mhf_vasculardem___5 "Sister(s) (Vascular Dementia)"

label variable mhf_vasculardem___6 "Child(ren) (Vascular Dementia)"

label variable mhf_lewybodydem___0 "None (Lewy BODY Dementia)"

label variable mhf_lewybodydem___1 "Me (Lewy BODY Dementia)"

label variable mhf_lewybodydem___2 "Father (Lewy BODY Dementia)"

label variable mhf_lewybodydem___3 "Mother (Lewy BODY Dementia)"

label variable mhf_lewybodydem___4 "Brother(s) (Lewy BODY Dementia)"

label variable mhf_lewybodydem___5 "Sister(s) (Lewy BODY Dementia)"

label variable mhf_lewybodydem___6 "Child(ren) (Lewy BODY Dementia)"

label variable mhf_othermci___0 "None (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___1 "Me (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___2 "Father (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___3 "Mother (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___4 "Brother(s) (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___5 "Sister(s) (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_othermci___6 "Child(ren) (Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility)"

label variable mhf_migraineheadches___0 "None (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___1 "Me (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___2 "Father (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___3 "Mother (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___4 "Brother(s) (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___5 "Sister(s) (Migraine headaches (with or without an aura))"

label variable mhf_migraineheadches___6 "Child(ren) (Migraine headaches (with or without an aura))"

label variable mhf_epilepsy___0 "None (Epilepsy)"

label variable mhf_epilepsy___1 "Me (Epilepsy)"

label variable mhf_epilepsy___2 "Father (Epilepsy)"

label variable mhf_epilepsy___3 "Mother (Epilepsy)"

label variable mhf_epilepsy___4 "Brother(s) (Epilepsy)"

label variable mhf_epilepsy___5 "Sister(s) (Epilepsy)"

label variable mhf_epilepsy___6 "Child(ren) (Epilepsy)"

label variable mhf_stroke_age "At what age (years) were you when you first had stroke?"

label variable mhf_ministroke_age "At what age (years) were you when you first had ministroke?"

label variable mhf_depression_age "At what age (years) were you when you first had depression?"

label variable mhf_depression_meds "Have you ever received treatment, medications, and/or counseling for depression?"
label define _mhf_depression_meds 1 "Yes" 0 "No" 888 "Don't know" 999 "Refused"
label values mhf_depression_meds _mhf_depression_meds

label variable mhf_parksinson_age "At what age (years) were you when you first had parksinson's disease?"

label variable mhf_seizure_age "At what age (years) were you when you first had seizure?"

label variable mhf_multiplesclerosis_age "At what age (years) were you when you first had multiplesclerosis disease?"

label variable mhf_braintumor_age "At what age (years) were you when you first had brain tumor?"

label variable mhf_alzheimer_age "At what age (years) were you when you first had alzheimer disease?"

label variable mhf_vascular_age "At what age (years) were you when you first had vascular disease?"

label variable mhf_lewybodydem_age "At what age (years) were you when you first had Lewy BODY dementia?"

label variable mhf_othermci_age "At what age (years) were you when you first had Other/Unknown Dementia, Mild Cognitive Impairment (MCI), or Senility?"

label variable mhf_migraineheadches_age "At what age (years) were you when you first had migraine headaches?"

label variable mhf_epilepsy_age "At what age (years) were you when you first had epilepsy?"

label variable mhf_cataract_lefteye___0 "None (Cataracts (left eye))"

label variable mhf_cataract_lefteye___1 "Me (Cataracts (left eye))"

label variable mhf_cataract_lefteye___2 "Father (Cataracts (left eye))"

label variable mhf_cataract_lefteye___3 "Mother (Cataracts (left eye))"

label variable mhf_cataract_lefteye___4 "Brother(s) (Cataracts (left eye))"

label variable mhf_cataract_lefteye___5 "Sister(s) (Cataracts (left eye))"

label variable mhf_cataract_lefteye___6 "Child(ren) (Cataracts (left eye))"

label variable mhf_cataract_righteye___0 "None (Cataracts (right eye))"

label variable mhf_cataract_righteye___1 "Me (Cataracts (right eye))"

label variable mhf_cataract_righteye___2 "Father (Cataracts (right eye))"

label variable mhf_cataract_righteye___3 "Mother (Cataracts (right eye))"

label variable mhf_cataract_righteye___4 "Brother(s) (Cataracts (right eye))"

label variable mhf_cataract_righteye___5 "Sister(s) (Cataracts (right eye))"

label variable mhf_cataract_righteye___6 "Child(ren) (Cataracts (right eye))"

label variable mhf_glaucoma___0 "None (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___1 "Me (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___2 "Father (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___3 "Mother (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___4 "Brother(s) (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___5 "Sister(s) (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_glaucoma___6 "Child(ren) (Glaucoma Retinopathy / Retinal Problems)"

label variable mhf_macular___0 "None (Macular degeneration)"

label variable mhf_macular___1 "Me (Macular degeneration)"

label variable mhf_macular___2 "Father (Macular degeneration)"

label variable mhf_macular___3 "Mother (Macular degeneration)"

label variable mhf_macular___4 "Brother(s) (Macular degeneration)"

label variable mhf_macular___5 "Sister(s) (Macular degeneration)"

label variable mhf_macular___6 "Child(ren) (Macular degeneration)"

label variable mhf_cataracteye_age "At what age (years) were you when you first had cataract in eye?"

label variable mhf_glaucoma_age "At what age (years) were you when you first had glaucoma retinopathy/retinal problems?"

label variable mhf_macular_age "At what age (years) were you when you first had macular degeneration?"

label variable mhf_cirrhosis___0 "None (Cirrhosis)"

label variable mhf_cirrhosis___1 "Me (Cirrhosis)"

label variable mhf_cirrhosis___2 "Father (Cirrhosis)"

label variable mhf_cirrhosis___3 "Mother (Cirrhosis)"

label variable mhf_cirrhosis___4 "Brother(s) (Cirrhosis)"

label variable mhf_cirrhosis___5 "Sister(s) (Cirrhosis)"

label variable mhf_cirrhosis___6 "Child(ren) (Cirrhosis)"

label variable mhf_fattylivernonalcohol___0 "None (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___1 "Me (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___2 "Father (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___3 "Mother (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___4 "Brother(s) (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___5 "Sister(s) (Fatty liver (non-alcoholic))"

label variable mhf_fattylivernonalcohol___6 "Child(ren) (Fatty liver (non-alcoholic))"

label variable mhf_hepatitisa___0 "None (Type A hepatitis)"

label variable mhf_hepatitisa___1 "Me (Type A hepatitis)"

label variable mhf_hepatitisa___2 "Father (Type A hepatitis)"

label variable mhf_hepatitisa___3 "Mother (Type A hepatitis)"

label variable mhf_hepatitisa___4 "Brother(s) (Type A hepatitis)"

label variable mhf_hepatitisa___5 "Sister(s) (Type A hepatitis)"

label variable mhf_hepatitisa___6 "Child(ren) (Type A hepatitis)"

label variable mhf_hepatitisb___0 "None (Type B hepatitis)"

label variable mhf_hepatitisb___1 "Me (Type B hepatitis)"

label variable mhf_hepatitisb___2 "Father (Type B hepatitis)"

label variable mhf_hepatitisb___3 "Mother (Type B hepatitis)"

label variable mhf_hepatitisb___4 "Brother(s) (Type B hepatitis)"

label variable mhf_hepatitisb___5 "Sister(s) (Type B hepatitis)"

label variable mhf_hepatitisb___6 "Child(ren) (Type B hepatitis)"

label variable mhf_hepatitisc___0 "None (Type C hepatitis)"

label variable mhf_hepatitisc___1 "Me (Type C hepatitis)"

label variable mhf_hepatitisc___2 "Father (Type C hepatitis)"

label variable mhf_hepatitisc___3 "Mother (Type C hepatitis)"

label variable mhf_hepatitisc___4 "Brother(s) (Type C hepatitis)"

label variable mhf_hepatitisc___5 "Sister(s) (Type C hepatitis)"

label variable mhf_hepatitisc___6 "Child(ren) (Type C hepatitis)"

label variable mhf_hepatitisauto___0 "None (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___1 "Me (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___2 "Father (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___3 "Mother (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___4 "Brother(s) (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___5 "Sister(s) (Autoimmune hepatitis)"

label variable mhf_hepatitisauto___6 "Child(ren) (Autoimmune hepatitis)"

label variable mhf_hepatitisother___0 "None (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___1 "Me (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___2 "Father (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___3 "Mother (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___4 "Brother(s) (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___5 "Sister(s) (Other hepatitis / hepatitis of unknown type)"

label variable mhf_hepatitisother___6 "Child(ren) (Other hepatitis / hepatitis of unknown type)"

label variable mhf_liveralcohol___0 "None (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___1 "Me (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___2 "Father (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___3 "Mother (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___4 "Brother(s) (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___5 "Sister(s) (Liver problems related to alcohol consumption)"

label variable mhf_liveralcohol___6 "Child(ren) (Liver problems related to alcohol consumption)"

label variable mhf_otherliverprob___0 "None (Other liver disease)"

label variable mhf_otherliverprob___1 "Me (Other liver disease)"

label variable mhf_otherliverprob___2 "Father (Other liver disease)"

label variable mhf_otherliverprob___3 "Mother (Other liver disease)"

label variable mhf_otherliverprob___4 "Brother(s) (Other liver disease)"

label variable mhf_otherliverprob___5 "Sister(s) (Other liver disease)"

label variable mhf_otherliverprob___6 "Child(ren) (Other liver disease)"

label variable mhf_cirrhosis_age "At what age (years) were you when you first had cirrhosis?"

label variable mhf_fattylivernonalcohol_age "At what age (years) were you when you first had fatty liver (non-alcoholic)?"

label variable mhf_hepatitisa_age "At what age (years) were you when you first had type A hepatitis?"

label variable mhf_hepatitisb_age "At what age (years) were you when you first had type B hepatitis?"

label variable mhf_hepatitisc_age "At what age (years) were you when you first had type C hepatitis?"

label variable mhf_hepatitisauto_age "At what age (years) were you when you first had autoimmune hepatitis?"

label variable mhf_hepatitisother_age "At what age (years) were you when you first had other hepatitis?"

label variable mhf_liveralcohol_age "At what age (years) were you when you first had liver problems due to alcohol?"

label variable mhf_det_othliverprob "Details: other liver problems?"

label variable mhf_otherliverprob_age "At what age (years) were you when you first had any other liver problems?"

label variable mhf_sleepdisorder___0 "None (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___1 "Me (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___2 "Father (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___3 "Mother (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___4 "Brother(s) (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___5 "Sister(s) (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_sleepdisorder___6 "Child(ren) (Sleep disorder (insomnia, restless legs, narcolepsy, sleep apnea, or another sleep disorder))"

label variable mhf_hiv___0 "None (HIV or AIDS)"

label variable mhf_hiv___1 "Me (HIV or AIDS)"

label variable mhf_hiv___2 "Father (HIV or AIDS)"

label variable mhf_hiv___3 "Mother (HIV or AIDS)"

label variable mhf_hiv___4 "Brother(s) (HIV or AIDS)"

label variable mhf_hiv___5 "Sister(s) (HIV or AIDS)"

label variable mhf_hiv___6 "Child(ren) (HIV or AIDS)"

label variable mhf_stomachgastric___0 "None (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___1 "Me (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___2 "Father (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___3 "Mother (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___4 "Brother(s) (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___5 "Sister(s) (Stomach, gastric, or duodenal ulcer)"

label variable mhf_stomachgastric___6 "Child(ren) (Stomach, gastric, or duodenal ulcer)"

label variable mhf_thyroid___0 "None (Thyroid disorder)"

label variable mhf_thyroid___1 "Me (Thyroid disorder)"

label variable mhf_thyroid___2 "Father (Thyroid disorder)"

label variable mhf_thyroid___3 "Mother (Thyroid disorder)"

label variable mhf_thyroid___4 "Brother(s) (Thyroid disorder)"

label variable mhf_thyroid___5 "Sister(s) (Thyroid disorder)"

label variable mhf_thyroid___6 "Child(ren) (Thyroid disorder)"

label variable mhf_otherhealthprob___0 "None (Any other health problems)"

label variable mhf_otherhealthprob___1 "Me (Any other health problems)"

label variable mhf_otherhealthprob___2 "Father (Any other health problems)"

label variable mhf_otherhealthprob___3 "Mother (Any other health problems)"

label variable mhf_otherhealthprob___4 "Brother(s) (Any other health problems)"

label variable mhf_otherhealthprob___5 "Sister(s) (Any other health problems)"

label variable mhf_otherhealthprob___6 "Child(ren) (Any other health problems)"

label variable mhf_sleepdisorder_age "At what age (years) were you when you first had sleep disorder?"

label variable mhf_hiv_age "At what age (years) were you when you first had HIV or AIDS?"

label variable mhf_stomachgastric_age "At what age (years) were you when you first had gastric stomach or duodenal ulcer?"

label variable mhf_thyroid_age "At what age (years) were you when diagnosed with thyroid disorder?"

label variable pne_pain___1 "Knee(s) (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___2 "Hips(s) (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___3 "Hand(s) (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___4 "Back (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___5 "Neck (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___6 "Feet (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___7 "Shoulders (Have you ever had Chronic Pain in any of the following:)"

label variable pne_pain___0 "No history of chronic pain (Have you ever had Chronic Pain in any of the following:)"

label variable mhf_med_memory "Memory"
label define _mhf_med_memory 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_memory _mhf_med_memory

label variable mhf_med_asthma "Asthma"
label define _mhf_med_asthma 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_asthma _mhf_med_asthma

label variable mhf_med_bronch "Lung disease (chronic bronchitis, emphysema, COPD)"
label define _mhf_med_bronch 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_bronch _mhf_med_bronch

label variable mhf_med_htn "Hypertension (high blood pressure)"
label define _mhf_med_htn 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_htn _mhf_med_htn

label variable mhf_med_chol "High blood cholesterol"
label define _mhf_med_chol 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_chol _mhf_med_chol

label variable mhf_med_dm "Diabetes (high blood sugar)"
label define _mhf_med_dm 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_dm _mhf_med_dm

label variable mhf_med_angina "Heart disease (heart attack, chest pain, angina)"
label define _mhf_med_angina 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_angina _mhf_med_angina

label variable mhf_med_hr "Abnormal heart rhythm"
label define _mhf_med_hr 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_hr _mhf_med_hr

label variable mhf_med_hf "Heart failure"
label define _mhf_med_hf 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_hf _mhf_med_hf

label variable mhf_med_bldthn "Blood thinning"
label define _mhf_med_bldthn 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_bldthn _mhf_med_bldthn

label variable mhf_med_stroke "Stroke, Mini-Stroke, or TIA"
label define _mhf_med_stroke 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_stroke _mhf_med_stroke

label variable mhf_med_pad "Peripheral arterial disease (PAD) (leg pain with walking, claudication)"
label define _mhf_med_pad 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_pad _mhf_med_pad

label variable mhf_med_anx "Depression, anxiety, or nerves"
label define _mhf_med_anx 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_anx _mhf_med_anx

label variable mhf_med_thyroid "Thyroid disorder (hypothyroidism or Hashimoto's disease, hyperthyroidism or Graves' disease, goiter, thyroid nodules)"
label define _mhf_med_thyroid 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_thyroid _mhf_med_thyroid

label variable mhf_med_epilepsy "Epilepsy"
label define _mhf_med_epilepsy 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_epilepsy _mhf_med_epilepsy

label variable mhf_med_cancer "Cancer"
label define _mhf_med_cancer 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_cancer _mhf_med_cancer

label variable mhf_med_other "Other Conditions"
label define _mhf_med_other 0 "No" 1 "Yes" 888 "Don't Know"
label values mhf_med_other _mhf_med_other


#Clear data in global environment
rm(list=ls())

#Load Hmisc library for its labeling functionality
library(Hmisc)

#Load data (update path_to_data before running)
path_to_data <- '../data-csv/BLSA_Knee_x-ray.csv' 

data=read.csv(path_to_data)

#Set variable labels
label(data$idno)="Participant ID"
label(data$subject_id)="Participant ID"
label(data$visit)="Visit Number"
label(data$event_name)="Visit Number"
label(data$crf_version_Knexra)="CRF Version"
label(data$obsdate_knxdat2)="Date Completed 2"
label(data$knxqdat)="Date Completed"
label(data$blank_Knexra)="Blank Form"
label(data$knxqtid)="Tester ID"
label(data$knx000)="Which knee submitted for interpretation"
label(data$knxqa1)="Are both knees radiographed R"
label(data$knxqb1)="Are both knees radiographed L"
label(data$knxqa2)="Are markers on each film in a location that does not obscure any structure R"
label(data$knxqb2)="Are markers on each film in a location that does not obscure any structure L"
label(data$knxqa3)="Does the entire joint appear on the film R"
label(data$knxqb3)="Does the entire joint appear on the film L"
label(data$knxqa4)="Are the lines of beads in the positioning frame visible R"
label(data$knxqb4)="Are the lines of beads in the positioning frame visible R"
label(data$knxqa5)="Is articular surface of the medial femoral condyle sharply delineated R"
label(data$knxqb5)="Is articular surface of the medial femoral condyle sharply delineated L"
label(data$knxqa6)="Is floor of the medial tibial plateau clearly delineated and flat R"
label(data$knxqb6)="Is floor of the medial tibial plateau clearly delineated and flat L"
label(data$knxqa7)="Is cortex of the tibial plateau floor sharply delineated R"
label(data$knxqb7)="Is cortex of the tibial plateau floor sharply delineated L"
label(data$knxqa8)="Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm R"
label(data$knxqb8)="Vertical distance between anterior and posterior tibial margins at center of medial tibial plateau gr than about mm L"
label(data$knxqa9)="Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light R"
label(data$knxqb9)="Are medial and lateral sides of knee joint including bone margins clearly visible without use of high intensity light L"
label(data$knxqa10)="Is soft tissue visible R"
label(data$knxqb10)="Is soft tissue visible L"
label(data$knxqa11)="Is any hardware visible R"
label(data$knxqb11)="Is any hardware visible L"
label(data$knxa1m)="Knee alignment R"
label(data$knxa1)="Knee alignment R not zero"
label(data$knxa2a1)="Mid JSW Medial R"
label(data$knxa2a2)="Mid JSW Lateral R"
label(data$knxa2b1)="Min JSW Medial R"
label(data$knxa2b2)="Min JSW Lateral R"
label(data$knxa2c)="Marker diameter R"
label(data$knxb1m)="Knee alignment L"
label(data$knxb1)="Knee alignment L not zero"
label(data$knxb2a1)="Mid JSW Medial L"
label(data$knxb2a2)="Mid JSW Lateral L"
label(data$knxb2b1)="Min JSW Medial L"
label(data$knxb2b2)="Min JSW Lateral L"
label(data$knxb2c)="Marker diameter L"
label(data$knxtid)="Interpreter Tester ID 1"
label(data$knxdate)="Date Completed 1"
label(data$knxtid2)="Interpreter Tester ID 2"
label(data$knxa31)="R Osteophytes score medial"
label(data$knxa32)="R Osteophytes score lateral"
label(data$knxa41)="R Narrowing score medial"
label(data$knxa42)="R Narrowing score lateral"
label(data$knxa51)="R Sclerosis score medial"
label(data$knxa52)="R Sclerosis score lateral"
label(data$knxa6)="R Tibial spines sharpening"
label(data$knxa7)="R Chondrocalcinosis"
label(data$knxa8)="R Old Trauma"
label(data$knxakl)="R KL Grade"
label(data$knxb31)="L Osteophytes score medial"
label(data$knxb32)="L Osteophytes score lateral"
label(data$knxb41)="L Narrowing score medial"
label(data$knxb42)="L Narrowing score lateral"
label(data$knxb51)="L Sclerosis score medial"
label(data$knxb52)="L Sclerosis score lateral"
label(data$knxb6)="L Tibial spines sharpening"
label(data$knxb7)="L Chondrocalcinosis"
label(data$knxb8)="L Old Trauma"
label(data$knxbkl)="L KL Grade"
label(data$auto_id_Knexra)="Unique Teleform Number"
label(data$crf_parent_name_Knexra)="CRF Parent Name"
label(data$study_name_Knexra)="Study Name"

#Create new variables for factors
data$knx000.factor = factor(data$knx000, levels = c("0","1","2","3"))
levels(data$knx000.factor) = c("None","Both","Left only","Right only")

data$knxqa1.factor = factor(data$knxqa1, levels = c("0","1"))
levels(data$knxqa1.factor) = c("No","Yes")

data$knxqb1.factor = factor(data$knxqb1, levels = c("0","1"))
levels(data$knxqb1.factor) = c("No","Yes")

data$knxqa2.factor = factor(data$knxqa2, levels = c("0","1"))
levels(data$knxqa2.factor) = c("No","Yes")

data$knxqb2.factor = factor(data$knxqb2, levels = c("0","1"))
levels(data$knxqb2.factor) = c("No","Yes")

data$knxqa3.factor = factor(data$knxqa3, levels = c("0","1"))
levels(data$knxqa3.factor) = c("No","Yes")

data$knxqb3.factor = factor(data$knxqb3, levels = c("0","1"))
levels(data$knxqb3.factor) = c("No","Yes")

data$knxqa4.factor = factor(data$knxqa4, levels = c("0","1"))
levels(data$knxqa4.factor) = c("No","Yes")

data$knxqb4.factor = factor(data$knxqb4, levels = c("0","1"))
levels(data$knxqb4.factor) = c("No","Yes")

data$knxqa5.factor = factor(data$knxqa5, levels = c("0","1"))
levels(data$knxqa5.factor) = c("No","Yes")

data$knxqb5.factor = factor(data$knxqb5, levels = c("0","1"))
levels(data$knxqb5.factor) = c("No","Yes")

data$knxqa6.factor = factor(data$knxqa6, levels = c("0","1"))
levels(data$knxqa6.factor) = c("No","Yes")

data$knxqb6.factor = factor(data$knxqb6, levels = c("0","1"))
levels(data$knxqb6.factor) = c("No","Yes")

data$knxqa7.factor = factor(data$knxqa7, levels = c("0","1"))
levels(data$knxqa7.factor) = c("No","Yes")

data$knxqb7.factor = factor(data$knxqb7, levels = c("0","1"))
levels(data$knxqb7.factor) = c("No","Yes")

data$knxqa8.factor = factor(data$knxqa8, levels = c("0","1"))
levels(data$knxqa8.factor) = c("No","Yes")

data$knxqb8.factor = factor(data$knxqb8, levels = c("0","1"))
levels(data$knxqb8.factor) = c("No","Yes")

data$knxqa9.factor = factor(data$knxqa9, levels = c("0","1"))
levels(data$knxqa9.factor) = c("No","Yes")

data$knxqb9.factor = factor(data$knxqb9, levels = c("0","1"))
levels(data$knxqb9.factor) = c("No","Yes")

data$knxqa10.factor = factor(data$knxqa10, levels = c("0","1"))
levels(data$knxqa10.factor) = c("No","Yes")

data$knxqb10.factor = factor(data$knxqb10, levels = c("0","1"))
levels(data$knxqb10.factor) = c("No","Yes")

data$knxqa11.factor = factor(data$knxqa11, levels = c("0","1"))
levels(data$knxqa11.factor) = c("No","Yes")

data$knxqb11.factor = factor(data$knxqb11, levels = c("0","1"))
levels(data$knxqb11.factor) = c("No","Yes")

data$knxa1m.factor = factor(data$knxa1m, levels = c("0","9"))
levels(data$knxa1m.factor) = c("Zero","Unknown")

data$knxb1m.factor = factor(data$knxb1m, levels = c("0","9"))
levels(data$knxb1m.factor) = c("Zero","Unknown")

data$knxa31.factor = factor(data$knxa31, levels = c("0","1","2","3","4","9"))
levels(data$knxa31.factor) = c("Normal (absent)","Possible","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxa32.factor = factor(data$knxa32, levels = c("0","1","2","3","4","9"))
levels(data$knxa32.factor) = c("Normal (absent)","Possible","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxa41.factor = factor(data$knxa41, levels = c("0","1","2","3","9"))
levels(data$knxa41.factor) = c("Normal","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxa42.factor = factor(data$knxa42, levels = c("0","1","2","3","9"))
levels(data$knxa42.factor) = c("Normal","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxa51.factor = factor(data$knxa51, levels = c("0","1","9"))
levels(data$knxa51.factor) = c("Absent","Present","Unknown")

data$knxa52.factor = factor(data$knxa52, levels = c("0","1","9"))
levels(data$knxa52.factor) = c("Absent","Present","Unknown")

data$knxa6.factor = factor(data$knxa6, levels = c("0","1","9"))
levels(data$knxa6.factor) = c("Absent","Present","Unknown")

data$knxa7.factor = factor(data$knxa7, levels = c("0","1","9"))
levels(data$knxa7.factor) = c("Absent","Present","Unknown")

data$knxa8.factor = factor(data$knxa8, levels = c("0","1","9"))
levels(data$knxa8.factor) = c("Absent","Present","Unknown")

data$knxakl.factor = factor(data$knxakl, levels = c("0","1","2","3","4","5"))
levels(data$knxakl.factor) = c("Grade 0 = No osteophytes normal joint space width","Grade 1 = Doubtful narrowing possible osteophyte","Grade 2 = Minimal definite osteophytes unimpared joint space (JS)","Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)","Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)","Grade 5 = Endstage knee replaced")

data$knxb31.factor = factor(data$knxb31, levels = c("0","1","2","3","4","9"))
levels(data$knxb31.factor) = c("Normal (absent)","Possible","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxb32.factor = factor(data$knxb32, levels = c("0","1","2","3","4","9"))
levels(data$knxb32.factor) = c("Normal (absent)","Possible","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxb41.factor = factor(data$knxb41, levels = c("0","1","2","3","9"))
levels(data$knxb41.factor) = c("Normal","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxb42.factor = factor(data$knxb42, levels = c("0","1","2","3","9"))
levels(data$knxb42.factor) = c("Normal","OARSI Grade1","OARSI Grade 2","OARSI Grade 3","Unknown")

data$knxb51.factor = factor(data$knxb51, levels = c("0","1","9"))
levels(data$knxb51.factor) = c("Absent","Present","Unknown")

data$knxb52.factor = factor(data$knxb52, levels = c("0","1","9"))
levels(data$knxb52.factor) = c("Absent","Present","Unknown")

data$knxb6.factor = factor(data$knxb6, levels = c("0","1","9"))
levels(data$knxb6.factor) = c("Absent","Present","Unknown")

data$knxb7.factor = factor(data$knxb7, levels = c("0","1","9"))
levels(data$knxb7.factor) = c("Absent","Present","Unknown")

data$knxb8.factor = factor(data$knxb8, levels = c("0","1","9"))
levels(data$knxb8.factor) = c("Absent","Present","Unknown")

data$knxbkl.factor = factor(data$knxbkl, levels = c("0","1","2","3","4","5"))
levels(data$knxbkl.factor) = c("Grade 0 = No osteophytes normal joint space width","Grade 1 = Doubtful narrowing possible osteophyte","Grade 2 = Minimal definite osteophytes unimpared joint space (JS)","Grade 3 = Moderate osteophytes definite diminution of JS some sclerosos (OARSI 1-2)","Grade 4 = Severe definite osteophytes joint space greatly narrowed (OARSI grade 3)","Grade 5 = Endstage knee replaced")


clear
import delimited "../data-csv/BLSA_DEXA.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_dex "CRF Version"

label variable obsdate_dxadate "DEXA Date completed"

// Generate 'date version' of the 'obsdate_dxadate' variable
gen _obsdate_dxadate = date(obsdate_dxadate, "YMD")
format _obsdate_dxadate %td

label variable dxascdt "Date Completed"

// Generate 'date version' of the 'dxascdt' variable
gen _dxascdt = date(dxascdt, "YMD")
format _dxascdt %td

label variable blank_dex "Blank Form"

label variable dxascid "Tester ID"

label variable dxasc1 "Does weight exceed 350 lbs"
label define _EvSyWFk0V8 0 "No" 1 "Yes"
label values dxasc1 _EvSyWFk0V8

label variable dxasc2 "Does height exceed 78 in (6ft 6In)"
label define _zY0YQ0jujU 0 "No" 1 "Yes"
label values dxasc2 _zY0YQ0jujU

label variable dxasc3a "Barrium Enema"
label define _ufWBtCZvWG 0 "No" 1 "Yes"
label values dxasc3a _ufWBtCZvWG

label variable dxasc3b "Upper GI series"
label define _bcCOyTf8Yy 0 "No" 1 "Yes"
label values dxasc3b _bcCOyTf8Yy

label variable dxasc3c "Lower GI series"
label define _yWtiJwCHBw 0 "No" 1 "Yes"
label values dxasc3c _yWtiJwCHBw

label variable dxasc3d "Nuclear medicine scan"
label define _Mcm53J3clx 0 "No" 1 "Yes"
label values dxasc3d _Mcm53J3clx

label variable dxasc3e "Other tests using contrast or radioactive materials"
label define _nf3uL5tHv3 0 "No" 1 "Yes"
label values dxasc3e _nf3uL5tHv3

label variable dxasc4 "Had hip replacement surgery"
label define _flVQmPcipc 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values dxasc4 _flVQmPcipc

label variable dxasc4a "Which side hip replacement surgery"
label define _GuwvWI8NzX 1 "Right" 2 "Left" 3 "Both"
label values dxasc4a _GuwvWI8NzX

label variable dxasc6 "Core Body Temperature"
label define _N8LTPMqwn1 0 "No" 1 "Yes" 8 "Don't know"
label values dxasc6 _N8LTPMqwn1

label variable dxasc5 "Have any metal objects, pacemaker, staples, etc"
label define _ZKzAeIqgQM 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values dxasc5 _ZKzAeIqgQM

label variable dxasc5a "Head"
label define _tbfuEgd5Mj 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5a _tbfuEgd5Mj

label variable dxasc5b "Left Arm"
label define _acz03NXmDU 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5b _acz03NXmDU

label variable dxasc5c "Right Arm"
label define _ImVkpIpaA5 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5c _ImVkpIpaA5

label variable dxasc5d "Left Ribs"
label define _idOw0cLXSO 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5d _idOw0cLXSO

label variable dxasc5e "Right ribs"
label define _QVy7PNUrQr 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5e _QVy7PNUrQr

label variable dxasc5f "Thoracic spine"
label define _SuIYpkevxj 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5f _SuIYpkevxj

label variable dxasc5g "Lumbar spine"
label define _cKFoGTnJGp 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5g _cKFoGTnJGp

label variable dxasc5h "Pelvis"
label define _F6b033lZyN 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5h _F6b033lZyN

label variable dxasc5i "Left leg"
label define _oE4Ua0pPpW 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5i _oE4Ua0pPpW

label variable dxasc5j "Right leg"
label define _LL3FEibQv7 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxasc5j _LL3FEibQv7

label variable dxatecid "DEXA technician ID"

label variable dxack1 "Was femur scanned"
label define _seVE52KK3U 1 "Yes" 5 "No - Physical problems" 6 "No - Cognitive problems" 8 "No - Refused" 9 "No - Technical problems"
label values dxack1 _seVE52KK3U

label variable dxack2 "Lesser trochanter minimized"
label define _WLwgMc8Qsn 0 "No" 1 "Yes"
label values dxack2 _WLwgMc8Qsn

label variable dxack3 "Femur vertical"
label define _TWwn63oQ0j 0 "No" 1 "Yes"
label values dxack3 _TWwn63oQ0j

label variable dxack4 "Was spine scanned"
label define _s57cay3AKI 1 "Yes" 5 "No - Physical problems" 6 "No - Cognitive problems" 8 "No - Refused" 9 "No - Technical problems"
label values dxack4 _s57cay3AKI

label variable dxack5 "Four or more vertebrae visible"
label define _HSPXB89vtx 0 "No" 1 "Yes"
label values dxack5 _HSPXB89vtx

label variable dxack6 "Iliac crests visible"
label define _nB0BHAXTNH 0 "No" 1 "Yes"
label values dxack6 _nB0BHAXTNH

label variable dxack7 "Was total body scanned"
label define _hJlWrmngdz 1 "Yes" 5 "No - Physical problems" 6 "No - Cognitive problems" 8 "No - Refused" 9 "No - Technical problems"
label values dxack7 _hJlWrmngdz

label variable dxack8 "Both upper and lower limbs in view"
label define _LdhhsqMhUI 0 "No" 1 "Yes"
label values dxack8 _LdhhsqMhUI

label variable dxack9 "Total body fields appropriately placed"
label define _nUevWsFMbu 0 "No" 1 "Yes"
label values dxack9 _nUevWsFMbu

label variable dxareaid "Reader Tester ID"

label variable dxack11 "DXA Reader Lesser tronchanter minimized"
label define _gqg5FFtqxc 0 "No" 1 "Yes"
label values dxack11 _gqg5FFtqxc

label variable dxack12 "DXA Reader Femur vertical"
label define _uSn0NX4aVA 0 "No" 1 "Yes"
label values dxack12 _uSn0NX4aVA

label variable dxack13 "DXA Reader Head"
label define _DUKvD1hHGC 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack13 _DUKvD1hHGC

label variable dxack14 "DXA Reader Left Arm"
label define _Rf524Diz90 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack14 _Rf524Diz90

label variable dxack15 "DXA Reader Right Arm"
label define _ckeWYU8ptG 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack15 _ckeWYU8ptG

label variable dxack16 "DXA Reader Left ribs"
label define _MTswZHxtIB 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack16 _MTswZHxtIB

label variable dxack17 "DXA Reader Right ribs"
label define _QIHdVf7C8X 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack17 _QIHdVf7C8X

label variable dxack18 "DXA Reader Pelvis"
label define _Pjg5dM7onb 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack18 _Pjg5dM7onb

label variable dxack19 "DXA Reader Left Hip"
label define _MS0VYr1NpK 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack19 _MS0VYr1NpK

label variable dxack20 "DXA Reader Left leg"
label define _DFIxp99x8D 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack20 _DFIxp99x8D

label variable dxack21 "DXA Reader Right hip"
label define _KaxzkwGEoV 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack21 _KaxzkwGEoV

label variable dxack22 "DXA Reader Right leg"
label define _QHMrDZt9FC 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack22 _QHMrDZt9FC

label variable dxack23 "DXA Reader Thoracic spine"
label define _mfwqwnv3W8 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack23 _mfwqwnv3W8

label variable dxack24 "DXA Reader Lumbar spine"
label define _jLctAPQcVu 0 "None" 1 "Hardware" 2 "Other Artifacts"
label values dxack24 _jLctAPQcVu

label variable dxack24a "Osteophyte"

label variable dxack24b "Compression"

label variable dxack24c "Scoliosis"

label variable dxack24d "Kyphosis"

label variable auto_id_dex "Unique Teleform Number"

label variable crf_parent_name_dex "CRF Parent Name"

label variable crf_status_dex "CRF Status"

label variable dxack24a_dexa_lumbar_osteophyte "Osteophyte : Osteophyte (Checkbox Indicator)"

label variable dxack24b_dexa_lumbar_compression "Compression : Compression (Checkbox Indicator)"

label variable dxack24c_dexa_lumbar_scoliosis "Scoliosis : Scoliosis (Checkbox Indicator)"

label variable study_name_dex "Study Name"


clear
import delimited "../data-csv/BLSA_Hand_Photo.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_hanpho "CRF Version"

label variable obsdate_hphdate "Date Completed"

// Generate 'date version' of the 'obsdate_hphdate' variable
gen _obsdate_hphdate = date(obsdate_hphdate, "YMD")
format _obsdate_hphdate %td

label variable hphqdat "Date Completed"

// Generate 'date version' of the 'hphqdat' variable
gen _hphqdat = date(hphqdat, "YMD")
format _hphqdat %td

label variable blank_hanpho "Blank"

label variable hphqtid "Tester ID"

label variable hphdone "Hand Photo which hand"
label define _Tu4iRUruRX 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values hphdone _Tu4iRUruRX

label variable hphrnd "Reason not done"
label define _eEVcFlSAze 555 "Physical problems" 666 "Cognitive problems" 888 "Refused" 999 "Technical problems"
label values hphrnd _eEVcFlSAze

label variable hphqa1 "R resolution maximized"
label define _w1ilYLBYuC 0 "No" 1 "Yes"
label values hphqa1 _w1ilYLBYuC

label variable hphqb1 "L resolution maximized"
label define _I9ghKZquIh 0 "No" 1 "Yes"
label values hphqb1 _I9ghKZquIh

label variable hphqa2 "R background non reflective"
label define _T0fQNNWzER 0 "No" 1 "Yes"
label values hphqa2 _T0fQNNWzER

label variable hphqb2 "L background non reflective"
label define _MEfO7R5OBo 0 "No" 1 "Yes"
label values hphqb2 _MEfO7R5OBo

label variable hphqa3 "R ID and visit clearly legible"
label define _xWxEam0XAR 0 "No" 1 "Yes"
label values hphqa3 _xWxEam0XAR

label variable hphqb3 "L ID and visit clearly legible"
label define _PjvnSUprgS 0 "No" 1 "Yes"
label values hphqb3 _PjvnSUprgS

label variable hphqa4 "R fingers slightly spread apart and thumb slightly extended"
label define _znNvtFESAd 0 "No" 1 "Yes"
label values hphqa4 _znNvtFESAd

label variable hphqb4 "L fingers slightly spread apart and thumb slightly extended"
label define _D7MPkHVtoc 0 "No" 1 "Yes"
label values hphqb4 _D7MPkHVtoc

label variable hphqa5 "R are all DIPs visible in the photo"
label define _ORqcePNx3n 0 "No" 1 "Yes"
label values hphqa5 _ORqcePNx3n

label variable hphqb5 "L are all DIPs visible in the photo"
label define _cUfmrS3UEI 0 "No" 1 "Yes"
label values hphqb5 _cUfmrS3UEI

label variable hphqa6 "R Is the wrist visible"
label define _eSfBI10yMc 0 "No" 1 "Yes"
label values hphqa6 _eSfBI10yMc

label variable hphqb6 "L Is the wrist visible"
label define _ww3ZfVmdIc 0 "No" 1 "Yes"
label values hphqb6 _ww3ZfVmdIc

label variable hphitd "Tester ID"

label variable hpha0b "R Bony prominence wrist"
label define _scFa9UGAxU 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha0b _scFa9UGAxU

label variable hpha1ab "R Bony prominence CMC 1st"
label define _DRmnefmGsA 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1ab _DRmnefmGsA

label variable hpha1bb "R Bony prominence IP 1st"
label define _Z6hnPkbji9 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1bb _Z6hnPkbji9

label variable hpha1cb "R Bony prominence MCP 1st"
label define _LIUp4XegA1 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1cb _LIUp4XegA1

label variable hpha2ab "R Bony prominence DIP 2nd"
label define _Ldnt9wfjGq 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2ab _Ldnt9wfjGq

label variable hpha2bb "R Bony prominence PIP 2nd"
label define _lb9FJrb2v6 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2bb _lb9FJrb2v6

label variable hpha2cb "R Bony prominence MCP 2nd"
label define _lSQDJz93GB 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2cb _lSQDJz93GB

label variable hpha3ab "R Bony prominence DIP 3rd"
label define _a7bzCJKGio 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3ab _a7bzCJKGio

label variable hpha3bb "R Bony prominenceP IP 3rd"
label define _rXocMukmq2 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3bb _rXocMukmq2

label variable hpha3cb "R Bony prominence MCP 3rd"
label define _BpZcS3YmQO 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3cb _BpZcS3YmQO

label variable hpha4ab "R Bony prominence DIP 4th"
label define _HBjKpklnhs 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4ab _HBjKpklnhs

label variable hpha4bb "R Bony prominence PIP 4th"
label define _KQctANIMAs 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4bb _KQctANIMAs

label variable hpha4cb "R Bony prominence MCP 4th"
label define _s7mliqnGuJ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4cb _s7mliqnGuJ

label variable hpha5ab "R Bony prominence DIP 5th"
label define _lNEea04hxc 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5ab _lNEea04hxc

label variable hpha5bb "R Bony prominence PIP 5th"
label define _PwwD0NpKwu 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5bb _PwwD0NpKwu

label variable hpha5cb "R Bony prominence MCP 5th"
label define _cVZd9RfWn2 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5cb _cVZd9RfWn2

label variable hpha0e "R Soft Tissue Enlargement"
label define _LtkWufYq1U 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha0e _LtkWufYq1U

label variable hpha1ae "R Soft Tissue Enlargement CMC 1st"
label define _mJOOYG2BVM 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1ae _mJOOYG2BVM

label variable hpha1be "R Soft Tissue Enlargement IP 1st"
label define _t5e4FTmIPr 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1be _t5e4FTmIPr

label variable hpha1ce "R Soft Tissue Enlargement MCP 1st"
label define _TsUlXdibyx 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1ce _TsUlXdibyx

label variable hpha2ae "R Soft Tissue Enlargement DIP 2nd"
label define _S8NJwaRO9S 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2ae _S8NJwaRO9S

label variable hpha2be "R Soft Tissue Enlargement PIP 2nd"
label define _MM2vjnVYTf 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2be _MM2vjnVYTf

label variable hpha2ce "R Soft Tissue Enlargement MCP 2nd"
label define _bo662MzNXQ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2ce _bo662MzNXQ

label variable hpha3ae "R Soft Tissue Enlargement DIP 3rd"
label define _yOLpEkl47m 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3ae _yOLpEkl47m

label variable hpha3be "R Soft Tissue Enlargement PIP 3rd"
label define _Cfuh3AgIj9 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3be _Cfuh3AgIj9

label variable hpha3ce "R Soft Tissue Enlargement MCP 3rd"
label define _opwmsHVxUU 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3ce _opwmsHVxUU

label variable hpha4ae "R Soft Tissue Enlargement DIP 4th"
label define _A3KsvnAvoi 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4ae _A3KsvnAvoi

label variable hpha4be "R Soft Tissue Enlargement PIP 4th"
label define _rxUixYiokA 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4be _rxUixYiokA

label variable hpha4ce "R Soft Tissue Enlargement MCP 4th"
label define _msNCAccXEx 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4ce _msNCAccXEx

label variable hpha5ae "R Soft Tissue Enlargement DIP 5th"
label define _op6Z9Ryq3u 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5ae _op6Z9Ryq3u

label variable hpha5be "R Soft Tissue Enlargement PIP 5th"
label define _TjcJrou0mC 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5be _TjcJrou0mC

label variable hpha5ce "R Soft Tissue Enlargement MCP 5th"
label define _KTJfAGGwjL 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5ce _KTJfAGGwjL

label variable hpha0d "R Deformity"
label define _KzoYSuEvLG 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha0d _KzoYSuEvLG

label variable hpha1ad "R Deformity CMC1st"
label define _PNSpdtUrmC 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1ad _PNSpdtUrmC

label variable hpha1bd "R Deformity IP 1st"
label define _oRMl42ZWve 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1bd _oRMl42ZWve

label variable hpha1cd "R Deformity MCP 1st"
label define _EYZNVxTEtX 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha1cd _EYZNVxTEtX

label variable hpha2ad "R Deformity DIP 2nd"
label define _BzVSUStec8 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2ad _BzVSUStec8

label variable hpha2bd "R Deformity PIP 2nd"
label define _Ptuk2k2cEk 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2bd _Ptuk2k2cEk

label variable hpha2cd "R Deformity MCP 2nd"
label define _TKrFh5lk7l 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha2cd _TKrFh5lk7l

label variable hpha3ad "R Deformity DIP 3rd"
label define _WuCG4uX0MK 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3ad _WuCG4uX0MK

label variable hpha3bd "R Deformity PIP 3rd"
label define _JNHtElBZB4 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3bd _JNHtElBZB4

label variable hpha3cd "R Deformity MCP 3rd"
label define _Qfe4J0I4G1 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha3cd _Qfe4J0I4G1

label variable hpha4ad "R Deformity DIP 4th"
label define _Uh4p4EGqZ5 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4ad _Uh4p4EGqZ5

label variable hpha4bd "R Deformity PIP 4th"
label define _zlb7jQH4AP 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4bd _zlb7jQH4AP

label variable hpha4cd "R Deformity MCP 4th"
label define _bKboBELUxw 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha4cd _bKboBELUxw

label variable hpha5ad "R Deformity DIP 5th"
label define _XAI8uTOGaz 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5ad _XAI8uTOGaz

label variable hpha5bd "R Deformity PIP 5th"
label define _r9JOKzsPpw 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5bd _r9JOKzsPpw

label variable hpha5cd "R Deformity MCP 5th"
label define _yBk6ncMFST 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hpha5cd _yBk6ncMFST

label variable hphb0b "L Bony prominence wrist"
label define _oxh6DqouoZ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb0b _oxh6DqouoZ

label variable hphb1ab "L Bony prominence CMC 1st"
label define _LePPWEsKl5 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1ab _LePPWEsKl5

label variable hphb1bb "L Bony prominence IP 1st"
label define _v2d5VH4HSb 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1bb _v2d5VH4HSb

label variable hphb1cb "L Bony prominence MCP 1st"
label define _drx2etdqcn 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1cb _drx2etdqcn

label variable hphb2ab "L Bony prominence DIP 2nd"
label define _FNuzVBw94j 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2ab _FNuzVBw94j

label variable hphb2bb "L Bony prominence PIP 2nd"
label define _EZ9U5cD2w1 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2bb _EZ9U5cD2w1

label variable hphb2cb "L Bony prominence MCP 2nd"
label define _G1plRWegLx 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2cb _G1plRWegLx

label variable hphb3ab "L Bony prominence DIP 3rd"
label define _ez2QCIBUMx 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3ab _ez2QCIBUMx

label variable hphb3bb "L Bony prominenceP IP 3rd"
label define _tA4ZOXnlE5 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3bb _tA4ZOXnlE5

label variable hphb3cb "L Bony prominence MCP 3rd"
label define _OtoCv8LeV6 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3cb _OtoCv8LeV6

label variable hphb4ab "L Bony prominence DIP 4th"
label define _sDXpIwb6Es 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4ab _sDXpIwb6Es

label variable hphb4bb "L Bony prominence PIP 4th"
label define _RdIRf5ECjG 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4bb _RdIRf5ECjG

label variable hphb4cb "L Bony prominence MCP 4th"
label define _lJdkwVaBCq 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4cb _lJdkwVaBCq

label variable hphb5ab "L Bony prominence DIP 5th"
label define _FwgvEH5Vmm 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5ab _FwgvEH5Vmm

label variable hphb5bb "L Bony prominence PIP 5th"
label define _sZ3PRtbzEy 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5bb _sZ3PRtbzEy

label variable hphb5cb "L Bony prominence MCP 5th"
label define _otqDEPlWBM 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5cb _otqDEPlWBM

label variable hphb0e "L Soft Tissue Enlargement"
label define _p01E6OlUzF 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb0e _p01E6OlUzF

label variable hphb1ae "L Soft Tissue Enlargement CMC 1st"
label define _kJU0fQzcYq 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1ae _kJU0fQzcYq

label variable hphb1be "L Soft Tissue Enlargement IP 1st"
label define _q0mKOM5x9L 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1be _q0mKOM5x9L

label variable hphb1ce "L Soft Tissue Enlargement MCP 1st"
label define _lgLlRUIWCT 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1ce _lgLlRUIWCT

label variable hphb2ae "L Soft Tissue Enlargement DIP 2nd"
label define _NAkXFw4w2o 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2ae _NAkXFw4w2o

label variable hphb2be "L Soft Tissue Enlargement PIP 2nd"
label define _Z02CMtGtlV 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2be _Z02CMtGtlV

label variable hphb2ce "L Soft Tissue Enlargement MCP 2nd"
label define _p46uFg4CRZ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2ce _p46uFg4CRZ

label variable hphb3ae "L Soft Tissue Enlargement DIP 3rd"
label define _fiULMsvOi1 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3ae _fiULMsvOi1

label variable hphb3be "L Soft Tissue Enlargement PIP 3rd"
label define _TQ2zyP3mmW 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3be _TQ2zyP3mmW

label variable hphb3ce "L Soft Tissue Enlargement MCP 3rd"
label define _atheiPRhIZ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3ce _atheiPRhIZ

label variable hphb4ae "L Soft Tissue Enlargement DIP 4th"
label define _eNt3da6y0Q 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4ae _eNt3da6y0Q

label variable hphb4be "L Soft Tissue Enlargement PIP 4th"
label define _dgyWKFxoFN 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4be _dgyWKFxoFN

label variable hphb4ce "L Soft Tissue Enlargement MCP 4th"
label define _vqKMHtSBPL 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4ce _vqKMHtSBPL

label variable hphb5ae "L Soft Tissue Enlargement DIP 5th"
label define _mAUkcYnPu2 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5ae _mAUkcYnPu2

label variable hphb5be "L Soft Tissue Enlargement PIP 5th"
label define _VuGs18JSjT 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5be _VuGs18JSjT

label variable hphb5ce "L Soft Tissue Enlargement MCP 5th"
label define _iJS6n58N6c 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5ce _iJS6n58N6c

label variable hphb0d "L Deformity"
label define _D1siRDAAqE 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb0d _D1siRDAAqE

label variable hphb1ad "L Deformity CMC1st"
label define _JwRmSYQTpN 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1ad _JwRmSYQTpN

label variable hphb1bd "L Deformity IP 1st"
label define _lJ3wlEnQs7 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1bd _lJ3wlEnQs7

label variable hphb1cd "L Deformity MCP 1st"
label define _ggx7Cbyivn 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb1cd _ggx7Cbyivn

label variable hphb2ad "L Deformity DIP 2nd"
label define _esfE4B0KAO 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2ad _esfE4B0KAO

label variable hphb2bd "L Deformity PIP 2nd"
label define _TBvgFuM6hB 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2bd _TBvgFuM6hB

label variable hphb2cd "L Deformity MCP 2nd"
label define _XeBL3pnIBQ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb2cd _XeBL3pnIBQ

label variable hphb3ad "L Deformity DIP 3rd"
label define _QZ3os78a8p 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3ad _QZ3os78a8p

label variable hphb3bd "L Deformity PIP 3rd"
label define _xvSWemAIUB 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3bd _xvSWemAIUB

label variable hphb3cd "L Deformity MCP 3rd"
label define _hWAGcLJuMP 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb3cd _hWAGcLJuMP

label variable hphb4ad "L Deformity DIP 4th"
label define _puTjGbZ8DB 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4ad _puTjGbZ8DB

label variable hphb4bd "L Deformity PIP 4th"
label define _TtIZYVoD8H 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4bd _TtIZYVoD8H

label variable hphb4cd "L Deformity MCP 4th"
label define _ZQxoSDIT3I 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb4cd _ZQxoSDIT3I

label variable hphb5ad "L Deformity DIP 5th"
label define _rYOv2NZEDJ 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5ad _rYOv2NZEDJ

label variable hphb5bd "L Deformity PIP 5th"
label define _didvLYiqCs 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5bd _didvLYiqCs

label variable hphb5cd "L Deformity MCP 5th"
label define _HU86aCV0BB 0 "Absent" 1 "Possible" 2 "Present" 9 "Unknown"
label values hphb5cd _HU86aCV0BB

label variable auto_id_hanpho "Unique Teleform Number"

label variable crf_parent_name_hanpho "CRF Parent Name"

label variable study_name_hanpho "Study Name"


clear
import delimited "../data-csv/BLSA_Hand_x-ray.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_hanxra "CRF Version"

label variable obsdate_hdxdat2 "L date"

// Generate 'date version' of the 'obsdate_hdxdat2' variable
gen _obsdate_hdxdat2 = date(obsdate_hdxdat2, "YMD")
format _obsdate_hdxdat2 %td

label variable hdxqdat "Date checking completed"

// Generate 'date version' of the 'hdxqdat' variable
gen _hdxqdat = date(hdxqdat, "YMD")
format _hdxqdat %td

label variable blank_hanxra "Blank"

label variable hdxqtid "Checker Tester ID"

label variable hdx000 "Which hand submitted for interpretation"
label define _rxZjqPkndm 0 "None" 1 "Both" 2 "Left only" 3 "Right only"
label values hdx000 _rxZjqPkndm

label variable hdxqa1 "R markers on each film in location that does not obscure any structure"
label define _a87QavgxCG 0 "No" 1 "Yes"
label values hdxqa1 _a87QavgxCG

label variable hdxqb1 "L markers on each film in location that does not obscure any structure"
label define _EQOJqFLWtz 0 "No" 1 "Yes"
label values hdxqb1 _EQOJqFLWtz

label variable hdxqa2 "R index finger aligned with radius along the long axis of the cassette"
label define _ek0ycHee1D 0 "No" 1 "Yes"
label values hdxqa2 _ek0ycHee1D

label variable hdxqb2 "L index finger aligned with radius along the long axis of the cassette"
label define _lYeg6EWb5P 0 "No" 1 "Yes"
label values hdxqb2 _lYeg6EWb5P

label variable hdxqa3 "R fingers slightly spread apart and the thumb slightly extended"
label define _y785D7dNuP 0 "No" 1 "Yes"
label values hdxqa3 _y785D7dNuP

label variable hdxqb3 "L fingers slightly spread apart and the thumb slightly extended"
label define _y30wUbOIhx 0 "No" 1 "Yes"
label values hdxqb3 _y30wUbOIhx

label variable hdxqa4 "R ALL DIPs visible in the film"
label define _FWNpoDGumv 0 "No" 1 "Yes"
label values hdxqa4 _FWNpoDGumv

label variable hdxqb4 "L ALL DIPs visible in the film"
label define _mHW2SI7CFr 0 "No" 1 "Yes"
label values hdxqb4 _mHW2SI7CFr

label variable hdxqa5 "R wrist visible"
label define _I9irP2hg3Z 0 "No" 1 "Yes"
label values hdxqa5 _I9irP2hg3Z

label variable hdxqb5 "L wrist visible"
label define _kGiexVoQkM 0 "No" 1 "Yes"
label values hdxqb5 _kGiexVoQkM

label variable hdxqa6 "R any hardware or artifact visible"
label define _jAamchX3hn 0 "No" 1 "Yes"
label values hdxqa6 _jAamchX3hn

label variable hdxqb6 "L any hardware or artifact visible"
label define _AXKLXfadzd 0 "No" 1 "Yes"
label values hdxqb6 _AXKLXfadzd

label variable hdxqa7 "R film quality optimally depict the trabeculae and joints"
label define _jTCMwwQh1b 0 "No" 1 "Yes"
label values hdxqa7 _jTCMwwQh1b

label variable hdxqb7 "L film quality optimally depict the trabeculae and joints"
label define _fIMzcLbhtd 0 "No" 1 "Yes"
label values hdxqb7 _fIMzcLbhtd

label variable hdxqa8 "R soft tissue visible"
label define _JAOAQcd9sG 0 "No" 1 "Yes"
label values hdxqa8 _JAOAQcd9sG

label variable hdxqb8 "L soft tissue visible"
label define _PGtGA6gZyX 0 "No" 1 "Yes"
label values hdxqb8 _PGtGA6gZyX

label variable hdxtid "Tester 1 ID Right"

label variable hdxdate "R date"

// Generate 'date version' of the 'hdxdate' variable
gen _hdxdate = date(hdxdate, "YMD")
format _hdxdate %td

label variable hdxtid3 "Tester 2 ID Right"

label variable hdxdat3 "R date T2"

// Generate 'date version' of the 'hdxdat3' variable
gen _hdxdat3 = date(hdxdat3, "YMD")
format _hdxdat3 %td

label variable hdxa0o "R wrist Osteophytes"
label define _NBzREADEi5 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa0o _NBzREADEi5

label variable hdxa1ao "R CMP 1st Osteophytes"
label define _IyIX4rcYGP 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa1ao _IyIX4rcYGP

label variable hdxa1bo "R IP 1st Osteophytes"
label define _B8DRjtS6JU 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa1bo _B8DRjtS6JU

label variable hdxa2ao "R DIP 2nd Osteophytes"
label define _g2LJdhsSBm 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa2ao _g2LJdhsSBm

label variable hdxa2bo "R PIP 2nd Osteophytes"
label define _xQ7S4gV5Ol 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa2bo _xQ7S4gV5Ol

label variable hdxa3ao "R DIP 3rd Osteophytes"
label define _gACrKZaoR9 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa3ao _gACrKZaoR9

label variable hdxa3bo "R PIP 3rd Osteophytes"
label define _ouH4RpeQ6q 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa3bo _ouH4RpeQ6q

label variable hdxa4ao "R DIP 4th Osteophytes"
label define _DabgC9nkWh 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa4ao _DabgC9nkWh

label variable hdxa4bo "R PIP 4th Osteophytes"
label define _gjKxmWEDYs 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa4bo _gjKxmWEDYs

label variable hdxa5ao "R DIP 5th Osteophytes"
label define _dgxqNgSJ5g 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa5ao _dgxqNgSJ5g

label variable hdxa5bo "R PIP 5th Osteophytes"
label define _R8Wu81YxhD 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxa5bo _R8Wu81YxhD

label variable hdxa0n "R wrist Narrowing"
label define _jqL0pPGqie 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa0n _jqL0pPGqie

label variable hdxa1an "R CMP 1st Narrowing"
label define _rc6Jq46kzJ 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa1an _rc6Jq46kzJ

label variable hdxa1bn "R IP 1st Narrowing"
label define _DyhgasGp1e 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa1bn _DyhgasGp1e

label variable hdxa2an "R DIP 2nd Narrowing"
label define _fK4kJxcjmV 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa2an _fK4kJxcjmV

label variable hdxa2bn "R PIP 2nd Narrowing"
label define _or9Ry83FWm 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa2bn _or9Ry83FWm

label variable hdxa3an "R DIP 3rd Narrowing"
label define _zj40X27qJS 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa3an _zj40X27qJS

label variable hdxa3bn "R PIP 3rd Narrowing"
label define _cNVNNUXNSk 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa3bn _cNVNNUXNSk

label variable hdxa4an "R DIP 4th Narrowing"
label define _UEdJ2S6Jat 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa4an _UEdJ2S6Jat

label variable hdxa4bn "R PIP 4th Narrowing"
label define _EmUYp2iZTz 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa4bn _EmUYp2iZTz

label variable hdxa5an "R DIP 5th Narrowing"
label define _CdeGLzcctw 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa5an _CdeGLzcctw

label variable hdxa5bn "R PIP 5th Narrowing"
label define _nuzyrtkP5E 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxa5bn _nuzyrtkP5E

label variable hdxa0s "R wrist Sclerosis"
label define _U1sbeJlOFB 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa0s _U1sbeJlOFB

label variable hdxa1as "R CMP 1st Sclerosis"
label define _ktukOllXnq 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1as _ktukOllXnq

label variable hdxa1bs "R IP 1st Sclerosis"
label define _OtsHlJzb0i 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1bs _OtsHlJzb0i

label variable hdxa2as "R DIP 2nd Sclerosis"
label define _VnK9P89NXp 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2as _VnK9P89NXp

label variable hdxa2bs "R PIP 2nd Sclerosis"
label define _K1sC68RsEv 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2bs _K1sC68RsEv

label variable hdxa3as "R DIP 3rd Sclerosis"
label define _BO0MygcyIw 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3as _BO0MygcyIw

label variable hdxa3bs "R PIP 3rd Sclerosis"
label define _RW6jMiKyJa 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3bs _RW6jMiKyJa

label variable hdxa4as "R DIP 4th Sclerosis"
label define _jPSeNPlA3e 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4as _jPSeNPlA3e

label variable hdxa4bs "R PIP 4th Sclerosis"
label define _A76Su1IZJ2 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4bs _A76Su1IZJ2

label variable hdxa5as "R DIP 5th Sclerosis"
label define _r9Ew6zeDcl 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5as _r9Ew6zeDcl

label variable hdxa5bs "R PIP 5th Sclerosis"
label define _h7az5j5I2L 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5bs _h7az5j5I2L

label variable hdxa0d "R wrist Deformity"
label define _zXAj1fsJS5 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa0d _zXAj1fsJS5

label variable hdxa1ad "R CMP 1st Deformity"
label define _UuDea92yG1 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1ad _UuDea92yG1

label variable hdxa1bd "R IP 1st Deformity"
label define _FGJqJob3MD 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1bd _FGJqJob3MD

label variable hdxa2ad "R DIP 2nd Deformity"
label define _djocwKAq6z 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2ad _djocwKAq6z

label variable hdxa2bd "R PIP 2nd Deformity"
label define _VcR7dPALBG 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2bd _VcR7dPALBG

label variable hdxa3ad "R DIP 3rd Deformity"
label define _lmmqidUcKf 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3ad _lmmqidUcKf

label variable hdxa3bd "R PIP 3rd Deformity"
label define _BK9oh9vbFG 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3bd _BK9oh9vbFG

label variable hdxa4ad "R DIP 4th Deformity"
label define _RAUInItOLf 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4ad _RAUInItOLf

label variable hdxa4bd "R PIP 4th Deformity"
label define _ZFUwwzqIPV 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4bd _ZFUwwzqIPV

label variable hdxa5ad "R DIP 5th Deformity"
label define _hDZwp9pzNX 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5ad _hDZwp9pzNX

label variable hdxa5bd "R PIP 5th Deformity"
label define _rZszOumx26 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5bd _rZszOumx26

label variable hdxa0c "R wrist Chondro calcinosis"
label define _ADsFlRPqWD 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa0c _ADsFlRPqWD

label variable hdxa1ac "R CMP 1st Chondro calcinosis"
label define _g0jtOBjNFs 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1ac _g0jtOBjNFs

label variable hdxa1bc "R IP 1st Chondro calcinosis"
label define _HFb7NoZckT 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1bc _HFb7NoZckT

label variable hdxa2ac "R DIP 2nd Chondro calcinosis"
label define _jCpKiUXmJc 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2ac _jCpKiUXmJc

label variable hdxa2bc "R PIP 2nd Chondro calcinosis"
label define _Cb03HWtA4w 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2bc _Cb03HWtA4w

label variable hdxa3ac "R DIP 3rd Chondro calcinosis"
label define _o0VJF4QYh9 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3ac _o0VJF4QYh9

label variable hdxa3bc "R PIP 3rd Chondro calcinosis"
label define _cbfui64H4f 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3bc _cbfui64H4f

label variable hdxa4ac "R DIP 4th Chondro calcinosis"
label define _t1ceNzvBMw 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4ac _t1ceNzvBMw

label variable hdxa4bc "R PIP 4th Chondro calcinosis"
label define _TxH6ogxHbm 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4bc _TxH6ogxHbm

label variable hdxa5ac "R DIP 5th Chondro calcinosis"
label define _f5WR3vufjE 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5ac _f5WR3vufjE

label variable hdxa5bc "R PIP 5th Chondro calcinosis"
label define _UfkX7XL2dk 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5bc _UfkX7XL2dk

label variable hdxa0t "R wrist Old trauma"
label define _LY8l3pAhpM 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa0t _LY8l3pAhpM

label variable hdxa1at "R CMP 1st Old trauma"
label define _qiBoiP76SA 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1at _qiBoiP76SA

label variable hdxa1bt "R IP 1st Old trauma"
label define _kJtrNqreGQ 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa1bt _kJtrNqreGQ

label variable hdxa2at "R DIP 2nd Old trauma"
label define _nnzPl4ihbz 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2at _nnzPl4ihbz

label variable hdxa2bt "R PIP 2nd Old trauma"
label define _syqJ5sTklA 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa2bt _syqJ5sTklA

label variable hdxa3at "R DIP 3rd Old trauma"
label define _BlCxJJdD70 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3at _BlCxJJdD70

label variable hdxa3bt "R PIP 3rd Old trauma"
label define _NsYqrlSCrK 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa3bt _NsYqrlSCrK

label variable hdxa4at "R DIP 4th Old trauma"
label define _BLmLGbCheQ 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4at _BLmLGbCheQ

label variable hdxa4bt "R PIP 4th Old trauma"
label define _vpBfGTaXNk 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa4bt _vpBfGTaXNk

label variable hdxa5at "R DIP 5th Old trauma"
label define _nWE4gfMBRp 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5at _nWE4gfMBRp

label variable hdxa5bt "R PIP 5th Old trauma"
label define _xsMqV0pUYt 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxa5bt _xsMqV0pUYt

label variable hdxaks "KL Grade for RIGHT hand"

label variable hdxtid2 "Tester 1 ID Left"

label variable hdxtid4 "Tester 2 ID Left"

label variable hdxdat4 "L date T2"

// Generate 'date version' of the 'hdxdat4' variable
gen _hdxdat4 = date(hdxdat4, "YMD")
format _hdxdat4 %td

label variable hdxb0o "L wrist Osteophytes"
label define _YSujVsUDd9 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb0o _YSujVsUDd9

label variable hdxb1ao "L CMP 1st Osteophytes"
label define _KS7EHDdWMf 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb1ao _KS7EHDdWMf

label variable hdxb1bo "L IP 1st Osteophytes"
label define _jNYkJezI0W 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb1bo _jNYkJezI0W

label variable hdxb2ao "L DIP 2nd Osteophytes"
label define _W64aE6tUd6 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb2ao _W64aE6tUd6

label variable hdxb2bo "L PIP 2nd Osteophytes"
label define _WwqTKny5bq 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb2bo _WwqTKny5bq

label variable hdxb3ao "L DIP 3rd Osteophytes"
label define _LEPhpz9A8a 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb3ao _LEPhpz9A8a

label variable hdxb3bo "L PIP 3rd Osteophytes"
label define _B846gwwCwu 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb3bo _B846gwwCwu

label variable hdxb4ao "L DIP 4th Osteophytes"
label define _kPuJVlLQRa 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb4ao _kPuJVlLQRa

label variable hdxb4bo "L PIP 4th Osteophytes"
label define _RT05Cq6bvI 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb4bo _RT05Cq6bvI

label variable hdxb5ao "L DIP 5th Osteophytes"
label define _ppxrkbzuzp 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb5ao _ppxrkbzuzp

label variable hdxb5bo "L PIP 5th Osteophytes"
label define _iaqlqCNr8c 0 "Normal (absent)" 1 "Possible (detached)" 2 "OARSI Grade 1" 3 "OARSI Grade 2" 4 "OARSI Grade 3" 9 "Unknown"
label values hdxb5bo _iaqlqCNr8c

label variable hdxb0n "L wrist Narrowing"
label define _Ak1c9PwHnl 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb0n _Ak1c9PwHnl

label variable hdxb1an "L CMP 1st Narrowing"
label define _lC47RZb072 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb1an _lC47RZb072

label variable hdxb1bn "L IP 1st Narrowing"
label define _w6SSuJZQR6 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb1bn _w6SSuJZQR6

label variable hdxb2an "L DIP 2nd Narrowing"
label define _hEkecMtz4H 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb2an _hEkecMtz4H

label variable hdxb2bn "L PIP 2nd Narrowing"
label define _zV6fs3ixyY 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb2bn _zV6fs3ixyY

label variable hdxb3an "L DIP 3rd Narrowing"
label define _GMaglPp5Sj 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb3an _GMaglPp5Sj

label variable hdxb3bn "L PIP 3rd Narrowing"
label define _kMmxNC0x6J 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb3bn _kMmxNC0x6J

label variable hdxb4an "L DIP 4th Narrowing"
label define _UJKFfefBXE 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb4an _UJKFfefBXE

label variable hdxb4bn "L PIP 4th Narrowing"
label define _HkYurS8Egt 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb4bn _HkYurS8Egt

label variable hdxb5an "L DIP 5th Narrowing"
label define _cvyjF9XhGa 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb5an _cvyjF9XhGa

label variable hdxb5bn "L PIP 5th Narrowing"
label define _UfcFLpKv0v 0 "Normal" 1 "OARSI Grade 1" 2 "OARSI Grade 2" 3 "OARSI Grade 3" 9 "Unknown"
label values hdxb5bn _UfcFLpKv0v

label variable hdxb0s "L wrist Sclerosis"
label define _k6ZgzRUHos 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb0s _k6ZgzRUHos

label variable hdxb1as "L CMP 1st Sclerosis"
label define _LdEqyWFfMy 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1as _LdEqyWFfMy

label variable hdxb1bs "L IP 1st Sclerosis"
label define _u1Bo6TOwAa 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1bs _u1Bo6TOwAa

label variable hdxb2as "L DIP 2nd Sclerosis"
label define _pHwOcgqJ6y 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2as _pHwOcgqJ6y

label variable hdxb2bs "L PIP 2nd Sclerosis"
label define _CZqoGe8mgr 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2bs _CZqoGe8mgr

label variable hdxb3as "L DIP 3rd Sclerosis"
label define _ZNkG5z2OUx 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3as _ZNkG5z2OUx

label variable hdxb3bs "L PIP 3rd Sclerosis"
label define _NErEEv2M83 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3bs _NErEEv2M83

label variable hdxb4as "L DIP 4th Sclerosis"
label define _Zfi1tsGTxC 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4as _Zfi1tsGTxC

label variable hdxb4bs "L PIP 4th Sclerosis"
label define _VJSI3j18D0 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4bs _VJSI3j18D0

label variable hdxb5as "L DIP 5th Sclerosis"
label define _zEcYTJQ9VH 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5as _zEcYTJQ9VH

label variable hdxb5bs "L PIP 5th Sclerosis"
label define _zDkttFtPTW 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5bs _zDkttFtPTW

label variable hdxb0d "L wrist Deformity"
label define _IazX86EmQK 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb0d _IazX86EmQK

label variable hdxb1ad "L CMP 1st Deformity"
label define _orYu1JploD 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1ad _orYu1JploD

label variable hdxb1bd "L IP 1st Deformity"
label define _ly8eOfK535 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1bd _ly8eOfK535

label variable hdxb2ad "L DIP 2nd Deformity"
label define _xa7EAaqbAw 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2ad _xa7EAaqbAw

label variable hdxb2bd "L PIP 2nd Deformity"
label define _mykeTTo3bq 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2bd _mykeTTo3bq

label variable hdxb3ad "L DIP 3rd Deformity"
label define _m5Otq1OGp7 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3ad _m5Otq1OGp7

label variable hdxb3bd "L PIP 3rd Deformity"
label define _er7N2nv1uu 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3bd _er7N2nv1uu

label variable hdxb4ad "L DIP 4th Deformity"
label define _CtT3pvRJi8 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4ad _CtT3pvRJi8

label variable hdxb4bd "L PIP 4th Deformity"
label define _XLUUig1wAp 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4bd _XLUUig1wAp

label variable hdxb5ad "L DIP 5th Deformity"
label define _v2QoqEc3XR 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5ad _v2QoqEc3XR

label variable hdxb5bd "L PIP 5th Deformity"
label define _WrHqXMc7rP 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5bd _WrHqXMc7rP

label variable hdxb0c "L wrist Chondro calcinosis"
label define _nMb7r9mypW 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb0c _nMb7r9mypW

label variable hdxb1ac "L CMP 1st Chondro calcinosis"
label define _U9lTHkKuew 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1ac _U9lTHkKuew

label variable hdxb1bc "L IP 1st Chondro calcinosis"
label define _kHCQsNVl1c 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1bc _kHCQsNVl1c

label variable hdxb2ac "L DIP 2nd Chondro calcinosis"
label define _egF6OwXnkB 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2ac _egF6OwXnkB

label variable hdxb2bc "L PIP 2nd Chondro calcinosis"
label define _sK58dmx5Va 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2bc _sK58dmx5Va

label variable hdxb3ac "L DIP 3rd Chondro calcinosis"
label define _lSKi3wUm7R 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3ac _lSKi3wUm7R

label variable hdxb3bc "L PIP 3rd Chondro calcinosis"
label define _UoE6FzOKYR 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3bc _UoE6FzOKYR

label variable hdxb4ac "L DIP 4th Chondro calcinosis"
label define _S4VVdBLfEP 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4ac _S4VVdBLfEP

label variable hdxb4bc "L PIP 4th Chondro calcinosis"
label define _CI8m6BtQ1B 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4bc _CI8m6BtQ1B

label variable hdxb5ac "L DIP 5th Chondro calcinosis"
label define _evPlsc77CM 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5ac _evPlsc77CM

label variable hdxb5bc "L PIP 5th Chondro calcinosis"
label define _jKWeRyByzm 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5bc _jKWeRyByzm

label variable hdxb0t "L wrist Old trauma"
label define _aipeJNouS2 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb0t _aipeJNouS2

label variable hdxb1at "L CMP 1st Old trauma"
label define _YvzjGcNfGN 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1at _YvzjGcNfGN

label variable hdxb1bt "L IP 1st Old trauma"
label define _ZLsT32JMIj 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb1bt _ZLsT32JMIj

label variable hdxb2at "L DIP 2nd Old trauma"
label define _RgMRKBJb79 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2at _RgMRKBJb79

label variable hdxb2bt "L PIP 2nd Old trauma"
label define _CRV3gy5NIW 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb2bt _CRV3gy5NIW

label variable hdxb3at "L DIP 3rd Old trauma"
label define _V0QVFBtlKr 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3at _V0QVFBtlKr

label variable hdxb3bt "L PIP 3rd Old trauma"
label define _fNGaWwFs68 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb3bt _fNGaWwFs68

label variable hdxb4at "L DIP 4th Old trauma"
label define _rgyrOJQQoZ 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4at _rgyrOJQQoZ

label variable hdxb4bt "L PIP 4th Old trauma"
label define _H5V90Ww8vm 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb4bt _H5V90Ww8vm

label variable hdxb5at "L DIP 5th Old trauma"
label define _SFbsQgDT7H 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5at _SFbsQgDT7H

label variable hdxb5bt "L PIP 5th Old trauma"
label define _AY2ZoDhqsI 0 "Absent" 1 "Present" 9 "Unknown"
label values hdxb5bt _AY2ZoDhqsI

label variable hdxbks "KL Grade for LEFT hand"

label variable auto_id_hanxra "Unique Teleform Number"

label variable crf_parent_name_hanxra "CRF Parent Name"

label variable study_name_hanxra "Study Name"


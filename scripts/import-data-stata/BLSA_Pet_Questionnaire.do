clear
import delimited "../data-csv/BLSA_Pet_Questionnaire.csv", bindquote(strict)

label variable idno "Participant ID"

label variable subject_id "Participant ID"

label variable visit "Visit Number"

label variable event_name "Visit Number"

label variable crf_version_petque "CRF Version"

label variable date_petque "Date Completed"

// Generate 'date version' of the 'date_petque' variable
gen _date_petque = date(date_petque, "YMD")
format _date_petque %td

label variable blank_petque "Blank Form"

label variable hai01 "Do you currently have any pets"
label define _YR7vBklF6X 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai01 _YR7vBklF6X

label variable hai02da "Currently have dog"
label define _lT6wqTenfn 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02da _lT6wqTenfn

label variable hai02db "How many dogs"

label variable hai02ca "Currently have cat"
label define _Ux5AIVR4TL 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02ca _Ux5AIVR4TL

label variable hai02cb "How many cats"

label variable hai02sa "Currently have small mammal"
label define _jCjQ9HvkBj 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02sa _jCjQ9HvkBj

label variable hai02sb "How many small mammals"

label variable hai02ba "Currently have birds"
label define _nVtiMZc7iv 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02ba _nVtiMZc7iv

label variable hai02bb "How many birds"

label variable hai02fa "Currently have fish"
label define _du3S6vNk7g 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02fa _du3S6vNk7g

label variable hai02fb "How many fish"

label variable hai02ra "Currently have reptile"
label define _jPIsPPe4AA 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02ra _jPIsPPe4AA

label variable hai02rb "How many reptiles"

label variable hai02oa "Currently have Other pets"
label define _ejHuoCESI0 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai02oa _ejHuoCESI0

label variable hai02ob "How many other"

label variable hai03r1 "Enjoy love animals"

label variable hai02r2 "Protection"

label variable hai02r3 "Companionship"

label variable hai02r4 "Playmate for child"

label variable hai02r5 "Something I could take care of"

label variable hai02r6 "Something to keep me busy"

label variable hai02r7 "Want something to keep me active"

label variable hai03r8 "Therapy (eg guide dog)"

label variable hai03r9 "Was given this pet"

label variable hai03r10 "Other"

label variable hai03r11 "Don't know"

label variable hai03r12 "Refused"

label variable hai04 "Most important reason for pet"
label define _v4iTYMZAm9 1 "Enjoy (love) animals" 10 "Other" 2 "Protection" 3 "Companionship" 4 "Playmate for child" 5 "Want something I could take care of" 6 "Want something to keep me busy (occupy the time)" 7 "Want something to keep me active (get exercise)" 8 "Therapy (eg: guide dog)" 9 "Was given this pet" 98 "Don't know" 99 "Refused"
label values hai04 _v4iTYMZAm9

label variable hai05 "How long have you had the pet you've had the longest"
label define _uxoJwyf9aW 1 "Less than 1 year" 2 "1-2 years" 3 "3-5 years" 4 "6-9 years" 5 "10+ years" 6 "Always" 7 "Refused" 8 "Don't know"
label values hai05 _uxoJwyf9aW

label variable poh1yr "Pet ownership 1 year"

label variable poh1yrother "Pet ownership 1 year other"

label variable poh2yr "Pet ownership 2 year"

label variable poh2yrother "Pet ownership 2 year other"

label variable poh3yr "Pet ownership 3 year"

label variable poh3yrother "Pet ownership 3 year other"

label variable poh4yr "Pet ownership 4 year"

label variable poh4yrother "Pet ownership 4 year other"

label variable poh5yr "Pet ownership 5 year"

label variable poh5yrother "Pet ownership 5 year other"

label variable poh6yr "Pet ownership 6 year"

label variable poh6yrother "Pet ownership 6 year other"

label variable poh7yr "Pet ownership 7 year"

label variable poh7yrother "Pet ownership 7 year other"

label variable poh8yr "Pet ownership 8 year"

label variable poh8yrother "Pet ownership 8 year other"

label variable poh9yr "Pet ownership 9 year"

label variable poh9yrother "Pet ownership 9 year other"

label variable poh10yr "Pet ownership 10 year"

label variable poh10yrother "Pet ownership 19 year other"

label variable hai07 "How often have you declined to visit family or friends"
label define _HukEi06caW 0 "Never" 1 "Almost never" 2 "Afew times" 3 "Several times" 4 "Often"
label values hai07 _HukEi06caW

label variable hai08 "How often have you delayed refused medical care"
label define _KA0G34eHHJ 0 "Never" 1 "Almost never" 2 "Afew times" 3 "Several times" 4 "Often"
label values hai08 _KA0G34eHHJ

label variable hai09 "How often have pet expenses impacted your ability to pay for necessities"
label define _wjK4u09S38 0 "Never" 1 "Almost never" 2 "Afew times" 3 "Several times" 4 "Often"
label values hai09 _wjK4u09S38

label variable hai10 "How often have you needed medical attention because you were scratched bitten or tripped by pet"
label define _W8NPIGj3cH 0 "Never" 1 "Almost never" 2 "Afew times" 3 "Several times" 4 "Often"
label values hai10 _W8NPIGj3cH

label variable hai11 "Pet encourages you to be more socially active"
label define _f4MtSWcSER 0 "No" 1 "A little" 2 "Some" 3 "A lot"
label values hai11 _f4MtSWcSER

label variable hai12 "Does having a pet(s) encourage you to take better care of your health"
label define _wtN1V36ce9 0 "No" 1 "A little" 2 "Some" 3 "A lot"
label values hai12 _wtN1V36ce9

label variable hai16 "What is your favorite pet"
label define _Sr0TxTH3RF 1 "Dog" 2 "Cat" 3 "Other"
label values hai16 _Sr0TxTH3RF

label variable hai16com "Favorite pet other comment"

label variable hai13 "Whose decision was it to get the pet"
label define _Go8rbhdDf6 1 "You alone" 2 "You and someone else" 3 "Someone else alone" 7 "Refused" 8 "Don't know"
label values hai13 _Go8rbhdDf6

label variable hai14 "Who is most responsible for the care and feeding of your pet"
label define _rXg1mC1tX0 1 "You alone" 2 "You and someone else" 3 "Someone else alone" 7 "Refused" 8 "Don't know"
label values hai14 _rXg1mC1tX0

label variable hai15 "Rate pets overall health"
label define _Xf217xxZ2x 1 "Excellent" 2 "Very good" 3 "Good" 4 "Fair" 5 "Poor" 7 "Refused" 8 "Don't know"
label values hai15 _Xf217xxZ2x

label variable hai17a "My pet means more to me than any of my friends"
label define _BNxcLFtdNc 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17a _BNxcLFtdNc

label variable hai17b "Quite often I confide in my pet"
label define _tTSwbB96tC 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17b _tTSwbB96tC

label variable hai17c "Believe pets should have same rights privileges as family members"
label define _VlykaZqrW0 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17c _VlykaZqrW0

label variable hai17d "Believe my pet is my best friend"
label define _VfX16X6gzn 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17d _VfX16X6gzn

label variable hai17e "Often my feelings toward people are affected by the way they react to my pet"
label define _A1sF92Gtas 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17e _A1sF92Gtas

label variable hai17f "Love pet because it is more loyal than most people"
label define _uHXoEfsYlH 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17f _uHXoEfsYlH

label variable hai17g "Enjoy showing others pictures of pet"
label define _i1eMdKDVG7 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17g _i1eMdKDVG7

label variable hai17h "I think my pet is just a pet"
label define _Nw7nBlYVRZ 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17h _Nw7nBlYVRZ

label variable hai17i "I love my pet because it never judges me"
label define _HsDp3s9oHH 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17i _HsDp3s9oHH

label variable hai17j "My pet knows when I'm feeling bad"
label define _ZSwrTgqJ3x 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17j _ZSwrTgqJ3x

label variable hai17k "Often talk to other people about my pet"
label define _OCPo1O8y9K 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17k _OCPo1O8y9K

label variable hai17l "My pet understands me"
label define _iswvVlo4nP 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17l _iswvVlo4nP

label variable hai17m "Believe loving my pet helps me stay healthy"
label define _sYcf7yM6Vc 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17m _sYcf7yM6Vc

label variable hai17n "Pets deserve as much respect as humans do"
label define _prkCOfamnr 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17n _prkCOfamnr

label variable hai17o "My pet and I have a very close relationship"
label define _dvfEUlSNKi 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17o _dvfEUlSNKi

label variable hai17p "I would do almost anything to take care of my pet"
label define _KSDNgvhfxf 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17p _KSDNgvhfxf

label variable hai17q "I play with my pet quite often"
label define _izaSZvKoEG 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17q _izaSZvKoEG

label variable hai17r "I consider my pet to be a great companion"
label define _ZpXeHkjRQq 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17r _ZpXeHkjRQq

label variable hai17s "My pet makes me feel happy"
label define _E05XmnB91d 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17s _E05XmnB91d

label variable hai17t "I feel that my pet is a part of my family"
label define _nga0T3fqrd 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17t _nga0T3fqrd

label variable hai17u "I am not very attached to my pet"
label define _bytbEg6n39 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17u _bytbEg6n39

label variable hai17v "Owning a pet adds to my happiness"
label define _XuNMeDM29E 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17v _XuNMeDM29E

label variable hai17w "I consider my pet to be a friend"
label define _Xo7SReULIL 1 "Disagree Strongly" 2 "Disagree Somewhat" 3 "Agree Somewhat" 4 "Agree Strongly" 8 "Don't know"
label values hai17w _Xo7SReULIL

label variable hai18 "Do you walk your dog"
label define _dkjbaknGBI 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai18 _dkjbaknGBI

label variable hai19 "What is the main reason you don't walk your dog"
label define _Zl0Bp5MyWv 1 "Dog too old or unable to walk" 10 "Dog too big/too strong" 11 "Other" 2 "Dog self-exercised goes out by him/herself" 3 "Outdoor dog stays in pen" 4 "Dod not well behaved doesn't walk well on leash" 5 "Respondent too old or unable to walk" 6 "Someone else walks the dog" 7 "Respondent has no time or interest" 8 "Bad weather too cold/hot" 9 "Dog doesn't like to walk/exercise" 98 "Don't know" 99 "Refused"
label values hai19 _Zl0Bp5MyWv

label variable hai20a "How many times per day numeric"

label variable hai20b "Walk less than 1x day Dk Refused"
label define _zEy0QZ5Aho 1 "Less than once per day" 7 "Refused" 8 "Don't know"
label values hai20b _zEy0QZ5Aho

label variable hai21m "How many minutes walk dog"

label variable hai21h "How many hours walk dog"

label variable hai21d "Walk dog Dk Refused"
label define _EtkemH9gXv 7 "Refused" 8 "Don't know"
label values hai21d _EtkemH9gXv

label variable hai22 "Walk more or less because you have dog"
label define _Xy0kwsajhn 1 "A lot more" 2 "Somewhat more" 3 "About the same" 4 "Somewhat less" 5 "A lot less" 7 "Refused" 8 "Don't know"
label values hai22 _Xy0kwsajhn

label variable hai23 "Do you walk faster or slower when you walk without your dog"
label define _hg3bQCcdNu 1 "A lot faster" 2 "Somewhat faster" 3 "About the same speed" 4 "Somewhat slower" 5 "A lot slower" 6 "Never walk without my dog" 7 "Refused" 8 "Don't know"
label values hai23 _hg3bQCcdNu

label variable hai24 "Do you walk longer or shorter distance when you walk without your dog"
label define _lvURG3bkEu 1 "Much longer distance" 2 "Somewhat longer distance" 3 "About the same distance" 4 "Somewhat shorter distance" 5 "Much shorter distance" 6 "Never walk without my dog" 7 "Refused" 8 "Don't know"
label values hai24 _lvURG3bkEu

label variable hai25 "Why don't you have a pet"
label define _Yue3s1CtfC 1 "No interest" 2 "Too expensive" 3 "Too much time or work to care for pet" 4 "Allergies (own or household member)" 5 "Health risks" 6 "Other" 7 "Refused" 8 "Don't know"
label values hai25 _Yue3s1CtfC

label variable hai26 "Have you ever had a pet"
label define _EXgphqcVeb 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai26 _EXgphqcVeb

label variable hai27d "Had a dog in the past"
label define _e3fYju1MP1 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27d _e3fYju1MP1

label variable hai27c "Had a Cat in the past"
label define _f6zv8ev8lJ 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27c _f6zv8ev8lJ

label variable hai27s "Had a small mammal"
label define _FUn5D2hiKf 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27s _FUn5D2hiKf

label variable hai27b "Had a Bird in the past"
label define _PhflZzWrfe 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27b _PhflZzWrfe

label variable hai74f "Had Fish in the past"
label define _kHUyiFjbxp 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai74f _kHUyiFjbxp

label variable hai27r "Had a reptile in the past"
label define _vanrQsAYFh 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27r _vanrQsAYFh

label variable hai27o "Had Other pet in the past"
label define _s1lDI4QnFc 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai27o _s1lDI4QnFc

label variable hai28 "How many years has it been since you last had a pet"
label define _S3LF7CAiKc 1 "Less than 1 year" 2 "1-2 years" 3 "3-5 years" 4 "6-9 years" 5 "10-19 years" 6 "20-29 years" 7 "30+ years" 8 "Don't know" 9 "Refused"
label values hai28 _S3LF7CAiKc

label variable hai29 "Did you consider your pet a friend"
label define _DN571OxxUd 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai29 _DN571OxxUd

label variable hai30 "Did you talk to your pet"
label define _xORHhW2hMT 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai30 _xORHhW2hMT

label variable hai31 "Owning a pet added to your happiness"
label define _JLdEk5Rj0v 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai31 _JLdEk5Rj0v

label variable hai32 "Did you talk to others about your pet"
label define _oq73CCNKxw 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai32 _oq73CCNKxw

label variable hai33 "Did you play with your pet"
label define _zhhAgYUOr3 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai33 _zhhAgYUOr3

label variable hai34 "Did your pet know how you felt about things"
label define _oLP3fyxCBH 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai34 _oLP3fyxCBH

label variable hai35 "Do you have regular contact with other peoples pets"
label define _LoGPBJimxK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai35 _LoGPBJimxK

label variable hai36d "Have regular contact with Dog"
label define _k16FaO9Ldv 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36d _k16FaO9Ldv

label variable hai36c "Have regular contact with Cat"
label define _MNzSCOZnIs 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36c _MNzSCOZnIs

label variable hai36s "Have regular contact with small mammal"
label define _ugpqpnniI4 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36s _ugpqpnniI4

label variable hai36b "Have regular contact with Bird"
label define _e4fuSGH0hd 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36b _e4fuSGH0hd

label variable hai36f "Have regular contact with Fish"
label define _kY50JjqDPj 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36f _kY50JjqDPj

label variable hai36r "Have regular contact with Reptile"
label define _mdESNbeSwK 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36r _mdESNbeSwK

label variable hai36o "Have regular contact with Other pet"
label define _UTgxQl8Wso 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai36o _UTgxQl8Wso

label variable hai37 "Do you help feed or care for any of these pets?"
label define _V6WVDen4rU 0 "No" 1 "Yes" 7 "Refused" 8 "Don't know"
label values hai37 _V6WVDen4rU

label variable hai38 "If answer to Q32 is a dog how often do you walk with someone else's dog"
label define _ndAT7NG9j6 1 "Never" 2 "Once a week or less" 3 "Several times a week" 4 "Once a day or more" 7 "Refused" 8 "Don't know"
label values hai38 _ndAT7NG9j6

label variable crf_parent_name_petque "CRF Parent Name"

label variable event_repeat "Event Repeat"

label variable hai02r2_1 "Protection : Protection (Checkbox Indicator)"

label variable hai02r3_1 "Companionship : Conpanionship (Checkbox Indicator)"

label variable hai02r4_1 "Playmate for child : Playmate for child (Checkbox Indicator)"

label variable hai02r5_1 "Something I could take care of : Want something I could take care of (Checkbox Indicator)"

label variable hai02r6_1 "Something to keep me busy : Want something to keep me busy (occupy time) (Checkbox Indicator)"

label variable hai02r7_1 "Want something to keep me active : Want something to keep me active (exercise) (Checkbox Indicator)"

label variable hai03r10_1 "Other : Other (Checkbox Indicator)"

label variable hai03r1_1 "Enjoy love animals : Enjoy (love) animals (Checkbox Indicator)"

label variable hai03r11_8 "Don't know : Don't know (Checkbox Indicator)"

label variable hai03r12_7 "Refused : Refused (Checkbox Indicator)"

label variable hai03r8_1 "Therapy (eg guide dog) : Therapy (e.g. guide dog) (Checkbox Indicator)"

label variable item_group_repeat_petque "Item Group Repeate"

label variable poh10yr_1 "Pet ownership 10 year : Dog (Checkbox Indicator)"

label variable poh10yr_2 "Pet ownership 10 year : Cat (Checkbox Indicator)"

label variable poh10yr_3 "Pet ownership 10 year : Bird (Checkbox Indicator)"

label variable poh10yr_4 "Pet ownership 10 year : Other (Checkbox Indicator)"

label variable poh10yr_5 "Pet ownership 10 year : Small Mammal (Checkbox Indicator)"

label variable poh10yr_6 "Pet ownership 10 year : Fish (Checkbox Indicator)"

label variable poh10yr_7 "Pet ownership 10 year : Reptile (Checkbox Indicator)"

label variable poh1yr_1 "Pet ownership 1 year : Dog (Checkbox Indicator)"

label variable poh1yr_2 "Pet ownership 1 year : Cat (Checkbox Indicator)"

label variable poh1yr_3 "Pet ownership 1 year : Bird (Checkbox Indicator)"

label variable poh1yr_4 "Pet ownership 1 year : Other (Checkbox Indicator)"

label variable poh1yr_5 "Pet ownership 1 year : Small Mammal (Checkbox Indicator)"

label variable poh1yr_6 "Pet ownership 1 year : Fish (Checkbox Indicator)"

label variable poh1yr_7 "Pet ownership 1 year : Reptile (Checkbox Indicator)"

label variable poh2yr_1 "Pet ownership 2 year : Dog (Checkbox Indicator)"

label variable poh2yr_2 "Pet ownership 2 year : Cat (Checkbox Indicator)"

label variable poh2yr_3 "Pet ownership 2 year : Bird (Checkbox Indicator)"

label variable poh2yr_4 "Pet ownership 2 year : Other (Checkbox Indicator)"

label variable poh2yr_5 "Pet ownership 2 year : Small Mammal (Checkbox Indicator)"

label variable poh2yr_6 "Pet ownership 2 year : Fish (Checkbox Indicator)"

label variable poh2yr_7 "Pet ownership 2 year : Reptile (Checkbox Indicator)"

label variable poh3yr_1 "Pet ownership 3 year : Dog (Checkbox Indicator)"

label variable poh3yr_2 "Pet ownership 3 year : Cat (Checkbox Indicator)"

label variable poh3yr_3 "Pet ownership 3 year : Bird (Checkbox Indicator)"

label variable poh3yr_4 "Pet ownership 3 year : Other (Checkbox Indicator)"

label variable poh3yr_5 "Pet ownership 3 year : Small Mammal (Checkbox Indicator)"

label variable poh3yr_6 "Pet ownership 3 year : Fish (Checkbox Indicator)"

label variable poh3yr_7 "Pet ownership 3 year : Reptile (Checkbox Indicator)"

label variable poh4yr_1 "Pet ownership 4 year : Dog (Checkbox Indicator)"

label variable poh4yr_2 "Pet ownership 4 year : Cat (Checkbox Indicator)"

label variable poh4yr_3 "Pet ownership 4 year : Bird (Checkbox Indicator)"

label variable poh4yr_4 "Pet ownership 4 year : Other (Checkbox Indicator)"

label variable poh4yr_5 "Pet ownership 4 year : Small Mammal (Checkbox Indicator)"

label variable poh4yr_6 "Pet ownership 4 year : Fish (Checkbox Indicator)"

label variable poh4yr_7 "Pet ownership 4 year : Reptile (Checkbox Indicator)"

label variable poh5yr_1 "Pet ownership 5 year : Dog (Checkbox Indicator)"

label variable poh5yr_2 "Pet ownership 5 year : Cat (Checkbox Indicator)"

label variable poh5yr_3 "Pet ownership 5 year : Bird (Checkbox Indicator)"

label variable poh5yr_4 "Pet ownership 5 year : Other (Checkbox Indicator)"

label variable poh5yr_5 "Pet ownership 5 year : Small Mammal (Checkbox Indicator)"

label variable poh5yr_6 "Pet ownership 5 year : Fish (Checkbox Indicator)"

label variable poh5yr_7 "Pet ownership 5 year : Reptile (Checkbox Indicator)"

label variable poh6yr_1 "Pet ownership 6 year : Dog (Checkbox Indicator)"

label variable poh6yr_2 "Pet ownership 6 year : Cat (Checkbox Indicator)"

label variable poh6yr_3 "Pet ownership 6 year : Bird (Checkbox Indicator)"

label variable poh6yr_4 "Pet ownership 6 year : Other (Checkbox Indicator)"

label variable poh6yr_5 "Pet ownership 6 year : Small Mammal (Checkbox Indicator)"

label variable poh6yr_6 "Pet ownership 6 year : Fish (Checkbox Indicator)"

label variable poh6yr_7 "Pet ownership 6 year : Reptile (Checkbox Indicator)"

label variable poh7yr_1 "Pet ownership 7 year : Dog (Checkbox Indicator)"

label variable poh7yr_2 "Pet ownership 7 year : Cat (Checkbox Indicator)"

label variable poh7yr_3 "Pet ownership 7 year : Bird (Checkbox Indicator)"

label variable poh7yr_4 "Pet ownership 7 year : Other (Checkbox Indicator)"

label variable poh7yr_5 "Pet ownership 7 year : Small Mammal (Checkbox Indicator)"

label variable poh7yr_6 "Pet ownership 7 year : Fish (Checkbox Indicator)"

label variable poh7yr_7 "Pet ownership 7 year : Reptile (Checkbox Indicator)"

label variable poh8yr_1 "Pet ownership 8 year : Dog (Checkbox Indicator)"

label variable poh8yr_2 "Pet ownership 8 year : Cat (Checkbox Indicator)"

label variable poh8yr_3 "Pet ownership 8 year : Bird (Checkbox Indicator)"

label variable poh8yr_4 "Pet ownership 8 year : Other (Checkbox Indicator)"

label variable poh8yr_5 "Pet ownership 8 year : Small Mammal (Checkbox Indicator)"

label variable poh8yr_6 "Pet ownership 8 year : Fish (Checkbox Indicator)"

label variable poh8yr_7 "Pet ownership 8 year : Reptile (Checkbox Indicator)"

label variable poh9yr_1 "Pet ownership 9 year : Dog (Checkbox Indicator)"

label variable poh9yr_2 "Pet ownership 9 year : Cat (Checkbox Indicator)"

label variable poh9yr_3 "Pet ownership 9 year : Bird (Checkbox Indicator)"

label variable poh9yr_4 "Pet ownership 9 year : Other (Checkbox Indicator)"

label variable poh9yr_5 "Pet ownership 9 year : Small Mammal (Checkbox Indicator)"

label variable poh9yr_6 "Pet ownership 9 year : Fish (Checkbox Indicator)"

label variable study_name_petque "Study Name"


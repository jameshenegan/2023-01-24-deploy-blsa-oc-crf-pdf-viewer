clear
import delimited "../data-csv/39_meddb_medication_database.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable meddb_rxnorm1 "RxNORM database search"

label variable meddb_rxnorm2 "RxNORM database search"

label variable meddb_rxnorm3 "RxNORM database search"

label variable meddb_rxnorm4 "RxNORM database search"

label variable meddb_rxnorm5 "RxNORM database search"

label variable meddb_rxnorm6 "RxNORM database search"

label variable meddb_rxnorm7 "RxNORM database search"

label variable meddb_rxnorm8 "RxNORM database search"

label variable meddb_rxnorm9 "RxNORM database search"

label variable meddb_rxnorm10 "RxNORM database search"

label variable meddb_rxnorm11 "RxNORM database search"

label variable meddb_rxnorm12 "RxNORM database search"

label variable meddb_rxnorm13 "RxNORM database search"

label variable meddb_rxnorm14 "RxNORM database search"

label variable meddb_rxnorm15 "RxNORM database search"

label variable meddb_rxnorm16 "RxNORM database search"

label variable meddb_rxnorm17 "RxNORM database search"

label variable meddb_rxnorm18 "RxNORM database search"

label variable meddb_rxnorm19 "RxNORM database search"

label variable meddb_rxnorm20 "RxNORM database search"

label variable meddb_rxnorm21 "RxNORM database search"

label variable meddb_rxnorm22 "RxNORM database search"

label variable meddb_rxnorm23 "RxNORM database search"

label variable meddb_rxnorm24 "RxNORM database search"

label variable meddb_rxnorm25 "RxNORM database search"

label variable meddb_rxnorm26 "RxNORM database search"

label variable meddb_rxnorm27 "RxNORM database search"

label variable meddb_rxnorm28 "RxNORM database search"

label variable meddb_rxnorm29 "RxNORM database search"

label variable meddb_rxnorm30 "RxNORM database search"

label variable meddb_rxnorm_yn1 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn1 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn1 _meddb_rxnorm_yn1

label variable meddb_rxnorm_yn2 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn2 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn2 _meddb_rxnorm_yn2

label variable meddb_rxnorm_yn3 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn3 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn3 _meddb_rxnorm_yn3

label variable meddb_rxnorm_yn4 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn4 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn4 _meddb_rxnorm_yn4

label variable meddb_rxnorm_yn5 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn5 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn5 _meddb_rxnorm_yn5

label variable meddb_rxnorm_yn6 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn6 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn6 _meddb_rxnorm_yn6

label variable meddb_rxnorm_yn7 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn7 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn7 _meddb_rxnorm_yn7

label variable meddb_rxnorm_yn8 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn8 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn8 _meddb_rxnorm_yn8

label variable meddb_rxnorm_yn9 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn9 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn9 _meddb_rxnorm_yn9

label variable meddb_rxnorm_yn10 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn10 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn10 _meddb_rxnorm_yn10

label variable meddb_rxnorm_yn11 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn11 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn11 _meddb_rxnorm_yn11

label variable meddb_rxnorm_yn12 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn12 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn12 _meddb_rxnorm_yn12

label variable meddb_rxnorm_yn13 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn13 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn13 _meddb_rxnorm_yn13

label variable meddb_rxnorm_yn14 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn14 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn14 _meddb_rxnorm_yn14

label variable meddb_rxnorm_yn15 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn15 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn15 _meddb_rxnorm_yn15

label variable meddb_rxnorm_yn16 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn16 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn16 _meddb_rxnorm_yn16

label variable meddb_rxnorm_yn17 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn17 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn17 _meddb_rxnorm_yn17

label variable meddb_rxnorm_yn18 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn18 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn18 _meddb_rxnorm_yn18

label variable meddb_rxnorm_yn19 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn19 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn19 _meddb_rxnorm_yn19

label variable meddb_rxnorm_yn20 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn20 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn20 _meddb_rxnorm_yn20

label variable meddb_rxnorm_yn21 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn21 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn21 _meddb_rxnorm_yn21

label variable meddb_rxnorm_yn22 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn22 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn22 _meddb_rxnorm_yn22

label variable meddb_rxnorm_yn23 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn23 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn23 _meddb_rxnorm_yn23

label variable meddb_rxnorm_yn24 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn24 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn24 _meddb_rxnorm_yn24

label variable meddb_rxnorm_yn25 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn25 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn25 _meddb_rxnorm_yn25

label variable meddb_rxnorm_yn26 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn26 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn26 _meddb_rxnorm_yn26

label variable meddb_rxnorm_yn27 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn27 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn27 _meddb_rxnorm_yn27

label variable meddb_rxnorm_yn28 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn28 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn28 _meddb_rxnorm_yn28

label variable meddb_rxnorm_yn29 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn29 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn29 _meddb_rxnorm_yn29

label variable meddb_rxnorm_yn30 "Was the medication found in the RxNORM database?"
label define _meddb_rxnorm_yn30 1 "Exact match" 2 "Close match" 0 "No match"
label values meddb_rxnorm_yn30 _meddb_rxnorm_yn30


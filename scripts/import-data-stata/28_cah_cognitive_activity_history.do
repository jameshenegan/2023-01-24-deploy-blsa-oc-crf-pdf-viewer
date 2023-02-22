clear
import delimited "../data-csv/28_cah_cognitive_activity_history.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable cah_newspapers "Read newspapers when you were 30 to 45 years old (Clarion Ledger, New York Times, Wall Street Journal)"
label define _cah_newspapers 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_newspapers _cah_newspapers

label variable cah_magazines "Read magazines when you were 30 to 45 years old (business, sports, arts, or hobby magazines)"
label define _cah_magazines 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_magazines _cah_magazines

label variable cah_books "Read books when you were 30 to 45 years old (novels or biographies)"
label define _cah_books 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_books _cah_books

label variable cah_games "Play games when you were 30 to 45 years old (playing cards, bridge, checkers, or other board games or doing crossword puzzles)"
label define _cah_games 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_games _cah_games

label variable cah_music "Play music when you were 30 to 45 years old (being in a choir, playing a musical instrument, or playing in a band)"
label define _cah_music 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_music _cah_music

label variable cah_art "Artistic activities when you were 30 to 45 years old (painting, drawing, or sculpting)"
label define _cah_art 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_art _cah_art

label variable cah_crafts "Craft activities when you were 30 to 45 years old (woodworking, pottery, quilting, or sewing)"
label define _cah_crafts 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_crafts _cah_crafts

label variable cah_groups "Group activities when you were 30 to 45 years old (book clubs, Bible studies, stock clubs, or other organized discussion groups)"
label define _cah_groups 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_groups _cah_groups

label variable cah_social "Social activities when you were 30 to 45 years old (going to the theater, movies, or concerts, going out with friends, travelling)"
label define _cah_social 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_social _cah_social

label variable cah_computer "Computer activities when you were 30 to 45 years old (using the internet for email, shopping, research, or computer games)"
label define _cah_computer 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values cah_computer _cah_computer

label variable cah_tv "How many hours per day did you spend watching television when you were 30 to 45 years old?"
label define _cah_tv 0 "< 1 hour" 1 "1-2 hours" 2 "3-4 hours" 3 "5-6 hours" 4 "7-8 hours" 5 ">8 hours" 888 "Don't know" 999 "Refused"
label values cah_tv _cah_tv


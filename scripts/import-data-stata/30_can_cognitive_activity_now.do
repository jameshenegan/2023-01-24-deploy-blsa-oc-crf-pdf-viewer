clear
import delimited "../data-csv/30_can_cognitive_activity_now.csv", bindquote(strict)

label variable soa_id "SOA ID"

label variable can_newspapers "Read newspapers in the last 12 months (Clarion Ledger, New York Times, Wall Street Journal)"
label define _can_newspapers 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_newspapers _can_newspapers

label variable can_magazines "Read magazines in the last 12 months (business, sports, arts, or hobby magazines)"
label define _can_magazines 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_magazines _can_magazines

label variable can_books "Read books in the last 12 months (novels or biographies)"
label define _can_books 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_books _can_books

label variable can_games "Play games in the last 12 months (playing cards, bridge, checkers, or other board games or doing crossword puzzles)"
label define _can_games 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_games _can_games

label variable can_music "Play music in the last 12 months (being in a choir, playing a musical instrument, or playing in a band)"
label define _can_music 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_music _can_music

label variable can_art "Artistic activities in the last 12 months (painting, drawing, or sculpting)"
label define _can_art 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_art _can_art

label variable can_crafts "Craft activities in the last 12 months (woodworking, pottery, quilting, or sewing)"
label define _can_crafts 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_crafts _can_crafts

label variable can_groups "Group activities in the last 12 months (book clubs, Bible studies, stock clubs, or other organized discussion groups)"
label define _can_groups 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_groups _can_groups

label variable can_social "Social activities in the last 12 months (going to the theater, movies, or concerts, going out with friends, travelling)"
label define _can_social 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_social _can_social

label variable can_computer "Computer activities in the last 12 months (using the internet for email, shopping, research, or computer games)"
label define _can_computer 0 "Never or Less Than Once a Month" 1 "Once a Month" 2 "2-3x per Month" 3 "1-2x per Week" 4 "3-4x per Week" 5 "5-6x per Week" 6 "Every Day"
label values can_computer _can_computer

label variable can_tv "How many hours per day did you spend watching television in the last 12 months?"
label define _can_tv 0 "< 1 hour" 1 "1-2 hours" 2 "3-4 hours" 3 "5-6 hours" 4 "7-8 hours" 5 ">8 hours" 888 "Don't know" 999 "Refused"
label values can_tv _can_tv


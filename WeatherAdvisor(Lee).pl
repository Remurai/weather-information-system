/* Introduction of the expert system */
go:-
    writeln('Hi, Nice to meet you!'),
    writeln('I am Lee, your personal weather advisor in Malaysia.'),
    writeln('I will ask you a few questions to determine which month is best for you.'),
    writeln('Kindly use yes or no to answer my questions.'),
    checkInput('Shall we begin?', loop, (writeln('Have a good trip to MALAYSIA!!!'))),
    clear.

/* The process of the expert system */
loop :-
    season(_),
    clear,
    nl,
    writeln('I hope this information will help you plan your travels.'),
    checkInput('Do you still want me to ask you again?', loop, (writeln('Have a good trip to MALAYSIA!!!'))).

/* Season facts and rules */
season(spring) :-
    /* AI Algorithm */
    check(outdoor),
    check(beach),
    (month(march);
    month(april);
    month(may); 
    error->writeln('March, April and May')),
    
    /* Display Information */
    nl,
    checkInput('Do you need more advise about it?', (writeln('The weather is calm and windy'),
                      writeln('It is good for beach expeditions, sightseeing, outdoor activities, jungle trekking or watersport.'),
                      writeln('It is SPRING season, so the rains are very meager.'),
                      writeln('Tips: Remember to bring sunscreens and an umbrella.')), true), !.

season(summer) :-
    /* AI Algorithm */
    check(outdoor),
    (month(june);
    month(july); 
    month(august); 
    error->writeln('June, July and August')),
    
    /* Display Information */
    writeln('Best Location to travel is KL, Penang, Borneo.'),
    nl,
    checkInput('Do you need more advise about it?', (writeln('The weather is dry and clear sky.'),
                      writeln('It is good for watersport, sightseeing or outdoor activities.'),
                      writeln('It is SUMMER season. Even though there is less rainfall, it is still completely unpredictable, so plan for wet weather and be flexible with your travel plans.'),
                      writeln('Tips: Remember to bring sunscreens and an umbrella.')), true), !.

season(autumn) :-
    /* AI Algorithm */
    check('East Coast'),
    (month(september);
    month(october);
    month(november); 
    error->writeln('September, October and November')),
    
    /* Display Information */
    writeln('Best Location to travel is KL, Penang, Cameron Highland.'),
    nl,
    checkInput('Do you need more advise about it?', (writeln('There is a gradual increase in the frequency of rains. Rain and thunderstorms happen daily.'),
                      writeln('It is good for outdoor activies at morning and indoor activities at evening.'),
                      writeln('It is AUTUMN season, so please make your plans for morning as rainfalls are during afternoon and evening.'),
                      writeln('Tips: Remember to bring an umbrella and the accommodations are cheaper.')), true), !.

season(winter) :-
    /* AI Algorithm */
    (month(january);
    month(february);
    month(december); 
    error->writeln('January, February and December')),
    
    /* Display Information */
    writeln('Best Location to travel is KL, Penang, Langkawi'),
    nl,
    checkInput('Do you need more advise about it?', (writeln('Luckily, there is severe rains and storms only on the East coast.'),
                      writeln('It is good for outdoor activies at morning and indoor activities at evening.'),
                      writeln('It is WINTER season, so please make your plans for morning as rainfalls are during afternoon and evening.'),
                      writeln('Tips: Travel around the West coast because the rain is barely felt and best to avoid travel to the East coast.')), true), !.

/* Month facts and rules */
month(january) :-
    /* AI Algorithm */
    check('Thaipusam'),
    
    /* Display Information */
    writeln('I recommend January.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 31 Celsius.'),
    writeln('The percipitation is 147mm.'),
    writeln('This month has Thaipusam.'), !.

month(february) :-
    /* AI Algorithm */
    check('Chinese New Year'),
    
    /* Display Information */
    writeln('I recommend February.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 137mm.'),
    writeln('This month has Chinese New Year.'), !.

month(march) :-
    /* AI Algorithm */
    check('Cameron Highland'),
    check('windy weather'),
    
    /* Display Information */
    writeln('I recommend March.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 33 Celsius.'),
    writeln('The percipitation is 218mm.'),
    writeln('Best Location to travel is Cameron Highland.'), !.

month(april) :-
    /* AI Algorithm */
    check('Cameron Highland'),
    
    /* Display Information */
    writeln('I recommend April.'),
    nl,	
    writeln('The mininum temperature is 23 Celsius and maximum is 33 Celsius.'),
    writeln('The percipitation is 264mm.'),
    writeln('Best Location to travel is Cameron Highland.'), !.

month(may) :-
    /* AI Algorithm */
    check('Borneo'),
    
    /* Display Information */
    writeln('I recommend May.'),
    nl,
    writeln('The mininum temperature is 23 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 209mm.'),
    writeln('This month has Sabahan cultures celebration and Wesak Day.'),
    writeln('Best Location to travel is Borneo.'), !.

month(june) :-
    /* AI Algorithm */
    check('Gawai'),
    
    /* Display Information */
    writeln('I recommend June.'),
    nl,
    writeln('The mininum temperature is 23 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 130mm.'),
    writeln('This month has Gawai Day.'), !.

month(july) :-
    /* AI Algorithm */
    check('Hari Raya Haji'),
    
    /* Display Information */
    writeln('I recommend July.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 141mm.'),
    writeln('This month has Hari Raya Haji.'), !.

month(august) :-
    /* AI Algorithm */
    check('National Day'),
    
    /* Display Information */
    writeln('I recommend August.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 154mm.'),
    writeln('This month has National Day.'), !.

month(september) :-
    /* AI Algorithm */
    check('Mooncake Festival'),
    
    /* Display Information */
    writeln('I recommend September.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 190mm.'),
    writeln('This month has Mooncake Festival.'), !.

month(october) :-
    /* AI Algorithm */
    check('International Music Day'),
    
    /* Display Information */
    writeln('I recommend October.'),
    nl,
    writeln('The mininum temperature is 23 Celsius and maximum is 32 Celsius.'),
    writeln('The percipitation is 268mm.'),
    writeln('This month has International Music Day.'), !.

month(november) :-
    /* AI Algorithm */
    check('Deepavali'),
    
    /* Display Information */
    writeln('I recommend November.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 31 Celsius.'),
    writeln('The percipitation is 278mm.'),
    writeln('This month has Deepavali.'), !.

month(december) :-
    /* AI Algorithm */
    check('Christmas'),
    
    /* Display Information */
    writeln('I recommend December.'),
    nl,
    writeln('The mininum temperature is 22 Celsius and maximum is 31 Celsius.'),
    writeln('The percipitation is 232mm.'),
    writeln('This month has Christmas.'), !.

/* Display Error Information */
error :-
    writeln('I am very sorry !'),
    writeln('It seems like I cannot find suitable month for you.'),
    writeln('However, I can recommend these months to you based on the questions you answered.'),
    nl, !.

/* Check error input and ask again */
checkInput(Text1, Text2, Text3) :-
    repeat,
    writeln(Text1),
    read(Ans),
    ((Ans = yes)->Text2; (Ans = no)->Text3; writeln('Just type yes or no!!!')->fail).

/* The process of AI thinking */
:- dynamic yes/1.
:- dynamic no/1.

/* Check question that have been answered */
check(Ques) :-
    (yes(Ques)->true);
    (no(Ques)->fail); 
    ask(Ques).

/* Ask question */
ask(Ques) :-
    write('Do you like '),
    write(Ques),
    write('? '),
    read(Ans),
    nl,
    /* assert all yes/no answer into database */
    ((Ans = yes)->assert(yes(Ques)); assert(no(Ques)),fail).

/* undo all yes/no assertions */
clear :- retract(yes(_)),fail.
clear :- retract(no(_)),fail.
clear.
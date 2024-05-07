/// @description Insert description here
// You can write your code in this editor
text [0] = "Hello World";
text [1] = "NEVER GONNA GIVE YOU UP NEVER GONNA LET YOU DOWN NEVER GONNA RUN AROUND AND DESERT YOU NEVER GONNA SAY GOODBYE NEVER GONNA MAKE YOU CRY";

text_current = 0;
text_last = 1;
text_width = 300;
text_x = 32;
text_y = 32;

char_current = 1;
char_speed = 0.25;
text[text_current] = string_wrap(text[text_current], text_width);
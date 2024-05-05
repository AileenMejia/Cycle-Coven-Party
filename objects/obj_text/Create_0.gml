/// @description Insert description here
// You can write your code in this editor
text [0] = "Hello World";
text [1] = "he will never give you up, never let you down, never run around and desert you he will never make you cry and will never say goodbye";

text_current = 0;
text_last = 1;
text_width = 300;
text_x = 32;
text_y = 32;

char_current = 1;
char_speed = 0.25;
text[text_current] = string_wrap(text[text_current], text_width);


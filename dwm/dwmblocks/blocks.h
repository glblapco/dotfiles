//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "0xbiel",					0,		0},
	{"", "battery",					5,		3},
	{"", "clock",					  60,		1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';

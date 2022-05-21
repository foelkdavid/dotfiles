//Modify this file to change what commands output to your statusbar, and recompile using the make command.
#define MODULES "~/.config/dwmblocks/modules"

static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", MODULES"/bluetooth/bluetooth.sh",					1,	0},
	{"", MODULES"/network/vpn.sh",						5,	0},
	{"", MODULES"/network/network.sh",					5,	0},
	{"", MODULES"/usage/cpu.sh",						5,	0},
	{"", MODULES"/usage/memory.sh",						5,	0},
	{"", MODULES"/date/date.sh",						10,	0},
	{"", MODULES"/date/time.sh",						60,	0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;

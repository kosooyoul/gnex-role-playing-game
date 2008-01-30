///////////////////////////////////////////////////////////////////////////
// ahyane.mc - Auto Created by GNEX IDE
// START:	2008/1/26:SEARCH GNEX ON INTERNET & IDE DOWNLOAD AND INSTALL
//			2008/1/27:BEGIN DESIGN(ROLLPLAY Mode, BASE SYSTEM)
//			2008/1/28:MAP LATER DESIGN & STATUS start
//			2008/1/29:SCROLL MAP WHEN ACTOR MOVE, DESIGN ITEM & SKILL in MENU
//			2008/1/30:장착아이템부분 디자인, 아이템/스킬/장비 아이콘 출력 테스트, 키 이벤트 코드/함수로 분리, NPC삽입 시도 및 NPC 랜덤이동루프 시도
//			2008/1/31:
///////////////////////////////////////////////////////////////////////////

#ifdef _GVM
%{
	#DEFINE SCRIPTVER	2
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE SCRIPTTYPE	1
	#DEFINE SCRIPTCPID	60000
	#DEFINE SCRIPTID	1
	#DEFINE SCRIPTNAME	"Ahyane"
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
%}
#else
%{
	#DEFINE PLAYERVER	4
	#DEFINE LCDCLASS	255
	#DEFINE IMAGETYPE	255
	#DEFINE AUDIOTYPE	255
	#DEFINE APPTYPE		1
	#DEFINE APPCPID		60000
	#DEFINE APPID		1
	#DEFINE APPNAME		"Ahyane"
	#DEFINE COMPTYPE	0
	#DEFINE AGENTTYPE	0
	#DEFINE VALIDCOUNT	255
	#DEFINE VALIDTERM	255
	#DEFINE DIRECTRUN	0
	#DEFINE APPVER		1
%}
#endif

#include <SScript.h>
#include "mapchip.sbm"	//MAPCHIP & CHARA SET & SYSTEM IMAGES

#define map_start_x	1		//PRINT MAP POSITION
#define map_start_y	1
#define map_position_x -4	//SETING PRINT POSITION
#define map_position_y -4

struct Equip {
	string Name;		//Equip Name
	int Icon;
	long int Cost;		//COST OF EQUIPMENT
	int Categori;		//Categori Of Equipment, 0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary

	int Level;			//Demend Level
	int Str;			//Plus Str
	int Def;			//Plus Def
	int Int;			//Plus Int
	int Dex;			//Plus Dex

	int Hp;				//Plus Max HP
	int Mp;				//Plus Max MP

	int Speed;			//Plus Speed
	int Critical;		//Critical Percentage

	int Effect;			//Effect Graphic, 0:None
	int CommonEvent;	//Common Event Number, 0:None
};

struct Item {
	string Name;		//Item Info
	long int Cost;		//Cost of Item
	int Icon;			//ITEM ICON Number
};

struct Skill {
	string Name;		//Item Info
	int Category;		//Skill Category
	int Icon;			//ITEM ICON Number
};

struct Slot {
	int ListNumber;		//Number in Item Struct
	int Quantity;		//Quantity of Item, Level of Skill, Inchanted of Equip
};

struct Chara {
	//SYSTEM VARIABLE
	int map;			//MAP NUMBER
	int	x, y;			//POSITION ON MAP
	int direction;		//DIRECTION, 0:DOWN, 1:LEFT, 2:RIGHT, 3:UP
	int speed;			//SPEED
	int motion;			//MOTION NUMBER
	//int graphic;		//Graphic Number for NPC & Actor
	//int route;
	//CHARA VARIABLE
	string Name;		//Actor NAME
	int Job;			//Actor JOB NUMBER
	int Level;
	int Exp;
	int MaxHp, MaxMp;	//MAXIMUM POINT
	int CurHp, CurMp;	//CURRENT POINT
	int Str;
	int Def;
	int Int;
	int Dex;
	//SETING EQUIP ITEM, 0:NONE
	int equip[6];
	int upgrade[6];
	//MONEY
	long int gold;
};

struct Event {
	//SYSTEM VARIABLE
	int	x, y;			//POSITION ON MAP
	int direction;		//DIRECTION, 0:DOWN, 1:LEFT, 2:RIGHT, 3:UP
	int motion;			//MOTION NUMBER
	int graphic;		//Graphic Number for NPC & Actor
	int route;			//
}

struct Chara Actor;			//CREAT Actor
struct Event NPC[10];		//CREAT NPC
struct Item ItemList[10];	//Item in System
struct Slot ItemSlot[32];	//Actor's Item Slot x 16
struct Item SkillList[10];	//Skill in System
struct Slot SkillSlot[16];	//Actor's Skill Slot x 16
struct Equip EquipList[16];	//Equip in System
struct Slot EquipSlot[16];	//Actor's Equip Slot x 16

int GameMode = 0;			//0:TITLE, 1:ROLLPLAY, 2:STATUS, 3:?
int counter = 0;
//int motion_speed = 1;		//1:Normal, 2<:SLOW
int moving_frame_x = 0;		//SCROLL MAP
int moving_frame_y = 0;
int selected_menu = 0 ;		//Selected Menu
int selected_submenu = 0 ;	//Selected Item, Skill, Equiped
int selected_menuinsub = -1;//Selected SelectEquip,
int MapSize_x = 0;
int MapSize_y = 0;

//MAP LAYER:1
short int subfield[40][40] = {
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 3,
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 3, 3,
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4,35,37,35,36,37,35,37,35,36,37,35,36,37,35,36, 4, 3, 4, 3,
					 3, 3,35,37,35,36,37,35,37,35,36,37,35,36, 3, 3, 3, 3, 4, 3, 4,39,41,39,40,41,39,41,39,40,41,39,40,41,39,40, 3, 3, 4, 3,
					 3, 3,39,41,39,40,41,39,41,39,40,41,39,40, 3, 3, 3, 3, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 3, 3, 3, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 3, 4,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 3, 3, 3, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 4, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 3, 3, 4, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 3, 4, 4, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 4, 3, 3, 3,30, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,33, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 4, 3, 3, 3, 3,34,35,36,37,35,36,37, 9, 9, 9,34,35,36,37,35,36,37, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,33, 4, 3, 3, 3, 3,38,39,40,41,39,40,41, 9, 9, 9,38,39,40,41,39,40,41, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,36,37,36,37, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
					 3, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,40,41,40,41, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
					 3,30, 8, 8, 8, 8, 8, 8, 8, 8,33, 7, 4, 3, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
					 3,34,35,36,37, 8, 8,34,35,36,37, 4, 3, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3,
					 3,38,39,40,41, 8, 8,38,39,40,41, 3, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 2, 3,
					 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
					 3, 3, 3, 3, 3, 2, 1, 3, 3, 3, 3, 3, 2, 2, 1, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
					 3, 3, 3, 3, 3, 2, 2, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 3, 4,35,36,37,35,36,37, 3, 2,34,35,36,37,35, 3, 3, 3, 3, 3, 3,
					 3, 3, 3, 3, 3, 2, 1, 2, 1, 2, 2, 1, 2, 1, 2, 2, 3, 3, 3, 3, 4,39,40,41,39,40,41,10,10,38,39,40,41,39, 4, 3, 3, 3, 3, 3,
					 3, 3, 3, 3, 3, 3, 2, 1, 2, 1, 1, 2, 1, 1, 1, 2, 3, 3, 3, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 3, 3, 3, 3, 3,
					 3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 4, 3, 4, 4, 3,
					 3, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 4, 4, 4, 3, 3,
					 3, 3, 3, 4, 4, 3, 3, 3, 3, 3, 3, 3, 2, 2, 1, 2, 3, 3, 3, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 4, 3, 3, 3, 3,
					 3, 3, 4, 4, 4, 4, 3, 3, 7, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 4, 3, 3, 3, 3,
					 3, 3, 3, 3, 4, 3, 4, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 4, 3,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10, 4, 3, 3, 3, 3,
					 3, 3, 3, 3, 4, 3, 3, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 4, 3,30,10,10,10,31,10,10,10,10,10,10,10,10,10,10, 4, 3, 3, 3, 3,
					 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 3, 2, 1, 2, 2, 3, 4, 4, 3,34,35,36,37,35,36,10,10,10,10,10,10,10,10,10, 3, 3, 3, 3,20,
					 4, 4, 3, 4, 4, 3, 4, 3, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 4, 4,38,39,40,41,39,40,10,10,10,10,10,10,10,10,10, 3, 3, 3,20,24,
					 4, 3, 3, 3, 3, 3, 3, 4, 3, 3, 3, 3, 2, 1, 1, 2, 3, 3, 3, 4, 4, 4, 4, 4, 4, 7,30,10,10,10,10,10,10,10,33, 3, 3,20,24, 3,
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6, 6, 6, 6, 3, 3, 3, 3, 3, 3, 4, 4, 3, 4,34,35,37,35,36,37,35,36,37, 3, 3,16,12,12,
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 6, 6, 6, 6, 3, 3, 3, 3, 3, 3, 3, 4, 3, 4,38,39,41,39,40,41,39,40,41, 3, 3,16,12,12,
					 3, 3, 3, 3, 3, 3, 3, 3,20,14,14,14, 6, 6, 6, 6,14,14,14,14,19, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 3, 3, 3,20,24,12,12,
					 3, 3, 3,20,14,14,14,14,24,12,12,12, 6, 6, 6, 6,12,12,12,12,23,14,14,14,14,14,14,14,19, 3, 3, 3, 3, 3, 3,20,24,12,12,12,
					 3,14,14,24,12,12,12,12,12,12,12,12, 6, 6, 6, 6,12,12,12,12,12,12,12,12,12,12,12,12,23,14,14,14,19, 3, 3,16,12,12,12,12,
					 3,12,12,12,12,12,12,12,12,12,12,12, 6, 6, 6, 6,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,23,14,14,24,12,12,12,12,
					 3,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,
					 3,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,
					 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3
					 };
//MAP LAYER:2
short int midfield[40][40] = {
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,45, 0, 0, 0,
					0,44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,45, 0, 0, 0, 0, 0,46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,47, 0, 0, 0,
					0,46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,47, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0,
					0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0,49, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0,50, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,45, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,47, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,49, 0, 0, 0, 0, 0, 0, 0,52, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,50, 0, 0, 0, 0, 0, 0, 0,53, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
					};				
//MAP LAYER:3+ & OVER CHARA
short int overfield[40][40] = {
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,42,31,33,31,32,33,31,33,31,32,33,31,32,33,31,32,43, 0, 0, 0,
					 0,42,31,33,31,32,33,31,33,31,32,33,31,32,43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,31,32,33,31,32,33, 0, 0, 0,30,31,32,33,31,32, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,51,31,33,32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0,31,32,33, 0, 0,30,31,32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,42,31,32,33,31,32,33, 0, 0,30,31,32,33,31,43, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,31,32,33,31,32,48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,31,33,31,32,33,31,32, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
					 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
					};
//EVENT NUMBER MAP LAYER:3 & EQUAL LAYER CHARA
//short int overfield[40][40] = {};
void DrawMap(){
	string TempString = "";				//TempString
	int length;							//GageBar for HP, MP, EXP
	int i, h;							//loopcount
	int px,py;							//TempShell Position

	//CLS
	ClearBlack();

	//SCROLL MAP
	if(moving_frame_x){
		if(moving_frame_x>0)moving_frame_x-=6;
		else moving_frame_x+=6;
	}else if(moving_frame_y){
		if(moving_frame_y>0)moving_frame_y-=6;
		else moving_frame_y+=6;
	}
	
	//Shell Display Position
	px = Actor.x + map_position_x;		
	py = Actor.y + map_position_y;

	//PRINT MAP
	for(i = -1; i<=9; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				//PRINT MAP LAYER 1
				CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[subfield[i + py][h + px]]);
				//PRINT MAP LAYER 2
				CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[midfield[i + py][h + px]]);
			}
		}
	}

	//PRINT MAP LAYER 3+ OVER CHARA -
	for(i = -1; i<=3; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				//PRINT MAP LAYER 3+ OVER CHARA
				if(overfield[i+py][h+px] < 100){
					CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[overfield[i + py][h + px]]);
				}else{
					CopyImage(h*14+map_start_x + moving_frame_x -4, i*14+map_start_y + moving_frame_y-27, chara2[NPC[overfield[i + py][h + px]-100].direction * 4]);
				}
			}
		}
	}
	//PRINT Actor
	if(moving_frame_x || moving_frame_y){
		//MOVE
		Actor.motion = (Actor.motion+1) % 4;
	}else{
		//NOT MOVE
		Actor.motion = (Actor.motion) % 4;
	}
	SetImageAlpha(0);
	CopyImage(3*18+map_start_x -2, 3*18+map_start_y-25, chara2[Actor.direction*4 + Actor.motion]);

	//PRINT MAP LAYER 3+ OVER CHARA +
	for(i = 4; i<=9; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				if(i==4 && h==4)SetImageAlpha(1);
				if(overfield[i+py][h+px] < 100){
					CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[overfield[i + py][h + px]]);
				}else{
					CopyImage(h*14+map_start_x + moving_frame_x -4, i*14+map_start_y + moving_frame_y-27, chara2[NPC[overfield[i + py][h + px]-100].direction * 4]);
				}
				SetImageAlpha(0);
			}
		}
	}
	//Map Border
	SetColorRGB(0, 0, 0);
	DrawRect(0, 0, 127, 127);
	//PRINT INTERFACE
	CopyImage(0,121, sysmain);				//INTERFACE BASE
	if(Actor.CurHp > 0){					//PRINT HEALTH GAGE, Max Length:36, Max Y:69
		length = Actor.CurHp * 36 / Actor.MaxHp + 33;
		SetColorRGB(255, 126, 0);
		DrawHLine(33, length, 125); 
		SetColorRGB(255, 242, 0);
		DrawHLine(33, length, 126);
	}
	if(Actor.CurMp > 0){					//PRINT MANA GAGE
		length = Actor.CurMp * 36 / Actor.MaxMp + 33;
		SetColorRGB(0, 179, 217);
		DrawHLine(33, length, 128);
		SetColorRGB(140, 218, 255);
		DrawHLine(33, length, 129);
	}

	if(Actor.Exp > 0){						//PRINT EXP GAGE
		length = Actor.Exp * 16 / 100 + 104;
		SetColorRGB(241, 75, 228);
		DrawHLine(104, length, 127);
		SetColorRGB(253, 153, 245);
		DrawHLine(104, length, 128);
	}

	CopyImage(17,124, sysjob[Actor.Job]);	//PRINT JOB ICON
	
											//PRINT LEVEL
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	MakeStr1(TempString, "%d", Actor.Level);
	DrawStr(9, 125, TempString);
	
	//FREE, CAN DELETE, PRINT TIME & CURRENT POSITION
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	MakeStr3(TempString, "TIME : %4d, POSITION : %d x %d", counter++, Actor.x, Actor.y);
	DrawStr(64, 135, TempString);
}

void DrawMenu(int win_x, int win_y){
	//STATUS BACK GROUND
	SetColorRGB(0, 30, 100);
	FillRectEx(2 + win_x, win_y, 116 + win_x, 78 + win_y, 2);
	//STATUS BORDER
	SetImageAlpha(0);
	CopyImage(win_x, win_y, wintop);
	CopyImage(win_x, 9 + win_y, winleft);
	CopyImage(114 + win_x, 9 + win_y, winright);
	CopyImage(win_x, 75 + win_y, windown);
	CopyImage(5 + win_x, 58 + win_y, winmenu);
	//Selected Menu Position
	CopyImage(4 + win_x + selected_menu * 22, 62 + win_y, winselect);
}

void DrawState(int win_x, int win_y){
	string TempString = "";
	//STATUS TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "STATUS");
	//PRINT STATUS VARIABLE
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(11 + win_x, 12 + win_y, Actor.Name);
	//PRINT Job
	switch (Actor.Job){
		case 0:
			DrawStr(11 + win_x, 18 + win_y, " -NOVICE");
			break;
		case 1:
			DrawStr(11 + win_x, 18 + win_y, " -KNIGHT");
			break;
		case 2:
			DrawStr(11 + win_x, 18 + win_y, " -WIZARD");
			break;
	}
	//PRINT Level
	MakeStr1(TempString, "LV %d", Actor.Level + 1000);
	DrawStr(11 + win_x, 28 + win_y, TempString);
	//PRINT STAT
	MakeStr1(TempString, "STR %2d", Actor.Str + 100);
	DrawStr(66 + win_x, 22 + win_y, TempString);
	MakeStr1(TempString, "DEF %2d", Actor.Def + 100);
	DrawStr(66 + win_x, 28 + win_y, TempString);
	MakeStr1(TempString, "INT %2d", Actor.Int + 100);
	DrawStr(66 + win_x, 34 + win_y, TempString);
	MakeStr1(TempString, "DEX %2d", Actor.Dex + 100);
	DrawStr(66 + win_x, 40 + win_y, TempString);
	//PRINT Exp
	MakeStr1(TempString, "EXP %d", Actor.Exp);
	DrawStr(66 + win_x, 46 + win_y, TempString);
	//PRINT Hp
	MakeStr2(TempString, "HP %d/%d", Actor.CurHp, Actor.MaxHp);
	DrawStr(11 + win_x, 40 + win_y, TempString);
	//PRINT Mp
	MakeStr2(TempString, "MP %d/%d", Actor.CurMp, Actor.MaxMp);
	DrawStr(11 + win_x, 46 + win_y, TempString);
}

void DrawItem(int win_x, int win_y){
	string TempString = "";
	int i;
	//ITEM TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "ITEM");
	//PRINT SELECTED ITEM
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, ItemList[ItemSlot[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "x%2d", ItemSlot[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//ITEM ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[ItemList[ItemSlot[i]].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

void DrawSkill(int win_x, int win_y){
	string TempString = "";
	int i;
	//SKILL TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "SKILL");
	//PRINT SELECTED SKILL
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 12 + win_y, SkillList[SkillSlot[selected_submenu].ListNumber].Name);
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStr1(TempString, "Lv%d", SkillSlot[selected_submenu].Quantity);
	DrawStr(94 + win_x, 16 + win_y, TempString);
	//SKILL ICON LIST
	SetColorRGB(0, 30, 100);
	for(i = 0; i < 16; i++){
		FillRectEx(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, 19 + (i%8)*13 + win_x, 40 + i/8*13 + win_y, 1);
		CopyImage(9 + (i%8)*13 + win_x, 30 + i/8*13 + win_y, icon[SkillList[SkillSlot[i]].Icon]);
		if(i == selected_submenu){
			SetColorRGB(255, 255, 0);
			DrawRect(8 + (i%8)*13 + win_x, 29 + i/8*13 + win_y, 20 + (i%8)*13 + win_x, 41 + i/8*13 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
}

void DrawEquip(int win_x, int win_y){
	string TempString = "";
	int i;
	//EQUIP TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "EQUIP");
	//PRINT SELECTED EQUIPED ITEM
	if(selected_menuinsub == -1){
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, EquipList[Actor.equip[selected_submenu]].Name);
		SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		MakeStr1(TempString, "+%2d", Actor.upgrade[selected_submenu]);
		DrawStr(94 + win_x, 16 + win_y, TempString);
	}else{
		SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		DrawStr(9 + win_x, 12 + win_y, EquipList[EquipSlot[selected_menuinsub].ListNumber].Name);
		SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_LEFT);
		MakeStr1(TempString, "+%2d", EquipSlot[selected_menuinsub].Quantity);
		DrawStr(94 + win_x, 16 + win_y, TempString);
	}
	//EQUIPED
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	DrawStr(9 + win_x, 30 + win_y, "EQUIP>");
	switch (selected_submenu){
		case 0:DrawStr(10 + win_x, 36 + win_y, "HEAD");		break;
		case 1:DrawStr(10 + win_x, 36 + win_y, "WEAPON");	break;
		case 2:DrawStr(10 + win_x, 36 + win_y, "ARMOR");	break;
		case 3:DrawStr(10 + win_x, 36 + win_y, "SHEILD");	break;
		case 4:DrawStr(10 + win_x, 36 + win_y, "SHOES");	break;
		case 5:DrawStr(10 + win_x, 36 + win_y, "ETC");
	}
	for(i = 0; i < 6; i++){
		FillRectEx(35 + (i%6)*13 + win_x, 30 + win_y, 45 + (i%6)*13 + win_x, 40 + win_y, 1);
		CopyImage(35 + (i%6)*13 + win_x, 30 + win_y, icon[EquipList[Actor.equip[i]].Icon]);
		if(i == selected_submenu){
			if(selected_menuinsub == -1)SetColorRGB(255, 255, 0);
			else SetColorRGB(255, 0, 0);
			DrawRect(34 + (i%6)*13 + win_x, 29 + win_y, 46 + (i%6)*13 + win_x, 41 + win_y);
			SetColorRGB(0, 30, 100);
		}
	}
	//EQUIP ICON LIST
	if(selected_menuinsub > -1){
		SetColorRGB(0, 30, 100);
		for(i = 0; i < 8; i++){
			FillRectEx(9 + (i%8)*13 + win_x, 43 + win_y, 19 + (i%8)*13 + win_x, 53 + win_y, 1);
			CopyImage(9 + (i%8)*13 + win_x, 43 + win_y, icon[EquipList[EquipSlot[i].ListNumber].Icon]);
			if(i == selected_menuinsub){
				SetColorRGB(255, 255, 0);
				DrawRect(8 + (i%8)*13 + win_x, 42 + win_y, 20 + (i%8)*13 + win_x, 54 + win_y);
				SetColorRGB(0, 30, 100);
			}
		}
	}
}

void DrawQuest(int win_x, int win_y){
	string TempString = "";
	//QUEST TITLE
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_LEFT);
	DrawStr(6 + win_x, 2 + win_y, "QUEST");
}

void SetActor(){
	int i;							//loop counter
	//SYSTEM VARIABLE
	Actor.map = 0;							//Actor START MAP
	Actor.x = 25 + (map_position_x + 4);		//Actor START POSITION
	Actor.y = 15 + (map_position_y + 4);
	Actor.direction = 0;					//DEFAULT DIRECTION
	Actor.speed = 0;						//DEFAULT SPEED
	//CHARA VARIABLE
	Actor.Name = "AHYANE";			//Actor NAME
	Actor.Job = 0;					//0:NONE, 1:KNIGHT, 2:WIZARD, 3:THIEF, 4:ACOLIGHT, 5:ETC??
	Actor.Level = 0;				//DEFAULT LV:1
	Actor.Exp = 0;					//PERCENTAGE, 0% ~ 100%(Level Up)
	Actor.MaxHp = 300;				//MAXIMUM POINT
	Actor.MaxMp = 100;
	Actor.CurHp = Actor.MaxHp;		//CURRENT POINT
	Actor.CurMp = Actor.MaxMp;
	Actor.Str = 3;					//DEFAULT STAT(LV:1)
	Actor.Def = 1;
	Actor.Int = 3;
	Actor.Dex = 2;
	//SETING EQUIP ITEM, 0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary
	Actor.equip[0] = 1;
	Actor.equip[1] = 2;
	Actor.equip[2] = 3;
	Actor.equip[3] = 4;
	Actor.equip[4] = 5;
	Actor.equip[5] = 6;
	Actor.upgrade[0] = 3;
	Actor.upgrade[1] = 7;
	Actor.upgrade[2] = 5;
	Actor.upgrade[3] = 6;
	Actor.upgrade[4] = 4;
	Actor.upgrade[5] = 5;
	//SKILL
	for(i = 1; i < 16; i++){
		SkillSlot[i].ListNumber = 0;
		SkillSlot[i].Quantity = 0;
	}
	SkillSlot[0].ListNumber = 1;	//Basic Default Attack Passive Skill
	SkillSlot[0].Quantity = 1;
	//EQUIP
	for(i = 0; i < 16; i++){
		EquipSlot[i].ListNumber = 0;
		EquipSlot[i].Quantity = 0;
	}
	//INVENTORY
	for(i = 0; i < 16; i++){
		ItemSlot[i].ListNumber = 0;
		ItemSlot[i].Quantity = 0;
	}
	ItemSlot[0].ListNumber = 1;	//Basic Default Attack Passive Skill
	ItemSlot[0].Quantity = 3;
	//Actor.item = {0,0,0,0,0,0,0,0,0,0};
	Actor.gold = 200;				//DEFAULT GOLD
}

void SetSystem(){
	//int i;						//loop counter
	//SET SKILL LIST
	SkillList[0].Name = "스킬 없음";	SkillList[0].Icon = 0;
	SkillList[1].Name = "P기본공격";	SkillList[1].Icon = 5;
	SkillList[2].Name = "P리커버리";	SkillList[2].Icon = 4;
	SkillList[3].Name = "치료술";		SkillList[3].Icon = 3;
	SkillList[4].Name = "스킬 없음";	SkillList[4].Icon = 2;
	SkillList[5].Name = "스킬 없음";	SkillList[5].Icon = 1;
	SkillList[6].Name = "스킬 없음";	SkillList[6].Icon = 2;
	SkillList[7].Name = "스킬 없음";	SkillList[7].Icon = 3;
	SkillList[8].Name = "스킬 없음";	SkillList[8].Icon = 6;
	SkillList[9].Name = "스킬 없음";	SkillList[9].Icon = 5;
	//SET EQUIP LIST, 0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary
	EquipList[0].Name = "장비 없음";	EquipList[0].Icon = 0;
	EquipList[1].Name = "밀짚모자";		EquipList[1].Icon = 1;
	EquipList[2].Name = "라니스플레쉬";	EquipList[2].Icon = 2;
	EquipList[3].Name = "엘리멘탈로브";	EquipList[3].Icon = 3;
	EquipList[4].Name = "리플렉터";		EquipList[4].Icon = 4;
	EquipList[5].Name = "운동화";		EquipList[5].Icon = 5;
	EquipList[6].Name = "체력의반지";	EquipList[6].Icon = 6;
	//SET ITEM LIST
	ItemList[0].Name = "아이템 없음";	ItemList[0].Icon = 0;
	ItemList[1].Name = "허브";			ItemList[1].Icon = 4;
	ItemList[2].Name = "박하";			ItemList[2].Icon = 3;
	ItemList[3].Name = "레몬";			ItemList[3].Icon = 2;
	ItemList[4].Name = "식빵";			ItemList[4].Icon = 1;
	ItemList[5].Name = "케익조각";		ItemList[5].Icon = 1;
	ItemList[6].Name = "고기산적";		ItemList[6].Icon = 1;
	ItemList[7].Name = "포션";			ItemList[7].Icon = 2;
	ItemList[8].Name = "고급포션";		ItemList[8].Icon = 3;
	ItemList[9].Name = "워프깃털";		ItemList[9].Icon = 4;
	//ItemList[10].Name = "해독약";			//상태이상치료
	//ItemList[11].Name = "부활의약";		//스탯
	//ItemList[13].Name = "비타민";
	//ItemList[15].Name = "검술수련서";		//스킬북
	//ItemList[15].Name = "궁술수련서";
	//ItemList[15].Name = "마법수련서";
	//ItemList[15].Name = "도술수련서";
	//ItemList[15].Name = "종합수련서";
	//ItemList[15].Name = "";
	//ItemList[14].Name = "우유";			//퀘스트 내지..
	//ItemList[12].Name = "감기약";
	//ItemList[15].Name = "청심환";
	//ItemList[15].Name = "빛나는돌";		//몹 잡템
	//ItemList[15].Name = "크리스탈원석";
	//ItemList[15].Name = "외계운석";
}

void SetMap(int MapNumber){
	int i;					//loop count
	switch (MapNumber){
		case 0:
			MapSize_x = 40;
			MapSize_y = 40;
			NPC[0].x = 26;
			NPC[0].y = 17;
			NPC[0].route = 0;
			NPC[0].direction = 2;

			NPC[1].x = 29;
			NPC[1].y = 17;
			NPC[1].route = 0;
			NPC[1].direction = 1;

			NPC[2].x = 28;
			NPC[2].y = 24;
			NPC[2].route = 1;
			NPC[2].direction = 3;

			NPC[3].x = 26;
			NPC[3].y = 23;
			NPC[3].route = 1;
			NPC[3].direction = 0;

			for(i = 0; i < 4; i++){
				overfield[NPC[i].y][NPC[i].x] = 100 + i;
			}
			break;
		case 1:
			break;
	}
}

void NPCMoveRoute(){
	//NPC 랜덤 이동 테스트
	int i;
	int temp;

	for(i=0;i<4;i++){	
		if(NPC[i].route){
			overfield[NPC[i].y][NPC[i].x] = 0;
			temp = Rand(0,40);
			switch(temp){
			case 0:
				if(overfield[NPC[i].y + 1][NPC[i].x] == 0 && midfield[NPC[i].y + 1][NPC[i].x] < 12 && subfield[NPC[i].y + 1][NPC[i].x] < 12 && !(Actor.x == NPC[i].x && Actor.y == NPC[i].y + 1))
				{NPC[i].y++;NPC[i].direction = temp;}
			break;
			case 1:
				if(overfield[NPC[i].y][NPC[i].x - 1] == 0 && midfield[NPC[i].y][NPC[i].x - 1] < 12 && subfield[NPC[i].y][NPC[i].x - 1] < 12 && !(Actor.x == NPC[i].x -1 && Actor.y == NPC[i].y))
				{NPC[i].x--;NPC[i].direction = temp;}
			break;
			case 2:
				if(overfield[NPC[i].y][NPC[i].x + 1] == 0 && midfield[NPC[i].y][NPC[i].x + 1] < 12 && subfield[NPC[i].y][NPC[i].x + 1] < 12 && !(Actor.x == NPC[i].x + 1 && Actor.y == NPC[i].y))
				{NPC[i].x++;NPC[i].direction = temp;}
			break;
			case 3:
				if(overfield[NPC[i].y - 1][NPC[i].x] == 0 && midfield[NPC[i].y - 1][NPC[i].x] < 12 && subfield[NPC[i].y - 1][NPC[i].x] < 12 && !(Actor.x == NPC[i].x && Actor.y == NPC[i].y - 1))
				{NPC[i].y--;NPC[i].direction = temp;}
			}
			overfield[NPC[i].y][NPC[i].x] = 100 + i;
		}
	}
}

void AutoRecovery(){
	int PlusPoint;					//Point
	//Recovery Time
	if(counter % 8 == 0){
		//Auto for Hp
		PlusPoint = Actor.CurHp + Actor.MaxHp / 50 + 1;
		if(PlusPoint > Actor.MaxHp){
			Actor.CurHp = Actor.MaxHp;
		}else{
			Actor.CurHp = PlusPoint;
		}
		//Auto for Mp
		PlusPoint = Actor.CurMp + Actor.MaxMp / 50 + 1;
		if(PlusPoint > Actor.MaxMp){
			Actor.CurMp = Actor.MaxMp;
		}else{
			Actor.CurMp = PlusPoint;
		}
	}
}

void DrawTitle(){
	ClearBlack();
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	DrawStr(64, 30, "★ 게임 제목 ★");

	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	DrawStr(64, 85, "NEW GAME");
	DrawStr(64, 95, "COUNTINUE");
	DrawStr(64, 105, "INFO");
	DrawStr(64, 85 + selected_menu * 10, ">           <");


	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	DrawStr(120, 135, "MADE BY AHYANE.2008");
	counter++;
	Flush();
}

void ActorTitleMode(int Key){
	switch (Key){
		case SWAP_KEY_UP:
			selected_menu = (3 + selected_menu - 1) % 3;
			break;
		case SWAP_KEY_DOWN:
			selected_menu = (3 + selected_menu + 1) % 3;
			break;
		case SWAP_KEY_OK:
			switch (selected_menu){
				case 0:
					SetMap(0);
					SetTimer(70, 1);		//Repainting Speed
					GameMode = 1;
					break;
				case 1:
					break;
				case 2:
					break;
			}
	}
}

void ActorMoveMode(int Key){
	int Temp;
	switch (Key){
		case SWAP_KEY_DOWN:			//Move Down
			if(moving_frame_y)break;
			Actor.direction = 0;
			Temp = Actor.y + 1;
			if(Temp < MapSize_y && subfield[Temp][Actor.x] < 12 && midfield[Temp][Actor.x] < 12 && overfield[Temp][Actor.x] < 100){
				Actor.y++;
				moving_frame_y=12;
			}
			break;
		case SWAP_KEY_LEFT:			//Move Left
			if(moving_frame_x)break;
			Actor.direction = 1;
			Temp = Actor.x - 1;
			if(Temp >= 0 && subfield[Actor.y][Temp] < 12 && midfield[Actor.y][Temp] < 12 && overfield[Actor.y][Temp] < 100){
				Actor.x--;
				moving_frame_x=-12;
			}
			break;
		case SWAP_KEY_RIGHT:		//Move Right
			if(moving_frame_x)break;
			Actor.direction = 2;
			Temp = Actor.x + 1;
			if(Temp < MapSize_x && subfield[Actor.y][Temp] < 12 && midfield[Actor.y][Temp] < 12 && overfield[Actor.y][Temp] < 100){
				Actor.x++;
				moving_frame_x=12;
			}
			break;
		case SWAP_KEY_UP:			//Move Up
			if(moving_frame_y)break;
			Actor.direction = 3;
			Temp = Actor.y - 1;
			if(Temp >= 0 && subfield[Temp][Actor.x] < 12 && midfield[Temp][Actor.x] < 12 && overfield[Temp][Actor.x] < 100){
				Actor.y--;
				moving_frame_y=-12;
			}
			break;
		case SWAP_KEY_CLR:			//View Status
			SaveLCD();
			GameMode = 2;
			break;
		case SWAP_KEY_OK:			//Action!!
			Actor.Exp++;
			Actor.CurHp = 1;
			Actor.CurMp = 1;
	}
}

void ActorMenuMode(int Key){
	int Temp;						//Swap Data
	switch (Key){
		case SWAP_KEY_LEFT:			//<-Menu-
			selected_menu = (5 + selected_menu - 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_RIGHT:		//-Menu->
			selected_menu = (5 + selected_menu + 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_UP:			//<-SUB Menu-
			if(selected_menu == 1){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 2){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_submenu = (6 + selected_submenu - 1) % 6;
				else selected_menuinsub = (8 + selected_menuinsub - 1) % 8;
			}
			break;
		case SWAP_KEY_DOWN:			//-SUB Menu->
			if(selected_menu == 1){selected_submenu = (16 + selected_submenu + 1) % 16;}
			else if(selected_menu == 2){selected_submenu = (16 + selected_submenu + 1) % 16;}
			else if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_submenu = (6 + selected_submenu + 1) % 6;
				else selected_menuinsub = (8 + selected_menuinsub + 1) % 8;
			}
			break;
		case SWAP_KEY_CLR:			//Close
			selected_menu = 0;
			selected_submenu = 0;
			selected_menuinsub = -1;
			GameMode = 1;
			break;
		case SWAP_KEY_OK:
			if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_menuinsub = 0;
				else if(selected_menuinsub == 0)selected_menuinsub = -1;
				else{
					Temp = Actor.equip[selected_submenu];
					Actor.equip[selected_submenu] = EquipSlot[selected_menuinsub].ListNumber;
					EquipSlot[selected_menuinsub].ListNumber = Temp;
					Temp = Actor.upgrade[selected_submenu];
					Actor.upgrade[selected_submenu] = EquipSlot[selected_menuinsub].Quantity;
					EquipSlot[selected_menuinsub].Quantity = Temp;
					selected_menuinsub = -1;
				}
			}
	}
}

void main(){
	SetActor();						//SETING Actor
	SetSystem();					//SETING Actor
	DrawTitle();					//Print Title
	SetTimer(100, 1);				//SETING TIMER(TIME:100)
	GameMode = 0;					//Goto Title GameMode:0
}

void EVENT_TIMEOUT(){
	if(swData == SWAP_KEY_RELEASE)return;
	switch (GameMode){
		case 0:					//TITLE GameMode
			DrawTitle();		//DO NOT MADE TITLE YET
			break;
		case 1:					//ROLLPLAYING GameMode
		 	DrawMap();
			NPCMoveRoute();
			AutoRecovery();		//Auto HP & MP Recovery
			break;
		case 2:					//STATUS GameMode
			RestoreLCD();
			DrawMenu(4, 22);
			switch (selected_menu){
				case 0:
					DrawState(4, 22);
					break;
				case 1:
					DrawItem(4, 22);
					break;
				case 2:
					DrawSkill(4, 22);
					break;
				case 3:
					DrawEquip(4, 22);
					break;
				case 4:
					DrawQuest(4, 22);
					break;
			}
	}
	Flush();
}

void EVENT_KEYPRESS(){
	if(swData == SWAP_KEY_RELEASE) return;
	switch (GameMode){
	//// TITLE GameMode ////
		case 0:
			ActorTitleMode(swData);
			break;
	//// ROLLPLAYING GameMode ////
		case 1:
			ActorMoveMode(swData);			//Key Event When Move Actor
			break;
	//// STATUS GameMode ////
		case 2:
			ActorMenuMode(swData);			//View Menu
	}
}
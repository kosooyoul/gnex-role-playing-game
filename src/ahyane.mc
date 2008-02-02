///////////////////////////////////////////////////////////////////////////
// ahyane.mc - Auto Created by GNEX IDE
// START:	2008/01/26:SEARCH GNEX ON INTERNET & IDE DOWNLOAD AND INSTALL
//			2008/01/27:BEGIN DESIGN(ROLLPLAY Mode, BASE SYSTEM)
//			2008/01/28:MAP LATER DESIGN & STATUS start
//			2008/01/29:SCROLL MAP WHEN ACTOR MOVE, DESIGN ITEM & SKILL in MENU
//			2008/01/30:장착아이템부분 디자인, 아이템/스킬/장비 아이콘 출력 테스트, 키 이벤트 코드/함수로 분리, NPC삽입 시도 및 NPC 랜덤이동루프 시도
//			2008/01/31:이벤트에 접근하여 버튼 누를경우 문장표시 시도(단문장 하나), 한글 작게 출력안되 안습.
//			2008/02/01:문장 반각문자 108자/전각문자 54자출력이내 출력, 헤더파일로 분리



//구현계획 -> 상점모드(아이템/무기/스킬) / 맵저장방식 / 다른맵으로이동 / 몬스터표시 등..
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

#define map_start_x	1		//PRINT MAP POSITION
#define map_start_y	1
#define map_position_x -4	//SETING PRINT POSITION
#define map_position_y -4

#include <SScript.h>
#include "mapchip.sbm"		//MAPCHIP & CHARA SET & SYSTEM IMAGES
#include "system.h"
#include "field.h"
#include "drawstatus.h"
#include "drawmap.h"

struct Chara Actor;			//CREAT Actor
struct Event NPC[10];		//CREAT NPC
struct Item ItemList[10];	//Item in System
struct Slot ItemSlot[32];	//Actor's Item Slot x 16
struct Item SkillList[10];	//Skill in System
struct Slot SkillSlot[16];	//Actor's Skill Slot x 16
struct Equip EquipList[16];	//Equip in System
struct Slot EquipSlot[16];	//Actor's Equip Slot x 16

int GameMode = 0;			//0:TITLE, 1:ROLLPLAY, 2:STATUS, 3:Speak
int counter = 0;
//int motion_speed = 1;		//1:Normal, 2<:SLOW
int moving_frame_x = 0;		//SCROLL MAP
int moving_frame_y = 0;
int selected_menu = 0 ;		//Selected Menu
int selected_submenu = 0 ;	//Selected Item, Skill, Equiped
int selected_menuinsub = -1;//Selected SelectEquip,
int MapSize_x = 0;
int MapSize_y = 0;
int Selected_Event = 0;

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
	Actor.gold = 200;				//DEFAULT GOLD
}

void SetSystem(){
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
			NPC[0].route = 0;		NPC[0].name = "영이";
			NPC[0].direction = 2;	NPC[0].speak = "안녕 난 0번이야";

			NPC[1].x = 29;
			NPC[1].y = 17;
			NPC[1].route = 0;		NPC[1].name = "하나";
			NPC[1].direction = 1;	NPC[1].speak = "흠냥 난 1번인데 뭐할말 있나? 없으면 저리 멀리 가줄래? 어서!";
												//	000000000111111111222222222333333333444444444555555555666666666777777777888888888999999999000000000111111111222222222
			NPC[2].x = 28;
			NPC[2].y = 24;
			NPC[2].route = 1;		NPC[2].name = "두나";
			NPC[2].direction = 3;	NPC[2].speak = "2번 이명박 아니다";

			NPC[3].x = 26;
			NPC[3].y = 23;
			NPC[3].route = 1;		NPC[3].name = "세나";
			NPC[3].direction = 0;	NPC[3].speak = "바바바 바보~ ㅋㅋ 문장 잘 나오는군, 그나저나 요즘 마을밖에 동굴앞에서 무슨일이 일어 나는듯하더라 좀 가봐라";
												//	000000000111111111222222222333333333444444444555555555666666666777777777888888888999999999000000000111111111222222222
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
			temp = Rand(0,10);
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
	int Temp_x = 0, Temp_y = 0;
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
			//DIRECTION, 0:DOWN, 1:LEFT, 2:RIGHT, 3:UP
			switch (Actor.direction){			//향한 방향에 이벤트가 있는지
				case 0:
					Temp_y = 1;
					break;
				case 1:
					Temp_x = -1;
					break;
				case 2:
					Temp_x = 1;
					break;
				case 3:
					Temp_y = -1;
			}
			//선택한 이벤트 번호
			Selected_Event = overfield[Actor.y + Temp_y][Actor.x + Temp_x] - 100;
			if(Selected_Event >= 0 && Selected_Event < 50){		//NPC로 간주
				SaveLCD();
				GameMode = 3;
			}else if(Temp < 200){				//MONTER로 간주
				//Attack(Temp - 150);
			}
	}
}

void ActorMenuMode(int Key){
	int Temp;						//Swap Data
	switch (Key){
		case SWAP_KEY_UP:			//<-Menu-
			selected_menu = (5 + selected_menu - 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_DOWN:		//-Menu->
			selected_menu = (5 + selected_menu + 1) % 5;
			selected_submenu = 0;
			selected_menuinsub = -1;
			break;
		case SWAP_KEY_LEFT:			//<-SUB Menu-
			if(selected_menu == 1){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 2){selected_submenu = (16 + selected_submenu - 1) % 16;}
			else if(selected_menu == 3){
				if(selected_menuinsub == -1)selected_submenu = (6 + selected_submenu - 1) % 6;
				else selected_menuinsub = (8 + selected_menuinsub - 1) % 8;
			}
			break;
		case SWAP_KEY_RIGHT:			//-SUB Menu->
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
					//무기 교체
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

void EventSpeak(){
	string TempString;
	int Temp;
	int i;
	//반각문자는 18자 전각문자는 9자가 한 줄(반각문자 108자 전각문자 54자까지만 권장, 즉 6줄)
	Temp = StrLen(NPC[Selected_Event].speak) / 18;
	//SPEAK BACK GROUND
	SetColorRGB(0, 30, 100);
	FillRectEx(4, 4, 123, 39 + Temp * 15, 2);
	//SPEAK BORDER
	SetColorRGB(0, 20, 70);
	DrawRect(3, 3, 124, 40 + Temp * 15);
	//화자의 이름
	SetFontType(S_FONT_LARGE, S_WHITE, S_BLACK, S_ALIGN_LEFT);
	MakeStrStr(TempString, "[%s]", NPC[Selected_Event].name);
	DrawStr(9, 9, TempString);
	for(i = 0; i < Temp + 1; i++){
		StrSub(TempString, NPC[Selected_Event].speak, i * 18, 18);
		DrawStr(9, 24 + i * 15, TempString);
	}
}

void main(){
	SetActor();						//SETING Actor
	SetSystem();					//SETING Actor
	DrawTitle();					//Print Title
	SetTimer(100, 1);				//SETING TIMER(TIME:100)
	SetTimer1(500, 1);
	GameMode = 0;					//Goto Title GameMode:0
}

void EVENT_TIMEOUT(){
string TempString;
	//if(swData == SWAP_KEY_RELEASE)return;
	switch(swData){
	//// Timer 1 ////
		case 0:
			switch (GameMode){
				case 0:					//TITLE GameMode
					DrawTitle();		//DO NOT MADE TITLE YET
					break;
				case 1:					//ROLLPLAYING GameMode
				 	DrawMap();
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
					break;
				case 3:					//SPEAK GameMode
					ClearBlack();
					RestoreLCD();
					EventSpeak();
			}
			Flush();
			break;
		//// Timer 2 ////
		case 1:
			if(GameMode == 1)NPCMoveRoute();
	}
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
			break;
	//// Speak GameMode ////
		case 3:
			GameMode = 1;
	}
}
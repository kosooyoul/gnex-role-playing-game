//// 주인공 & 파티원 ////
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
	//SETING EQUIP ITEM, Value=0:NONE
	int equip[6];		//0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary
	int upgrade[6];		//각 장비 인챈트 횟수
	//MONEY
	long int gold;
};

//// 이벤트 ////
struct Event {
	//SYSTEM VARIABLE
	int	x, y;			//POSITION ON MAP
	int direction;		//DIRECTION, 0:DOWN, 1:LEFT, 2:RIGHT, 3:UP
	int motion;			//MOTION NUMBER
	int graphic;		//Graphic Number for NPC & Actor
	int route;			//0:No Move, 1:Random, 2:??

	string speak;		//대화내용
	string name;		//NPC 이름
};

//// 장비 아이템 ////
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

//// 도구 아이템 ////
struct Item {
	string Name;		//Item Info
	long int Cost;		//Cost of Item
	int Icon;			//ITEM ICON Number
};

//// 스킬 ////
struct Skill {
	string Name;		//Item Info
	int Category;		//Skill Category
	int Icon;			//ITEM ICON Number
};

//// 슬롯 ////
struct Slot {
	int ListNumber;		//Number in Item Struct
	int Quantity;		//Quantity of Item, Level of Skill, Inchanted of Equip
};
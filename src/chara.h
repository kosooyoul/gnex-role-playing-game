struct Chara{
	int graphic;
	int map;
	int	x, y;
	int direction;
	int frame;

	int BatX, BatY, BatD;
	
	string Name;
	int Job;

	int LV, MAXEXP, EXP; 

	int MAXHP, HP;
	int MAXSP, SP;

	int Turn;
	int STR, DEF, INT, DEX, STAT, SKILL;
	int MOV;	//한턴 이동거리

	int Gold;

	int Equip[6];		//0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary
	int Upgrade[6];		//각 장비 인챈트 횟수

	int Movement;		//이동속도
	int MoveCount;		//이동빈도
	int MovementApplyTime;	//적용시간
}Player;

struct Slot Inventory[InventorySize];	//인벤토리, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 소모품, 영구템, 사용불가품 (소지갯수)
struct Slot SkillSlot[SkillSlotSize];	//스킬목록, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 셀프스킬, 대상스킬, 비전투스킬 / 속성별 분류 (스킬레벨)
struct Slot Equipment[EquipmentSize];	//장비목록, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 각각 6개 부위로 분류 (인챈트횟수)
const string PlayerJob[15] = {
						"주민","견습생", "마술사", "주술사", "복사",
						"불의 마법사", "물의 마법사", "땅의 마법사", "소환의 마법사", "염력의 마법사",
						"차원의 마법사", "빛의 마법사", "프리스트", "마도사", "타임워커"
};

const string EquipPart[6] = {"머리", "왼손", "오른손", "의상", "신발", "장신구"};

//주인공 초기화
void InitPlayer(){
	int i;	//테스트

	Player.graphic = 4;
	Player.map = 0;
	Player.x = 11;
	Player.y = 12;
	Player.direction = 3;
	Player.frame = 2;
	
	Player.Name = "금봉이";
	Player.LV = 100;
	Player.Job = 1;
	Player.MAXEXP = 50;		//(Player.LV - 80) * 2 + 10;
	Player.EXP = 0;
	Player.MAXHP = 60;
	Player.HP = 20;
	Player.MAXSP = 20;
	Player.SP = 10;

	Player.BatX = 5;	//전투용 기본값(좌표)
	Player.BatY = 5;	//전투용 기본값(좌표)
	Player.BatD = 2;	//전투용 기본값(방향)

	Player.Turn = 0;
	Player.STR = 50;
	Player.DEF = 50;
	Player.INT = 50;
	Player.DEX = 80;
	Player.STAT = 0;
	Player.SKILL = 0;
	Player.MOV = 5;		//기본이동거리 2
	Player.Gold = 1740000;

	Player.Movement = 5;
	Player.MoveCount = 2;

	Inventory[0].ListNumber = 1;
	Inventory[0].Quantity = 5;
	Equipment[0].ListNumber = 4;
	Equipment[0].Quantity = 1;
	Equipment[1].ListNumber = 32;
	Equipment[1].Quantity = 1;
	SkillSlot[0].ListNumber = 1;
	SkillSlot[0].Quantity = 1;
	SkillSlot[1].ListNumber = 5;
	SkillSlot[1].Quantity = 1;
	/*//*
	Player.Equip[0] = 4;	Player.Upgrade[0] = 7;
	Player.Equip[1] = 27;	Player.Upgrade[1] = 9;
	Player.Equip[2] = 18;	Player.Upgrade[2] = 9;
	Player.Equip[3] = 21;	Player.Upgrade[3] = 9;
	Player.Equip[4] = 34;	Player.Upgrade[4] = 7;
	Player.Equip[5] = 36;	Player.Upgrade[5] = 7;
	/*//*
	for(i=0;i<39;i++)
		{Equipment[i].ListNumber = i % 39+1;	Equipment[i].Quantity = Rand(1,5);Inventory[i].ListNumber = Rand(1,15);	Inventory[i].Quantity = Rand(2,10);}
	Inventory[47].ListNumber = 14;	Inventory[47].Quantity = 3;
	SkillSlot[0].ListNumber = 1;	SkillSlot[0].Quantity = 3;
	SkillSlot[1].ListNumber = 2;	SkillSlot[1].Quantity = 5;
	SkillSlot[2].ListNumber = 3;	SkillSlot[2].Quantity = 5;
	SkillSlot[3].ListNumber = 10;	SkillSlot[3].Quantity = 1;
	SkillSlot[4].ListNumber = 11;	SkillSlot[4].Quantity = 1;
	SkillSlot[5].ListNumber = 12;	SkillSlot[5].Quantity = 1;
	//*/
}

const int IMG_CHARA[] = {
  0,  1,  2,  1,  4,  5,  6,  5,  8,  9, 10,  9, 12, 13, 14, 13,
 16, 17, 18, 17, 20, 21, 22, 21, 24, 25, 26, 25, 28, 29, 30, 29,
 32, 33, 34, 33, 36, 37, 38, 37, 40, 41, 42, 41, 44, 45, 46, 45,
 48, 49, 50, 49, 52, 53, 54, 53, 56, 57, 58, 57, 60, 61, 62, 61,
 64, 65, 66, 65, 68, 69, 70, 69, 72, 73, 74, 73, 76, 77, 78, 77,
 80, 81, 82, 81, 84, 85, 86, 85, 88, 89, 90, 89, 92, 93, 94, 93,
 96, 97, 98, 97,100,101,102,101,104,105,106,105,108,109,110,109,
112,113,114,113,116,117,118,117,120,121,122,121,124,125,126,125
};

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+Player.MoveCount) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY + _TopSize, chara[IMG_CHARA[16 * Player.graphic + Player.direction*4 + Player.frame/4]]); //4패턴(*) 4배 감속(/)
}

void SetInventory(){	//인벤토리 설정
	int i;
	for(i = 0; i < InventorySize; i++){	//인벤토리 초기화
		Inventory[i].ListNumber = 0;
		Inventory[i].Quantity = 0;
	}
	Inventory[0].ListNumber = 1;	//기본 소지 아이템
	Inventory[0].Quantity = 3;
}
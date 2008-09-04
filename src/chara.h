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
	Player.x = 13;
	Player.y = 13;
	Player.direction = 3;
	Player.frame = 2;
	
	Player.Name = "양순이";
	Player.LV = 100;
	Player.Job = 3;
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
	Player.DEX = 50;
	Player.STAT = 20;
	Player.SKILL = 10;
	Player.MOV = 2;		//기본이동거리 2
	Player.Gold = 1740000;

	Player.Equip[0] = 4;	Player.Upgrade[0] = 7;
	Player.Equip[1] = 27;	Player.Upgrade[1] = 9;
	Player.Equip[2] = 18;	Player.Upgrade[2] = 9;
	Player.Equip[3] = 21;	Player.Upgrade[3] = 9;
	Player.Equip[4] = 34;	Player.Upgrade[4] = 7;
	Player.Equip[5] = 36;	Player.Upgrade[5] = 7;
	
	for(i=0;i<39;i++)
		{Equipment[i].ListNumber = i % 39+1;	Equipment[i].Quantity = Rand(1,5);Inventory[i].ListNumber = Rand(1,15);	Inventory[i].Quantity = Rand(2,10);}
	Inventory[47].ListNumber = 14;	Inventory[47].Quantity = 3;
	SkillSlot[0].ListNumber = 1;	SkillSlot[0].Quantity = 3;
	SkillSlot[1].ListNumber = 2;	SkillSlot[1].Quantity = 5;
	SkillSlot[2].ListNumber = 3;	SkillSlot[2].Quantity = 5;
	SkillSlot[3].ListNumber = 10;	SkillSlot[3].Quantity = 1;
	SkillSlot[4].ListNumber = 11;	SkillSlot[4].Quantity = 1;
	SkillSlot[5].ListNumber = 12;	SkillSlot[5].Quantity = 1;
}

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+1) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY + _TopSize, chara[16 * Player.graphic + Player.direction*4 + Player.frame/4]); //4패턴(*) 4배 감속(/)
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
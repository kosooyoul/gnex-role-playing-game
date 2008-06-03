struct Chara{
	int graphic;
	int map;
	int	x, y;
	int direction;
	int frame;
	
	string Name;
	int Job;

	int LV, EXP; 

	int MAXHP, HP;
	int MAXMP, MP;

	int STR, DEF, WIS, DEX;
	int Gold;

	int Equip[6];		//0:Head, 1:Weapon, 2:Armor, 3:Shield, 4:Shoes, 5:Accessary
	int Upgrade[6];		//각 장비 인챈트 횟수
}Player;

struct Slot Inventory[InventorySize];	//인벤토리, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 소모품, 영구템, 사용불가품 (소지갯수)
struct Slot SkilSlot[SkilSlotSize];	//스킬목록, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 셀프스킬, 대상스킬, 비전투스킬 / 속성별 분류 (스킬레벨)
struct Slot Equipment[EquipmentSize];	//장비목록, 가능한 8의 배수로:8열씩 출력예정, 40개정도, 카테고리 > 각각 6개 부위로 분류 (인챈트횟수)

//주인공 초기화
void InitPlayer(){
	Player.graphic = 4;
	Player.map = 0;
	Player.x = 5;
	Player.y = 5;
	Player.direction = 3;
	Player.frame = 2;

	Player.LV = 100;
	Player.EXP = 0;
	Player.MAXHP = 100;
	Player.HP = 100;
	Player.MAXMP = 20;
	Player.MP = 20;

	Player.STR = 45;
	Player.DEF = 52;
	Player.WIS = 71;
	Player.DEX = 67;
	Player.Gold = 1740;
}

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+1) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY, chara[16 * Player.graphic + Player.direction*4 + Player.frame/4]); //4패턴(*) 4배 감속(/)
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
struct Chara{
	int map;
	int	x, y;
	int direction;
	int frame;

	int LV, EXP; 
	int MAXHP, HP;
	int MAXMP, MP;

	int STR, DEF, WIS, DEX;
	int Gold;
}Player;

struct Slot Inventory[InventorySize];	//인벤토리, 가능한 8의 배수로:8열씩 출력예정, 40개정도

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+1) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY, chara[16 * 3 + Player.direction*4 + Player.frame/4]); //4패턴(*) 4배 감속(/)
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
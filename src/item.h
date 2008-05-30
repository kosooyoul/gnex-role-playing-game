//// 도구 아이템 ////
struct Item{
	string Name;		//아이템 이름
	long int Cost;		//아이템 가격
	int Icon;			//아이템 표시 아이콘
};

//// 슬롯 ////
struct Slot {
	int ListNumber;		//아이템 번호
	int Quantity;		//아이템 갯수 | 스킬레벨 | 제련수
};

struct Item ItemList[16];	//아이템 리스트(게임상 존재하는 아이템 모두, 임시 16개)

int SellItemList[15] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

void SetItem(){	//아이템 설정
	ItemList[0].Name = "아이템 없음";	ItemList[0].Cost = 0;			ItemList[0].Icon = 0;
	ItemList[1].Name = "빨간허브";		ItemList[1].Cost = 3;			ItemList[1].Icon = 34;
	ItemList[2].Name = "박하";			ItemList[2].Cost = 5;			ItemList[2].Icon = 37;
	ItemList[3].Name = "레몬";			ItemList[3].Cost = 4;			ItemList[3].Icon = 37;
	ItemList[4].Name = "식빵";			ItemList[4].Cost = 5;			ItemList[4].Icon = 37;
	ItemList[5].Name = "케익조각";		ItemList[5].Cost = 8;			ItemList[5].Icon = 37;
	ItemList[6].Name = "고기산적";		ItemList[6].Cost = 7;			ItemList[6].Icon = 37;
	ItemList[7].Name = "포션";			ItemList[7].Cost = 10;			ItemList[7].Icon = 35;
	ItemList[8].Name = "고급포션";		ItemList[8].Cost = 20;			ItemList[8].Icon = 3;
	ItemList[9].Name = "워프깃털";		ItemList[9].Cost = 15;			ItemList[9].Icon = 4;
	ItemList[10].Name = "해독약";		ItemList[10].Cost = 15;			ItemList[10].Icon = 5;
	ItemList[11].Name = "부활의약";		ItemList[11].Cost = 100;		ItemList[11].Icon = 6;
	ItemList[12].Name = "비타민";		ItemList[12].Cost = 70;			ItemList[12].Icon = 7;
	ItemList[13].Name = "우유";			ItemList[13].Cost = 5;			ItemList[13].Icon = 8;
	ItemList[14].Name = "감기약";		ItemList[14].Cost = 7;			ItemList[14].Icon = 9;
	ItemList[15].Name = "청심환";		ItemList[15].Cost = 9;			ItemList[15].Icon = 10;
}
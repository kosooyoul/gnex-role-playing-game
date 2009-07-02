//// 도구 아이템 ////
struct Item{
	string Name;		//아이템 이름
	long int Cost;		//아이템 가격
	int Icon;			//아이템 표시 아이콘
	int Type;			//아이템 종류
	string Tip;			//아이템 설명
};

//// 슬롯 ////
struct Slot {
	int ListNumber;		//아이템 번호
	int Quantity;		//아이템 갯수 | 스킬레벨 | 제련수
};

struct Item ItemList[16];	//아이템 리스트(게임상 존재하는 아이템 모두, 임시 16개)

const string ItemType[5] = {"아이템없음", "소모아이템", "영구아이템", "보석", "이벤트용"};
int SellItemList[15] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};	//상인의 상점 목록

void SetItem(){	//아이템 설정
	ItemList[0].Name = "아이템없음";	ItemList[0].Cost = 0;		ItemList[0].Icon = 0;	ItemList[0].Type = 0;	ItemList[0].Tip = "아이템없음";
	ItemList[1].Name = "빨간허브";		ItemList[1].Cost = 3;		ItemList[1].Icon = 40;	ItemList[1].Type = 1;	ItemList[1].Tip = "HP가 10 회복됩니다";
	ItemList[2].Name = "박하";			ItemList[2].Cost = 5;		ItemList[2].Icon = 41;	ItemList[2].Type = 1;	ItemList[2].Tip = "MP가 5 회복됩니다";
	ItemList[3].Name = "레몬";			ItemList[3].Cost = 4;		ItemList[3].Icon = 41;	ItemList[3].Type = 1;	ItemList[3].Tip = "MP가 15 회복됩니다";
	ItemList[4].Name = "식빵";			ItemList[4].Cost = 5;		ItemList[4].Icon = 41;	ItemList[4].Type = 1;	ItemList[4].Tip = "HP가 5 회복됩니다";
	ItemList[5].Name = "케익조각";		ItemList[5].Cost = 8;		ItemList[5].Icon = 41;	ItemList[5].Type = 1;	ItemList[5].Tip = "HP가 15 회복됩니다";
	ItemList[6].Name = "고기산적";		ItemList[6].Cost = 7;		ItemList[6].Icon = 41;	ItemList[6].Type = 1;	ItemList[6].Tip = "HP가 30 회복됩니다";
	ItemList[7].Name = "포션";			ItemList[7].Cost = 10;		ItemList[7].Icon = 42;	ItemList[7].Type = 1;	ItemList[7].Tip = "HP가 50 회복됩니다";
	ItemList[8].Name = "고급포션";		ItemList[8].Cost = 20;		ItemList[8].Icon = 43;	ItemList[8].Type = 1;	ItemList[8].Tip = "HP가 100 회복됩니다";
	ItemList[9].Name = "워프깃털";		ItemList[9].Cost = 15;		ItemList[9].Icon = 41;	ItemList[9].Type = 1;	ItemList[9].Tip = "워프저장된 마을로 워프";
	ItemList[10].Name = "해독약";		ItemList[10].Cost = 15;		ItemList[10].Icon = 47;	ItemList[10].Type = 1;	ItemList[10].Tip = "독을 중화합니다";
	ItemList[11].Name = "부활의약";		ItemList[11].Cost = 100;	ItemList[11].Icon = 51;	ItemList[11].Type = 1;	ItemList[11].Tip = "쓰러진 사람을 부활";
	ItemList[12].Name = "비타민";		ItemList[12].Cost = 70;		ItemList[12].Icon = 41;	ItemList[12].Type = 1;	ItemList[12].Tip = "스텟포인트가 1 상승";
	ItemList[13].Name = "우유";			ItemList[13].Cost = 5;		ItemList[13].Icon = 50;	ItemList[13].Type = 1;	ItemList[13].Tip = "HP와 MP가 소량 회복";
	ItemList[14].Name = "감기약";		ItemList[14].Cost = 7;		ItemList[14].Icon = 53;	ItemList[14].Type = 1;	ItemList[14].Tip = "SP를 모두 소모, 감기치료";
	ItemList[15].Name = "청심환";		ItemList[15].Cost = 9;		ItemList[15].Icon = 52;	ItemList[15].Type = 1;	ItemList[15].Tip = "일시적으로 집중력이 상승";
}


